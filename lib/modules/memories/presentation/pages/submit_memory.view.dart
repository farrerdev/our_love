import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:our_love/common/extensions/datetime.extension.dart';
import 'package:our_love/common/theme/app_colors.dart';
import 'package:our_love/common/theme/app_texts.dart';
import 'package:our_love/common/widgets/app_date_picker.widget.dart';
import 'package:our_love/common/widgets/app_input.widget.dart';
import 'package:our_love/common/widgets/rounded_container.widget.dart';
import 'package:our_love/common/widgets/spacer.dart';

import '../../../../common/theme/constants.dart';
import '../blocs/submit_memory_cubit.dart';
import 'memories.view.dart';



class AddMemorySheet extends StatelessWidget {
  const AddMemorySheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubmitMemoryCubit(),
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: Stack(
          fit: StackFit.expand,
          children: [
            const DecoratedBox(
              decoration: bgDecoration,
            ),
            Positioned(
              child: Scaffold(
                appBar: AppBar(
                  title: Text("Add memory"),
                  centerTitle: true,
                  actions: [
                    TextButton(
                      onPressed: _onSubmit,
                      child: Text(
                        "Save",
                        style: TextStyles.mobileSmallMedium
                            .copyWith(color: ColorStyles.orange9),
                      ),
                    ),
                    HSpacer(8),
                  ],
                ),
                body: Padding(
                  padding: kHorizontalPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VSpacer(20),
                      _TimeField(),
                      VSpacer(20),
                      AppInput(
                        labelInput: "Title",
                        hintText: "Add a title...",
                        hintStyle: TextStyles.largeHeading7.copyWith(
                            color: ColorStyles.orange7.withAlpha(100)),
                        style: TextStyles.largeHeading7
                            .copyWith(color: ColorStyles.orange9),
                        maxLines: 3,
                      ),
                      VSpacer(20),
                      AppInput(
                        labelInput: "Description",
                        hintText: "Add a description...",
                        minLines: 3,
                        maxLines: 5,
                      ),
                      VSpacer(20),
                      AppInputLabel(
                        label: "Media",
                      ),
                      RoundedContainer(
                        width: 60,
                        height: 60,
                        borderColor: ColorStyles.orange9,
                        blurBg: false,
                        radius: 8,
                        onTap: _onAddMediaPressed,
                        child: Center(
                          child: Icon(
                            CupertinoIcons.photo_fill_on_rectangle_fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onAddMediaPressed() async {
    final medias = await ImagePicker().pickMultipleMedia(
      limit: 5,
      imageQuality: 80,
      maxWidth: 1920,
    );
  }

  void _onSubmit() {}
}

class _TimeField extends StatelessWidget {
  const _TimeField();

  @override
  Widget build(BuildContext context) {
    final format = "dd/MM, HH:mm";
    return BlocBuilder<SubmitMemoryCubit, SubmitMemoryState>(
      builder: (context, state) {
        var value = state.memory.date?.format(displayFormat: format);
        print(value);
        return AppInput(
          key: Key(value.toString()),
          labelInput: "Time",
          hintText: format,
          initValue: value,
          readOnly: true,
          iconPrefix: Icon(
            CupertinoIcons.calendar,
            color: ColorStyles.orange9,
          ),
          onTap: () => _onTap(context, state),
        );
      },
    );
  }

  _onTap(BuildContext context, SubmitMemoryState state) {
    showDialog(
      context: context,
      builder: (_) => AppDatePicker(
        isPickRange: false,
        isSelectTime: true,
        disablePrevious: false,
        disableResetOption: true,
        initEndDate: state.memory.date,
        initEndTime: state.memory.date.timeOfDay,
        onDateSave: (picked) => context.read<SubmitMemoryCubit>().setDate(picked!),
      ),
    );
  }
}
