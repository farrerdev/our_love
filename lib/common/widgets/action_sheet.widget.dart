import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:our_love/common/theme/app_colors.dart';
import 'package:our_love/common/theme/app_texts.dart';
import 'package:our_love/common/widgets/app_divider.widget.dart';
import 'package:our_love/common/widgets/app_sheet.widget.dart';

class ActionSheet extends StatefulWidget {
  final List<ActionSheetItem> actions;
  final Widget? header;
  final String? title;

  const ActionSheet({
    super.key,
    required this.actions,
    this.header,
    this.title,
  });

  @override
  State<ActionSheet> createState() => _ActionSheetState();
}

class _ActionSheetState extends State<ActionSheet> {
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  SingleChildScrollView _buildBody() {
    return SingleChildScrollView(
      child: AppBottomSheet(
        title: widget.title,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: widget.title != null ? 0 : 8,
            top: widget.title != null || widget.header != null ? 0 : 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.header != null) widget.header!,
              ListView.separated(
                separatorBuilder: (context, index) =>
                const CustomDivider(indent: 16),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                primary: false,
                itemCount: widget.actions.length,
                itemBuilder: (_, index) =>
                    _androidActionFromAction(widget.actions[index]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionChild(ActionSheetItem action) {
    return Row(
      children: [
        if (action.icon != null)
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child:  Icon(
              action.icon!,
              size: 20,
              color: action.isApplyDefaultColorForIcon
                  ? action.isDestructive
                  ? ColorStyles.red6
                  : ColorStyles.orange7
                  : null,
            ),
          ),
        Expanded(
          child: Text(
            action.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.mobileBody.copyWith(
              color: action.disabled
                  ? ColorStyles.black5
                  : action.isDestructive
                  ? ColorStyles.red5
                  : ColorStyles.orange9,
            ),
          ),
        ),
        if (action.suffix != null) action.suffix!
      ],
    );
  }

  Widget _androidActionFromAction(ActionSheetItem action) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: action.disabled
              ? null
              : () async {
            if (!action.isSkipBackWhenPressed) {
              context.pop();
            }
            action.onPressed();
          },
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            alignment: Alignment.center,
            child: _buildActionChild(action),
          ),
        ),
      ),
    );
  }
}

/// Data class for Actions in ActionSheet
class ActionSheetItem {
  /// Text to display
  final String title;

  final IconData? icon;
  final Color? iconColor;
  final Widget? suffix;

  /// The function which will be called when the action is pressed
  final VoidCallback onPressed;

  /// Is this red text color
  final bool isDestructive;

  final bool isApplyDefaultColorForIcon;

  final bool isSkipBackWhenPressed;

  final bool disabled;


  /// Construction of an ActionSheetAction
  ///

  ActionSheetItem({
    required this.title,
    this.icon,
    this.iconColor,
    this.suffix,
    required this.onPressed,
    this.isDestructive = false,
    this.isApplyDefaultColorForIcon = true,
    this.isSkipBackWhenPressed = false,
    this.disabled = false,
  });
}

