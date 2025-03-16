
import 'package:flutter/material.dart';
import 'package:our_love/common/widgets/spacer.dart';
import 'package:our_love/modules/memories/presentation/pages/memories.view.dart';

const kSheetHeaderRadius = BorderRadius.vertical(top: Radius.circular(12));
const _minimumSafeArea = EdgeInsets.only(bottom: 12);

class AppBottomSheet extends StatelessWidget {
  ///If [height] is specific, [minHeight] & [maxHeight] will be ignored
  final double? height;

  ///If [height] is null, [minHeight] & [maxHeight] will be use for layout flexible
  final double minHeight;
  final double? maxHeight;
  final Widget child;
  final Color bgColor;
  final String? title;
  final Widget? leading;
  final Widget? action;
  final bool isShowElevation;
  final double paddingTop;
  final Widget? bottom;
  final bool centerTitle;

  const AppBottomSheet({
    super.key,
    this.height,
    this.minHeight = 0.0,
    this.maxHeight,
    this.bgColor = Colors.white,
    required this.child,
    this.title,
    this.leading,
    this.action,
    this.isShowElevation = false,
    this.paddingTop = 12,
    this.bottom,
    this.centerTitle = true,
  }) : assert(height == null || maxHeight == null);

  bool get showHeader => title != null || action != null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Material(
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: kSheetHeaderRadius,
          child: Container(
            height: height,
            constraints: BoxConstraints(
              maxHeight:
              maxHeight ?? height ?? double.infinity,
              minHeight: minHeight,
            ),
            decoration: bgDecoration,
            child: SafeArea(
              minimum: _minimumSafeArea,
              child: _buildBody(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
         VSpacer(paddingTop),
        _buildChild(),
        if (bottom != null) bottom!,
      ],
    );
  }

  Widget _buildChild() {
    Widget _child = child;

    if (height != null) _child = Expanded(child: _child);
    if (maxHeight != null) _child = Flexible(child: _child);

    return _child;
  }
}

