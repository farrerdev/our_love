import 'package:flutter/cupertino.dart';
import 'package:our_love/common/extensions/datetime.extension.dart';
import 'package:our_love/common/extensions/message_dialog.extension.dart';
import 'package:our_love/common/theme/app_colors.dart';
import 'package:our_love/common/theme/app_texts.dart';
import 'package:our_love/common/theme/constants.dart';
import 'package:our_love/common/widgets/app_date_picker.widget.dart';
import 'package:our_love/common/widgets/app_loading_indicator.widget.dart';
import 'package:our_love/common/widgets/rounded_container.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_love/common/widgets/spacer.dart';
import 'package:our_love/generated/assets.gen.dart';
import 'package:our_love/modules/home/presentation/blocs/home/home_bloc.dart';
import 'package:our_love/modules/memories/presentation/pages/memories.view.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
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
                    decoration: boxDecoration.copyWith(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                    ),
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
      ),
    );
  }

  Padding _buildContent() {
    double _value = 400.0;

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

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) {
        return previous.loadStatus != current.loadStatus;
      },
      builder: (context, state) {
        switch (state.loadStatus) {
          case LoadStatus.loading:
            return const AppLoadingIndicator();
          case LoadStatus.error:
            return const SizedBox();
          case LoadStatus.success:
            return PageView.builder(
              controller: pageController,
              itemCount: state.vocabularies.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final vocab = state.vocabularies[index];
                final pronoun = vocab.pronoun;
                final explain = vocab.explain;
                final example = vocab.example;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      vocab.word,
                      style: TextStyles.largeHeading4.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    if (pronoun != null)
                      Text(
                        pronoun,
                        style: TextStyles.mobileXSMedium.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    Text(
                      "${vocab.type.getName} ${explain ?? ""}",
                      style: TextStyles.largeSubtitle1.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const VSpacer(20),
                    if (example != null)
                      Text(
                        "(Ex: $example)",
                        style: TextStyles.mobileSMedium.copyWith(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                  ],
                );
              },
            );
        }
      },
    );
  }
}

class _HorizontalDatePicker extends StatelessWidget {
  const _HorizontalDatePicker();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) {
        return !previous.currentDate.isSameDate(current.currentDate);
      },
      builder: (context, state) {
        final currentDate = context.read<HomeBloc>().state.currentDate;
        final dates = _getWeekDays(currentDate);
        return RoundedContainer(
          width: context.width,
          height: 110,
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    _buildMonth(context, currentDate),
                    const Spacer(),
                    Container(
                      alignment: Alignment.center,
                      child: const Icon(
                        CupertinoIcons.chevron_right,
                        size: 18,
                        color: ColorStyles.black5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: List.generate(
                  dates.length,
                  (index) {
                    final date = dates[index];
                    final isCurrent = date.day == currentDate.day;
                    final bgColor = isCurrent ? ColorStyles.deep : null;
                    final textColor =
                        isCurrent ? ColorStyles.white : ColorStyles.black5;
                    return Expanded(
                      child: InkWell(
                        onTap: () => _onDatePicked(context, date),
                        child: AnimatedContainer(
                          duration: animatedDuration,
                          decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          height: 50,
                          child: Column(
                            children: [
                              Text(
                                date.abbreviatedDay,
                                style: TextStyles.mobileMedium
                                    .copyWith(color: textColor),
                              ),
                              Text(
                                date.day.toString(),
                                style: TextStyles.mobileMedium
                                    .copyWith(color: textColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  InkWell _buildMonth(BuildContext context, DateTime currentDate) {
    void onTap() {
      showDialog(
        context: context,
        builder: (_) {
          return AppDatePicker(
            isPickRange: false,
            initEndDate: currentDate,
            disablePrevious: false,
            onDateSave: (date) => _onDatePicked(
              context,
              date!,
            ),
          );
        },
      );
    }

    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          currentDate.fullMonthName,
          style: TextStyles.mobileMedium.copyWith(color: ColorStyles.black5),
        ),
      ),
    );
  }

  void _onDatePicked(BuildContext context, DateTime date) {
    return context.read<HomeBloc>().add(
          HomeDatePicked(date: date),
        );
  }
}

List<DateTime> _getWeekDays(DateTime date) {
  // Calculate the start and end of the current week
  DateTime startOfWeek = date.subtract(Duration(days: date.weekday - 1));

  // Create a list to store the days of the week
  List<DateTime> weekDays = [];

  // Loop through the days of the week and add them to the list
  for (int i = 0; i < DateTime.daysPerWeek; i++) {
    DateTime currentDate = startOfWeek.add(Duration(days: i));
    weekDays.add(currentDate);
  }

  return weekDays;
}
