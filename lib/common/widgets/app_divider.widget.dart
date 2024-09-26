import 'package:flutter/material.dart';
import 'package:our_love/common/theme/app_colors.dart';

class CustomDivider extends StatelessWidget {
  final double? indent;
  final EdgeInsetsGeometry? padding;
  final double height;
  final double thickness;
  final Color color;

  const CustomDivider({
    super.key,
    this.indent,
    this.height = 0,
    this.thickness = 1,
    this.padding,
    this.color = ColorStyles.black2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Divider(
        thickness: thickness,
        color: color,
        height: height,
        endIndent: indent,
        indent: indent,
      ),
    );
  }
}
