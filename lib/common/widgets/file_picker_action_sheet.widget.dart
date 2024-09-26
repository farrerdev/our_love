import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:our_love/common/widgets/action_sheet.widget.dart';

class ImagePickerActionSheet extends StatelessWidget {
  const ImagePickerActionSheet({
    super.key,
    required this.onPicked,
  });

  final Function(String path) onPicked;

  @override
  Widget build(BuildContext context) {
    return ActionSheet(
      actions: [
        ActionSheetItem(
          title: "Camera",
          icon: Icons.camera,
          onPressed: () {
            _handleImageSelected(ImageSource.camera);
          },
        ),
        ActionSheetItem(
          title: "Gallery",
          icon: Icons.image,
          onPressed: () {
            _handleImageSelected(ImageSource.gallery);
          },
        ),
      ],
    );
  }

  void _handleImageSelected(ImageSource source) async {
    final XFile? file = await ImagePicker().pickImage(source: source);
    if(file != null) onPicked(file.path);
  }
}

// class FilePickerActionSheet extends StatelessWidget {
//   const FilePickerActionSheet({
//     super.key,
//     required this.onDone,
//     required this.parentContext,
//     this.allowMultiple = true,
//     this.canPickCleeksyDoc = false,
//   });
//
//   final Function(List<AttachmentEntity> attachments) onDone;
//   final bool allowMultiple;
//   final BuildContext parentContext;
//   final bool canPickCleeksyDoc;
//
//   @override
//   Widget build(BuildContext context) {
//     return ActionSheet(
//       actions: [
//         if (canPickCleeksyDoc)
//           ActionSheetItem(
//             title: LocaleKeys.TaskDocument_CleeksyDoc.tr,
//             icon: Assets.icons.document.document,
//             onPressed: _handleCleeksyDocSelection,
//             isApplyDefaultColorForIcon: false,
//           ),
//         ActionSheetItem(
//           title: LocaleKeys.Task_Camera.tr,
//           icon: Assets.icons.work.camera,
//           onPressed: _handleCameraSelection,
//         ),
//         ActionSheetItem(
//           title: 'Thư viện hình ảnh',
//           icon: Assets.icons.image,
//           onPressed: () => _handleFilesSelection(type: FileType.media),
//         ),
//         ActionSheetItem(
//           title: "Tài liệu",
//           icon: Assets.icons.work.customField.attachment,
//           onPressed: _handleFilesSelection,
//         ),
//       ],
//     );
//   }
//
//   Future<void> _handleCleeksyDocSelection() async {
//     BottomSheetUtil.showModalBottomSheet(
//       context: parentContext,
//       body: NavigatorPopHandler(
//         onPop: () => NestedNavigation.documentKey?.currentState?.pop(),
//         child: DocumentView(
//           tag: 'BottomSheet',
//           onTap: (_) => TaskAttachmentController.to.addCleeksyDoc(_),
//         ),
//       ),
//       expand: true,
//     );
//   }
//
//   void _handleCameraSelection() async {
//     if (await AppPermissionUtil.hasCameraPermission()) {
//       final XFile? xFile =
//       await ImagePicker().pickImage(source: ImageSource.camera);
//       if (xFile != null) {
//         final attachments =
//         await FileHelper.xFilesToAttachmentEntities([xFile]);
//         onDone(attachments);
//       }
//     }
//   }
//
//   void _handleFilesSelection({FileType? type}) async {
//     final attachments = await FileHelper.selectFile(
//       allowMultiple: allowMultiple,
//       type: type,
//     );
//     if (attachments.isNotEmpty) {
//       onDone(attachments);
//     }
//   }
// }
//
// class HandlePickedFilesOverlay extends StatelessWidget {
//   const HandlePickedFilesOverlay({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return const AppLoadingOverlay(
//       text: "Đang xử lý nội dung tải lên...",
//     );
//   }
// }
