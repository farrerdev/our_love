import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:our_love/common/extensions/message_dialog.extension.dart';
import 'package:our_love/common/theme/app_texts.dart';
import 'package:our_love/generated/assets.gen.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  final pageController = PageController();
  final currentTab = 0;
  final isSlide = false;
  double _value = 400.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Stack(
            children: [
              SizedBox(
                height: context.height,
                child: Column(
                  children: [
                    SizedBox(
                      height: context.height / 2.5,
                      child: Opacity(
                        opacity: .9,
                        child: Image.asset(
                          Assets.images.libraryBg.path,
                          width: context.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              Positioned(
                top: context.height / 2.5 - 20,
                child: Container(
                  width: context.width,
                  height: context.height * 0.75,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15))),
                  child: _buildContent(),
                ),
              ),
            ],
          ),
          Positioned(
            width: context.width,
            top: context.height / 2.5 - 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.pinkAccent.shade100.withOpacity(.5),
                        width: 2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(Assets.images.libraryBg.path),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  width: 50,
                  child: Icon(
                    CupertinoIcons.heart_solid,
                    color: Colors.pinkAccent,
                    size: 30,
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.pinkAccent.shade100.withOpacity(.5),
                        width: 2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(Assets.images.libraryBg.path),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _buildContent() {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        children: [
          Text(
            "Chúng ta đã bên nhau",
            style: TextStyles.mobileHeading6.copyWith(color: Colors.pink),
          ),
          const SizedBox(height: 15),
          Text(
            "${DateTime.now().difference(DateTime(2020, 2, 20)).inDays.toString()} ngày",
            style: TextStyles.mobileHeading4.copyWith(color: Colors.pink),
          ),
          SfSliderTheme(
            data: SfSliderThemeData(
              tooltipBackgroundColor: Colors.black,
              activeLabelStyle: const TextStyle(
                  color: Colors.pink,
                  fontSize: 12,
                  fontStyle: FontStyle.italic),
              inactiveLabelStyle: const TextStyle(
                  color: Colors.pink,
                  fontSize: 12,
                  fontStyle: FontStyle.italic),
              thumbRadius: 12,
            ),
            child: SfSlider(
              min: 0.0,
              max: 1000.0,
              value: _value,
              interval: 1000,
              showTicks: false,
              showLabels: true,
              enableTooltip: true,
              thumbShape: _SfThumbShape(),
              activeColor: Colors.pink,
              inactiveColor: Colors.pinkAccent.withOpacity(.3),
              thumbIcon: const SizedBox(
                height: 20,
                width: 20,
                child: Icon(CupertinoIcons.heart_solid),
              ),
              minorTicksPerInterval: 0,
              onChanged: (dynamic value) {
                _value = value;

                // setState(() {
                //   _value = value;
                // });
              },
            ),
          )
        ],
      ),
    );
  }

  /* return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.libraryBg.path),
          fit: BoxFit.cover, // Choose the fitting strategy
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SlideWidget(
          isSlide: false,
          index: currentTab,
          child: PageView(
            onPageChanged: _onPageChanged,
            controller: pageController,
            children: const [
              KeepAlivePage(child: HomeView()),
              KeepAlivePage(child: ProfileView()),
            ],
          ),
        ),
        bottomNavigationBar: const AppBottomBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: ColorStyles.blue2,
          child: const Icon(
            CupertinoIcons.add,
            color: ColorStyles.black7,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );*/

  void _onPageChanged(int value) {}
}

class SlideWidget extends StatefulWidget {
  const SlideWidget({
    Key? key,
    required this.index,
    required this.child,
    this.slideOffset = 0.2,
    this.isSlide = true,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);

  final int index;
  final Duration duration;
  final double slideOffset;
  final Widget child;
  final bool isSlide;

  @override
  State<SlideWidget> createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final AnimationController _animationController;

  late final Animation<Offset> _slideRTL;
  late final Animation<Offset> _slideLTR;

  bool isRTL = true;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: widget.duration);
    _slideRTL = _getAnimationIn();
    _slideLTR = _getAnimationOut();
    _animationController.forward();
  }

  @override
  void didUpdateWidget(covariant SlideWidget oldWidget) {
    if (widget.index != oldWidget.index && widget.isSlide) {
      bool isRTL = false;
      if (widget.index > oldWidget.index) {
        isRTL = true;
      }
      setState(() {
        isRTL = isRTL;
      });
      _animationController.forward(from: 0.0);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return SlideTransition(
          position: isRTL ? _slideRTL : _slideLTR,
          child: child,
        );
      },
      child: widget.child,
    );
  }

  Animation<Offset> _getAnimationIn() {
    return Tween(begin: Offset(widget.slideOffset, 0), end: Offset.zero)
        .animate(_animationController);
  }

  Animation<Offset> _getAnimationOut() {
    return Tween(begin: Offset(-widget.slideOffset, 0), end: Offset.zero)
        .animate(_animationController);
  }

  @override
  bool get wantKeepAlive => true;
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

class _SfThumbShape extends SfThumbShape {
  @override
  void paint(PaintingContext context, Offset center,
      {required RenderBox parentBox,
      required RenderBox? child,
      required SfSliderThemeData themeData,
      SfRangeValues? currentValues,
      dynamic currentValue,
      required Paint? paint,
      required Animation<double> enableAnimation,
      required TextDirection textDirection,
      required SfThumb? thumb}) {
    final Path path = Path();
    path.moveTo(center.dx, center.dy);
    path.lineTo(center.dx + 10, center.dy - 15);
    path.lineTo(center.dx - 10, center.dy - 15);
    path.close();
    context.canvas.drawPath(
        path,
        Paint()
          ..color = themeData.activeTrackColor!
          ..style = PaintingStyle.fill
          ..strokeWidth = 2);
  }
}
