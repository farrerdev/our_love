import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_love/common/theme/app_colors.dart';
import 'package:our_love/modules/root/presentation/blocs/root_cubit.dart';

const kBorderRadius = BorderRadius.vertical(top: Radius.circular(16));
const kBlurRadius = 25.0;
const kDefaultNavBarHeight = 48.0;
const kShadowColor = Color.fromRGBO(156, 200, 252, 0.56);

class BottomMenuEnum {
  BottomMenuEnum._();

  static const int home = 0;
  static const int memories = 1;
}

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootCubit, RootState>(
      builder: (context, state) {
        return BottomNavigationBar(
          onTap: context.read<RootCubit>().onPageChanged,
          backgroundColor: ColorStyles.orange1,
          elevation: 1,
          currentIndex: state.currentTab,
          items: [
            _buildBottomNavBarItem(
              iconSelected: Icons.home_filled,
              iconDefault: Icons.home_outlined,
              tab: BottomMenuEnum.home,
            ),
            _buildBottomNavBarItem(
              iconSelected: Icons.view_timeline_rounded,
              iconDefault: Icons.view_timeline_outlined,
              tab: BottomMenuEnum.memories,
            ),
          ],
        );
      },
    );
  }

  BottomNavigationBarItem _buildBottomNavBarItem({
    required IconData iconSelected,
    required IconData iconDefault,
    required int tab,
  }) {
    return BottomNavigationBarItem(
      backgroundColor: Colors.transparent,
      icon: _buildIcon(
        false,
        iconDefault,
      ),
      activeIcon: _buildIcon(
        true,
        iconSelected,
      ),
      label: "",
    );
  }

  Widget _buildIcon(bool isSelected, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Icon(
        iconData,
        color: ColorStyles.orange9,
        size: 24,
      ),
    );
  }
}
