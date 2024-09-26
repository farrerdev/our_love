import 'package:flutter/material.dart';
import 'package:our_love/common/theme/app_colors.dart';
import 'package:our_love/common/theme/app_texts.dart';

enum ButtonType { primary, secondary, tertiary, custom }

class RoundedButton extends StatelessWidget {
  final ButtonType type;
  final Widget? icon;
  final Widget? suffixIcon;
  final String? labelText;
  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsets margin;
  final EdgeInsetsGeometry padding;
  final bool disabled;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final double fontSize;
  final double radius;
  final AlignmentGeometry? alignment;
  final bool autoResizeHeight;
  final List<BoxShadow>? boxShadow;

  ///[backgroundColor], [textColor], [borderColor], [isBorder]
  ///[disableBackgroundColor], [disableBorderColor], [disableTextColor]
  ///only apply for [ButtonType.custom]
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final bool? isBorder;
  final Color? disableBackgroundColor;
  final Color? disableBorderColor;
  final Color? disableTextColor;

  const RoundedButton({
    super.key,
    required this.type,
    this.labelText,
    this.icon,
    this.child,
    this.width,
    this.height = 40,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.margin = EdgeInsets.zero,
    this.disableBackgroundColor,
    this.disableBorderColor,
    this.disableTextColor,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.isBorder,
    this.disabled = false,
    this.onPressed,
    this.textStyle,
    this.alignment,
    this.radius = 30,
    this.autoResizeHeight = false,
    this.fontSize = 16,
    this.suffixIcon,
    this.boxShadow,
  })  : assert(
  child != null || labelText != null,
  "only child or labelText will not be null",
  ),
        assert(
        type == ButtonType.custom ||
            (backgroundColor == null &&
                textColor == null &&
                borderColor == null &&
                isBorder == null &&
                disableBackgroundColor == null &&
                disableBorderColor == null &&
                disableTextColor == null),
        "[backgroundColor], [textColor], [borderColor], [isBorder], "
            "[disableBackgroundColor], [disableBorderColor], [disableTextColor] "
            "only apply for [ButtonType.custom]",
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: autoResizeHeight ? null : height,
      margin: margin,
      alignment: alignment,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          disabledBackgroundColor: _disableBackgroundColor,
          disabledForegroundColor: Colors.transparent,
          foregroundColor: ColorStyles.black5,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          backgroundColor: _backgroundColor,
          padding: padding,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: _isBorder
                  ? BorderSide(
                color: _borderColor,
              )
                  : BorderSide.none),
        ),
        onPressed: disabled ? null : onPressed,
        onLongPress: disabled ? null : () {},
        child: child ??
            FittedBox(
              child: Row(
                children: [
                  if (icon != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: icon,
                    ),
                  Text(
                    labelText!,
                    style: textStyle ??
                        TextStyles.largeSubtitle1.copyWith(
                          fontSize: fontSize,
                          color: _textColor,
                        ),
                  ),
                  if (suffixIcon != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: suffixIcon,
                    ),
                ],
              ),
            ),
      ),
    );
  }

  Color get _disableBackgroundColor {
    switch (type) {
      case ButtonType.tertiary:
      case ButtonType.primary:
      case ButtonType.secondary:
        return ColorStyles.black1;
      case ButtonType.custom:
        return disableBackgroundColor ?? ColorStyles.black1;
    }
  }

  Color get _borderColor {
    if (disabled) {
      switch (type) {
        case ButtonType.tertiary:
        case ButtonType.primary:
        case ButtonType.secondary:
          return Colors.transparent;
        case ButtonType.custom:
          return disableBorderColor ?? Colors.transparent;
      }
    }
    //
    switch (type) {
      case ButtonType.tertiary:
      case ButtonType.primary:
      case ButtonType.secondary:
        return ColorStyles.black2;
      case ButtonType.custom:
        return borderColor ?? ColorStyles.black2;
    }
  }

  bool get _isBorder {
    bool byType() {
      switch (type) {
        case ButtonType.tertiary:
          return true;
        case ButtonType.primary:
        case ButtonType.secondary:
          return false;
        case ButtonType.custom:
          return isBorder ?? false;
      }
    }

    return disabled || byType();
  }

  Color get _textColor {
    if (disabled) {
      switch (type) {
        case ButtonType.primary:
        case ButtonType.secondary:
        case ButtonType.tertiary:
          return ColorStyles.black5;
        case ButtonType.custom:
          return disableTextColor ?? ColorStyles.black5;
      }
    }
    //
    switch (type) {
      case ButtonType.primary:
        return ColorStyles.white;
      case ButtonType.secondary:
        return ColorStyles.blue7;
      case ButtonType.tertiary:
        return ColorStyles.orange9;
      case ButtonType.custom:
        return textColor ?? ColorStyles.white;
    }
  }

  Color get _backgroundColor {
    switch (type) {
      case ButtonType.primary:
        return ColorStyles.orange7;
      case ButtonType.secondary:
        return ColorStyles.blue2;
      case ButtonType.tertiary:
        return ColorStyles.orange05;
      case ButtonType.custom:
        return backgroundColor ?? ColorStyles.orange7;
    }
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    this.disabled = false,
    this.onPressed,
  });

  final bool disabled;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RoundedButton(
        type: ButtonType.primary,
        radius: 8,
        height: 36,
        width: 36,
        disabled: disabled,
        padding: EdgeInsets.zero,
        child: Icon(
          Icons.check,
          color: !disabled ? ColorStyles.white : ColorStyles.black5,
        ),
        onPressed: () {
          onPressed?.call();
        },
      ),
    );
  }
}

