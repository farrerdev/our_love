import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart' as intl;
import 'package:our_love/common/extensions/message_dialog.extension.dart';
import 'package:our_love/common/theme/app_colors.dart';
import 'package:our_love/common/theme/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_love/generated/assets.gen.dart';
import 'package:our_love/modules/home/presentation/blocs/home/home_bloc.dart';
import 'package:our_love/modules/memories/presentation/pages/memories.view.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

// ignore_for_file: INVALID_USE_OF_PROTECTED_MEMBER
extension StatefulExtension on State {
  void rebuild() {
    if (mounted) {
      setState(() {});
    }
  }
}

const _bottomHeight = 300.0;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var pageController = PageController();
  final firstDate = DateTime(2024, 8, 24);

  int get totalDays => DateTime.now().difference(firstDate).inDays + 1;

  String get totalDaysContent {
    if (totalDays == 1) return "$totalDays day";
    return "$totalDays days";
  }

  double get nextMaxDays => (totalDays / 1000 + 1).toInt().toDouble() * 1000;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: _buildBgImage(context),
                ),
                const SizedBox(
                  height: _bottomHeight - 15,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: _buildContent(),
            ),
            Positioned(
              width: context.width,
              bottom: _bottomHeight - 35,
              child: _buildAvatars(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBgImage(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.images.libraryBg.path,
          width: context.width,
          fit: BoxFit.cover,
        ),
        Positioned(
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorStyles.orange2.withOpacity(.1),
                  ),
                  child: MenuAnchor(
                    builder: (context, controller, child) {
                      return IconButton(
                        icon: const Icon(
                          Icons.edit_note_outlined,
                          color: ColorStyles.pinkAccent7,
                        ),
                        onPressed: () {
                          controller.isOpen
                              ? controller.close()
                              : controller.open();
                        },
                      );
                    },
                    menuChildren: [
                      MenuItemButton(
                        child: Text(
                          "Change background image",
                          style: TextStyles.mobileSMedium.copyWith(
                            color: ColorStyles.orange9,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      MenuItemButton(
                        child: Text(
                          "Change first date",
                          style: TextStyles.mobileSMedium.copyWith(
                            color: ColorStyles.orange9,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildAvatars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        UserAvatar(url: Assets.images.libraryBg.path),
        const SizedBox(
          width: 50,
          child: Icon(
            CupertinoIcons.heart_solid,
            color: ColorStyles.pinkAccent7,
            size: 30,
          ),
        ),
        UserAvatar(url: Assets.images.libraryBg.path),
      ],
    );
  }

  Widget _buildContent() {
    return Container(
      width: context.width,
      height: _bottomHeight,
      decoration: boxDecoration.copyWith(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Love Days",
            style: TextStyles.mobileHeading5.copyWith(color: ColorStyles.pink7),
          ),
          const SizedBox(height: 15),
          Text(
            totalDaysContent,
            style: TextStyles.mobileHeading2.copyWith(color: ColorStyles.pink7),
          ),
          SfSliderTheme(
            data: SfSliderThemeData(
              tooltipBackgroundColor: Colors.black,
              activeLabelStyle: const TextStyle(
                  color: ColorStyles.pink7,
                  fontSize: 12,
                  fontStyle: FontStyle.italic),
              inactiveLabelStyle: const TextStyle(
                  color: ColorStyles.pink7,
                  fontSize: 12,
                  fontStyle: FontStyle.italic),
              thumbRadius: 12,
            ),
            child: SfSlider(
              min: 1,
              max: nextMaxDays,
              value: totalDays,
              interval: nextMaxDays - 1,
              showTicks: false,
              showLabels: true,
              enableTooltip: false,
              thumbShape: _SfThumbShape(),
              activeColor: ColorStyles.pink7,
              inactiveColor: ColorStyles.pinkAccent7.withOpacity(.3),
              thumbIcon: const SizedBox(
                height: 20,
                width: 20,
                child: Icon(CupertinoIcons.heart_solid),
              ),
              minorTicksPerInterval: 0,
              onChanged: (dynamic value) {
                value = value;
              },
            ),
          ),
          Text(
            "from ${intl.DateFormat("MMMM dd, y").format(firstDate)}",
            style: TextStyles.mobileSMedium.copyWith(
              color: ColorStyles.pink3,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  void _onEditIconPressed() {
    rebuild();
  }
}

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(
            color: ColorStyles.pinkAccent1.withOpacity(.5), width: 2),
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
      ),
    );
  }
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
    double width = 30;
    double height = 30;
    final dx = center.dx - width / 2;
    final dy = center.dy + 2.5 - height;
    Path path = Path();

    path.moveTo(dx, dy);
    path.moveTo(
      dx + 0.5 * width,
      dy + height * 0.35,
    );
    path.cubicTo(
      dx + 0.2 * width,
      dy + height * 0.1,
      dx + -0.25 * width,
      dy + height * 0.6,
      dx + 0.5 * width,
      dy + height,
    );
    path.moveTo(
      dx + 0.5 * width,
      dy + height * 0.35,
    );
    path.cubicTo(dx + 0.8 * width, dy + height * 0.1, dx + 1.25 * width,
        dy + height * 0.6, dx + 0.5 * width, dy + height);
    path.close();
    context.canvas.drawPath(
        path,
        Paint()
          ..color = themeData.activeTrackColor!
          ..style = PaintingStyle.fill
          ..strokeWidth = 2);
  }
}
