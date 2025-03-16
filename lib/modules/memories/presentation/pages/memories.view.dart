import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:our_love/common/extensions/datetime.extension.dart';
import 'package:our_love/common/theme/app_colors.dart';
import 'package:our_love/common/theme/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:our_love/common/widgets/app_error.widget.dart';
import 'package:our_love/common/widgets/app_loading_indicator.widget.dart';
import 'package:our_love/common/widgets/spacer.dart';
import 'package:our_love/modules/memories/presentation/blocs/memories_cubit.dart';
import 'package:our_love/modules/memories/presentation/pages/submit_memory.view.dart';

const bgDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      ColorStyles.orange1,
      ColorStyles.orange2,
    ],
  ),
);
const connectorColor = ColorStyles.orange8;
const connectorWidth = 1.5;

class MemoriesView extends StatelessWidget {
  const MemoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const DecoratedBox(
          decoration: bgDecoration,
        ),
        Positioned(
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Memories timeline"),
            ),
            body: _BodyByState(),
            floatingActionButton: FloatingActionButton(
              onPressed: () => showCupertinoSheet(
                context: context,
                pageBuilder: (context) => const AddMemorySheet(),
              ),
              shape: const CircleBorder(),
              mini: true,
              backgroundColor: ColorStyles.orange2,
              child: const Icon(
                CupertinoIcons.add,
                color: ColorStyles.orange9,
              ),
            ),
          ),
        ),
      ],
    );
  }

}

class _BodyByState extends StatelessWidget {
  const _BodyByState();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MemoriesCubit()..getMemories(),
      child: BlocBuilder<MemoriesCubit, MemoriesState>(
        builder: (context, state) {
          if (state is MemoriesLoading) {
            return const AppLoadingIndicator();
          }
          if (state is MemoriesError) {
            return AppErrorWidget();
          }
          if (state is MemoriesLoaded) {
            return _MemoriesBody();
          }
          return const SizedBox();
        },
      ),
    );
  }
}

class _MemoriesBody extends StatefulWidget {
  const _MemoriesBody();

  @override
  State<_MemoriesBody> createState() => _MemoriesBodyState();
}

class _MemoriesBodyState extends State<_MemoriesBody> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    List<YearItem> yearItems = List.generate(
      5,
      (index) {
        return YearItem(
          year: "200$index",
          cards: List.generate(
            10,
            (index) {
              return CardItem(
                  date: index < 3
                      ? DateTime.now()
                      : DateTime.now().subtract(Duration(days: 2)),
                  title: "Title $index");
            },
          ),
        );
      },
    );

    return CupertinoScrollbar(
      controller: scrollController,
      child: CustomScrollView(
        controller: scrollController,
        slivers: List.generate(
          yearItems.length,
          (index) {
            final yearItem = yearItems[index];
            return _buildYear(yearItem);
          },
        ),
      ),
    );
  }

  Widget _buildYear(YearItem yearItem) {
    return SliverMainAxisGroup(
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: AppSliverPersistentHeaderDelegate(
            minHeight: 40,
            maxHeight: 40,
            child: Container(
              decoration: bgDecoration,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                yearItem.year,
                style: TextStyles.mobileHeading5.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: VSpacer(12),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(bottom: 20),
          sliver: SliverList.builder(
            itemCount: yearItem.cards.length,
            itemBuilder: (context, index) {
              final cardItem = yearItem.cards[index];
              final preIndex = max(index - 1, 0);
              final preItem = yearItem.cards[preIndex];
              final nextIndex = min(index + 1, yearItem.cards.length - 1);
              final nextItem = yearItem.cards[nextIndex];
              final isFirst =
                  index == 0 ? true : !cardItem.date.isSameDate(preItem.date);
              final isLast = index == yearItem.cards.length - 1
                  ? true
                  : !cardItem.date.isSameDate(nextItem.date);

              return _buildItem(cardItem, isFirst, isLast);
            },
          ),
        )
      ],
    );
  }

  Widget _buildItem(CardItem cardItem, bool isFirst, bool isLast) {
    final date = cardItem.date;
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            child: Center(
              child: isFirst
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          const VSpacer(12),
                          Text(
                            date.day.toString(),
                            style: TextStyles.mobileMedium,
                          ),
                          const VSpacer(4),
                          FittedBox(
                            child: Text(
                              "${DateFormat("MMM").format(date)} • ${DateFormat("yyyy").format(date)}",
                              style: TextStyles.mobileSmallMedium,
                            ),
                          ),
                          const VSpacer(4),
                          const Expanded(
                            child: _TimelineConnector(),
                          )
                        ],
                      ),
                    )
                  : isLast
                      ? CustomPaint(
                          size: const Size(60, 60),
                          painter: BottomRightCornerPainter(
                            strokeWidth: connectorWidth,
                            color: connectorColor,
                          ),
                        )
                      : const _TimelineConnector(),
            ),
          ),
          _buildCard(cardItem),
        ],
      ),
    );
  }
}

class _TimelineConnector extends StatelessWidget {
  const _TimelineConnector();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.5,
      color: connectorColor,
    );
  }
}

Widget _buildCard(CardItem cardItem) {
  return Expanded(
    child: Card(
      elevation: 0.001,
      shadowColor: ColorStyles.black3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(right: 16).copyWith(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat("MMMM dd, y").format(cardItem.date),
              style: TextStyles.smallSmall,
            ),
            const SizedBox(height: 12),
            Text(
              cardItem.title,
              style: TextStyles.mobileSmallMedium,
            ),
          ],
        ),
      ),
    ),
  );
}

class CardItem {
  final String? image;
  final DateTime date;
  final String title;

  CardItem({required this.date, required this.title, this.image});
}

class YearItem {
  final String year;
  final List<CardItem> cards;

  YearItem({required this.year, required this.cards});
}

class AppSliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  AppSliverPersistentHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(AppSliverPersistentHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class BottomRightCornerPainter extends CustomPainter {
  final double strokeWidth;
  final Color color;

  BottomRightCornerPainter({
    required this.strokeWidth,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    // Define the path for the curved line
    final path = Path()
      ..moveTo(size.width / 2, -10) // Start at the origin (0,0)
      ..quadraticBezierTo(
        33, 15, // Control point
        size.height, 18, // End point (30,30)
      );

    // Draw the path on the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
