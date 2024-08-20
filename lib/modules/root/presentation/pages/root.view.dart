import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_love/common/theme/constants.dart';
import 'package:our_love/modules/home/presentation/pages/home.view.dart';
import 'package:our_love/modules/memories//presentation/pages/memories.view.dart';
import 'package:our_love/modules/root/presentation/blocs/root_cubit.dart';
import 'package:our_love/modules/root/presentation/widgets/app_bottom_navigation_bar.widget.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit(),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: _Body(),
        bottomNavigationBar: AppBottomBar(),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RootCubit, RootState>(
      listener: (context, state) {
        pageController.animateToPage(
          state.currentTab,
          curve: Curves.linear,
          duration: animatedDuration,
        );
      },
      listenWhen: (previous, current) {
        return previous.currentTab != current.currentTab;
      },
      builder: (context, state) {
        return PageView(
          onPageChanged: context.read<RootCubit>().onPageChanged,
          controller: pageController,
          children: const [
            KeepAlivePage(child: HomeView()),
            KeepAlivePage(child: MemoriesView()),
          ],
        );
      },
    );
  }
}

//
// class NavBarScrollListener extends StatelessWidget {
//   const NavBarScrollListener(
//       {Key? key,
//         required this.child,
//         required this.scrollController,
//         this.hasScrollBar = true})
//       : super(key: key);
//   final Widget child;
//   final ScrollController scrollController;
//   final bool hasScrollBar;
//
//   @override
//   Widget build(BuildContext context) {
//     return NotificationListener<UserScrollNotification>(
//       onNotification: (scrollNotification) {
//         if (scrollNotification.depth == 1 ||
//             scrollNotification.metrics is PageMetrics ||
//             scrollNotification.direction == ScrollDirection.idle) return true;
//         //
//         if (scrollNotification.metrics.maxScrollExtent == 0) {
//           RootController.to.showNavBar();
//         } else if (scrollNotification.direction == ScrollDirection.reverse) {
//           RootController.to.hideNavBar();
//         } else {
//           RootController.to.showNavBar();
//         }
//         return true;
//       },
//       child: hasScrollBar
//           ? AppScrollBar(scrollController: scrollController, child: child)
//           : child,
//     );
//   }
// }

class KeepAlivePage extends StatefulWidget {
  const KeepAlivePage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<KeepAlivePage> createState() => _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}

/// Storing the spline series data points.
class Data {
  /// Initialize the instance of the [Data] class.
  Data({required this.x, required this.y});

  /// Spline series x points.
  final DateTime x;

  /// Spline series y points.
  final double y;
}
