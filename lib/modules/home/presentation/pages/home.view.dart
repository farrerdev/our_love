import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart' as intl;
import 'package:our_love/common/extensions/context.extension.dart';
import 'package:our_love/common/theme/app_colors.dart';
import 'package:our_love/common/theme/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_love/common/widgets/app_error.widget.dart';
import 'package:our_love/common/widgets/app_loading_indicator.widget.dart';
import 'package:our_love/common/widgets/file_picker_action_sheet.widget.dart';
import 'package:our_love/common/widgets/rounded_button.widget.dart';
import 'package:our_love/common/widgets/spacer.dart';
import 'package:our_love/generated/assets.gen.dart';
import 'package:our_love/modules/home/presentation/blocs/home/home_bloc.dart';
import 'package:our_love/modules/memories/presentation/pages/memories.view.dart';
import 'package:our_love/modules/root/presentation/blocs/root_cubit.dart';
import 'package:our_love/modules/root/presentation/widgets/app_bottom_navigation_bar.widget.dart';
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
final defaultPath = Assets.images.libraryBg.path;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
        backgroundColor: ColorStyles.orange1,
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            switch (state.loadStatus) {
              case LoadStatus.loading:
                return const AppLoadingIndicator();
              case LoadStatus.error:
                return const AppErrorWidget();
              case LoadStatus.success:
                return const _HomeBody();
            }
          },
        ),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  //
  // final firstDate = DateTime(2020, 2, 20);
  //
  // int get totalDays => DateTime.now().difference(firstDate).inDays + 1;
  //
  // String get totalDaysContent {
  //   if (totalDays == 1) return "$totalDays day";
  //   return "$totalDays days";
  // }
  //
  // double get nextMaxDays => (totalDays / 1000 + 1).toInt().toDouble() * 1000;
  //
  // bool isEditing = false;
  //
  // bool get isEdited =>
  //     avatarPath1 != defaultPath ||
  //     avatarPath2 != defaultPath ||
  //     bgImagePath != defaultPath;
  //
  // String avatarPath1 = defaultPath;
  //
  // String avatarPath2 = defaultPath;
  //
  // String bgImagePath = defaultPath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Column(
          children: [
            Expanded(
              child: _BackgroundImage(),
            ),
            SizedBox(
              height: _bottomHeight - 15,
            ),
          ],
        ),
        const Positioned(
          bottom: 0,
          child: _Content(),
        ),
        Positioned(
          width: context.width,
          bottom: _bottomHeight - 35,
          child: const _Avatars(),
        ),
      ],
    );
  }
}

class _Avatars extends StatelessWidget {
  const _Avatars();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final data = state.data;
        final firstAvatar = data?.firstAvatar ?? defaultPath;
        final secondAvatar = data?.secondAvatar ?? defaultPath;
        final isEditing = state.isEditing;

        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserAvatar(
                  url: firstAvatar,
                  isEditing: isEditing,
                  onPicked: (path) {
                    context.read<HomeBloc>().add(
                          HomeAvatarChanged(
                            isFirst: true,
                            path: path,
                          ),
                        );
                  },
                ),
                const SizedBox(
                  width: 50,
                  child: Icon(
                    CupertinoIcons.heart_solid,
                    color: ColorStyles.pinkAccent7,
                    size: 30,
                  ),
                ),
                UserAvatar(
                  url: secondAvatar,
                  isEditing: isEditing,
                  onPicked: (path) {
                    context.read<HomeBloc>().add(
                          HomeAvatarChanged(
                            isFirst: false,
                            path: path,
                          ),
                        );
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final totalDaysContent = state.totalDaysContent;
        final nextMaxDays = state.nextMaxDays;
        final totalDays = state.totalDays;
        final firstDate = state.data!.firstDate;
        return Container(
          width: context.width,
          height: _bottomHeight,
          decoration: bgDecoration.copyWith(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(15),
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const VSpacer(25),
              Text(
                "Love Days",
                style: TextStyles.mobileHeading5
                    .copyWith(color: ColorStyles.pink7),
              ),
              Text(
                totalDaysContent,
                style: TextStyles.mobileHeading2
                    .copyWith(color: ColorStyles.pink7),
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
              const VSpacer(20),
              RoundedButton(
                type: ButtonType.primary,
                labelText: "See memories",
                onPressed: () => context.read<RootCubit>().onPageChanged(
                      BottomMenuEnum.memories,
                    ),
              )
            ],
          ),
        );
      },
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage();

  void _onSwitchEditMode(BuildContext context) {
    context.read<HomeBloc>().add(const HomeEditModeChanged());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final bgImagePath = state.data?.bgImagePath ?? defaultPath;
        final isEditing = state.isEditing;
        final isEdited = state.isEdited;
        return Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              bgImagePath,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (isEditing)
                      AppIconButton(
                        margin: const EdgeInsets.all(16).copyWith(left: 0),
                        icon: Icons.clear,
                        onPressed: () {
                          if (isEdited) {
                            context.showConfirmEditedFormDialog(
                              onConfirm: () => _onSwitchEditMode(context),
                            );
                          } else {
                            _onSwitchEditMode(context);
                          }
                        },
                      ),
                    AppIconButton(
                      margin: const EdgeInsets.all(16).copyWith(left: 0),
                      icon: isEditing ? Icons.check : Icons.edit,
                      onPressed: () {
                        _onSwitchEditMode(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
            if (isEditing)
              Positioned.fill(
                child: Center(
                  child: AppIconButton(
                    icon: Icons.edit,
                    onPressed: () {
                      context.showBottomSheet(
                        ImagePickerActionSheet(
                          onPicked: (path) {
                            context.read<HomeBloc>().add(
                                  HomeBgImageChanged(
                                    path: path,
                                  ),
                                );
                          },
                        ),
                      );
                    },
                  ),
                ),
              )
          ],
        );
      },
    );
  }
}

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.margin,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 36,
      margin: margin,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorStyles.orange2.withOpacity(.1),
      ),
      alignment: Alignment.center,
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(
          icon,
          color: ColorStyles.pinkAccent7,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.url,
    required this.isEditing,
    required this.onPicked,
  });

  final String url;
  final bool isEditing;
  final Function(String path) onPicked;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            border: Border.all(
                color: ColorStyles.pinkAccent1.withOpacity(.5), width: 2),
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
          ),
        ),
        if (isEditing)
          Positioned.fill(
            child: Center(
              child: AppIconButton(
                icon: Icons.edit,
                onPressed: () {
                  context.showBottomSheet(
                    ImagePickerActionSheet(
                      onPicked: onPicked,
                    ),
                  );
                },
              ),
            ),
          )
      ],
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
