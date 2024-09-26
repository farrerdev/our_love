import 'package:file_picker/file_picker.dart';

const double kMaxGBFileSize = 5.0;

class FileHelper {
  static String? applicationDir;

  // static Future<void> launchFile({
  //   required String source,
  //   required String? name,
  // }) async {
  //   Get.to(
  //         () => PreviewFile(
  //       source: source,
  //       name: name,
  //     ),
  //     transition: Transition.fadeIn,
  //     preventDuplicates: false,
  //   );
  // }

  // static String getMimeType(String path) {
  //   return lookupMimeType(path).toString();
  // }
  //
  // static MediaType getMediaType(File file) {
  //   return MediaType.parse(getMimeType(file.path));
  // }

  static Future<FilePickerResult?> selectFile(
      {bool allowMultiple = true, FileType? type}) async {

    FilePickerResult? result;
      await FilePicker.platform
          .pickFiles(
        allowMultiple: allowMultiple,
        type: type ?? FileType.any,
        allowCompression: false,
      )
          .then((selectedFiles) => result = selectedFiles);
    // if (result != null) {
    //   final List<PlatformFile> filesLarge = [];
    //   result!.files.forEach((file) {
    //     final double sizeInGB = file.size / (1024 * 1024 * 1024);
    //     if (sizeInGB > kMaxGBFileSize) filesLarge.add(file);
    //   });
    //   if (filesLarge.isNotEmpty) {
    //     showFileLargeMessage();
    //
    //     filesLarge.forEach((element) {
    //       result!.files.remove(element);
    //     });
    //   }
    // }

    return result;
  }
  //
  // static void showFileLargeMessage() {
  //   return MessageDialog.showNotificationDialog(
  //     message: LocaleKeys.TaskDocument_FileTooLarge.tr,
  //   );
  // }

//   static String lookupMineTypeImage(Uint8List fileData) {
//     final mimeType = lookupMimeType('', headerBytes: fileData);
//     var extImage = 'jpg';
//     if (mimeType != null && mimeType.startsWith('image')) {
//       extImage = mimeType.split('/').last;
//     }
//     return extImage;
//   }
//
//   static Future<String?> saveFileData(Uint8List fileData) async {
//     final downloadPath = await getDownloadTemporaryPath();
//     final mineImage = lookupMineTypeImage(fileData);
//     final file = await File(
//         '$downloadPath/${DateTime.now().microsecondsSinceEpoch}.$mineImage')
//         .create();
//     file.writeAsBytesSync(fileData);
//     return file.path;
//   }
//
//   static Future<List<AttachmentEntity>> toAttachmentEntities(
//       FilePickerResult files) async {
//     final List<AttachmentEntity> attachmentEntities = [];
//     for (final file in files.files) {
//       final content = await file.path!.toMultipartFile();
//       if (content != null) {
//         final attachmentEntity = AttachmentEntity(
//           extension: file.name.getExtension,
//           name: file.name,
//           size: file.size.round(),
//           url: file.path,
//           fileUrl: file.path,
//           thumbnailUrl: file.path,
//           originalUrl: file.path,
//           content: content,
//         );
//         attachmentEntities.add(attachmentEntity);
//       }
//     }
//
//     return attachmentEntities;
//   }
//
//   static Future<AttachmentEntity?> pathToAttachmentEntity(String path) async {
//     final File file = File.fromUri(Uri.parse(path));
//     final content = await file.path.toMultipartFile();
//     if (content != null) {
//       final AttachmentEntity attachment = AttachmentEntity(
//         extension: basename(path).getExtension,
//         name: basename(path),
//         size: file.lengthSync(),
//         thumbnailUrl: file.path,
//         originalUrl: file.path,
//         fileUrl: file.path,
//         url: file.path,
//         content: content,
//       );
//
//       return attachment;
//     }
//     return null;
//   }
//
//   static Future<List<AttachmentEntity>> xFilesToAttachmentEntities(
//       List<XFile> files) async {
//     final List<AttachmentEntity> attachmentEntities = [];
//     for (final file in files) {
//       final content = await file.path.toMultipartFile();
//       final size = await file.length();
//       if (content != null) {
//         final attachmentEntity = AttachmentEntity(
//           extension: file.name.getExtension,
//           name: file.name,
//           size: size.round(),
//           thumbnailUrl: file.path,
//           originalUrl: file.path,
//           fileUrl: file.path,
//           url: file.path,
//           content: content,
//         );
//         attachmentEntities.add(attachmentEntity);
//       }
//     }
//     return attachmentEntities;
//   }
//
// /*  static Future<List<AttachmentEntity>> entitiesToAttachmentEntities(
//       List<AssetEntity> entities) async {
//     final List<AttachmentEntity> attachmentEntities = [];
//     bool hasFileLarge = false;
//     for (final entity in entities) {
//       final file = await entity.file;
//       if (file != null) {
//         final content = await file.path.toMultipartFile();
//         final size = await file.length();
//         final double sizeInMb = size / (1024 * 1024);
//         if (sizeInMb <= kMaxMBFileSize) {
//           final attachmentEntity = AttachmentEntity(
//             extension: content.filename.getExtension,
//             name: content.filename,
//             size: size.round(),
//             fileUrl: file.path,
//             url: file.path,
//             thumbnailUrl: file.path,
//             originalUrl: file.path,
//             content: content,
//             entityId: entity.id,
//           );
//           attachmentEntities.add(attachmentEntity);
//         } else {
//           hasFileLarge = true;
//         }
//       }
//     }
//     if (hasFileLarge) showFileLargeMessage();
//     return attachmentEntities;
//   }*/
//
//   static List<dynamic>? toMultipartFiles(List<AttachmentEntity> attachments) {
//     if (attachments.isEmpty)
//       return null;
//     else
//       return attachments.map((attachment) {
//         if (attachment.content != null)
//           return attachment.content;
//         else
//           return attachment;
//       }).toList();
//   }
//
//   static Future<String?> downloadGetFilePath(
//       String? source, {
//         ProgressCallback? onReceiveProgress,
//         CancelToken? cancelToken,
//         Uint8List? base64Src,
//       }) async {
//     try {
//       String? filePath;
//       if (base64Src != null) {
//         filePath = await saveFileData(base64Src);
//       } else if (source != null) {
//         if (source.isURLType) {
//           String fileName = source;
//           final lastIndex = fileName.lastIndexOf("?");
//           if (lastIndex != -1) fileName = source.substring(0, lastIndex);
//           fileName = fileName.substring(fileName.lastIndexOf("/") + 1);
//           final path = await HttpService.downloadAwsFile(
//             source,
//             fileName,
//             onReceiveProgress: onReceiveProgress,
//             cancelToken: cancelToken,
//           );
//           filePath = path;
//         } else
//           filePath = source;
//       }
//
//       return filePath;
//     } catch (e) {
//       return null;
//     }
//   }
//
//   static Future<void> downloadImageStorage(
//       String? source, {
//         ProgressCallback? onReceiveProgress,
//         Uint8List? base64Src,
//       }) async {
//     if (await AppPermissionUtil.hasStoragePermission()) {
//       await downloadImage(
//         source,
//         onReceiveProgress: onReceiveProgress,
//         base64Src: base64Src,
//       );
//     }
//   }
//
//   static Future<void> downloadImage(
//       String? source, {
//         ProgressCallback? onReceiveProgress,
//         Uint8List? base64Src,
//       }) async {
//     final filePath = await downloadGetFilePath(
//       source,
//       onReceiveProgress: onReceiveProgress,
//       base64Src: base64Src,
//     );
//
//     if (filePath != null) {
//       try {
//         await Gal.putImage(filePath, album: AppFlavor.appName);
//         MessageDialog.showSuccessToast(message: LocaleKeys.Share_SavedFile.tr);
//       } catch (e) {
//         MessageDialog.showErrorToast();
//       }
//     }
//   }
//
//   static Future<String?> downloadFileStorage(
//       String url, {
//         String? fileName,
//         Function(int count, int total)? onReceiveProgress,
//         bool showToast = true,
//       }) async {
//     try {
//       if (await AppPermissionUtil.hasStoragePermission()) {
//         String? _fileName = fileName;
//         if (_fileName == null) {
//           //Set fileName
//           _fileName = url;
//           final lastIndex = _fileName.lastIndexOf("?");
//           if (lastIndex != -1) _fileName = url.substring(0, lastIndex);
//           _fileName = _fileName.substring(_fileName.lastIndexOf("/") + 1);
//         } else if (_fileName.isImageFileType) {
//           //Save to gallery if file is image
//           downloadImage(url);
//           return null;
//         }
//         //
//         final directory = await getDownloadDirectory();
//         //Replace "/" to "-" to avoid auto create directories by "/"
//         _fileName = _fileName.replaceAll("/", "-");
//         final path = '${directory.path}/$_fileName';
//         await HttpService.instance.downloadAwsFileStorage(
//           url,
//           path,
//           onReceiveProgress: onReceiveProgress,
//         );
//         if (showToast) {
//           MessageDialog.showSuccessToast(
//             message: LocaleKeys.Share_SavedFile.tr,
//             suffixTitle: "Mở",
//             onSuffixTap: () => launchFile(
//               source: path,
//               name: fileName,
//             ),
//           );
//         }
//
//         return path;
//       }
//       return null;
//     } catch (e) {
//       if (showToast) {
//         MessageDialog.showErrorToast();
//       }
//       return null;
//     }
//   }
//
//   static Future<String> moveFileToLocal({
//     required String destinationFolder,
//     required String filePath,
//   }) async {
//     applicationDir ??= (await getApplicationSupportDirectory()).path;
//
//     final String newFolder = (await Directory(
//       path.join(
//         applicationDir!,
//         destinationFolder,
//       ),
//     ).create(recursive: true))
//         .path;
//
//     final String newPath = (await File(filePath).rename(
//       path.join(
//         newFolder,
//         path.basename(filePath),
//       ),
//     ))
//         .path;
//
//     return newPath;
//   }
//
//   static Future<String> joinWithAppFolder(
//       {required String folderName, required String baseFile}) async {
//     applicationDir ??= (await getApplicationSupportDirectory()).path;
//     return path.join(applicationDir!, folderName, baseFile);
//   }
//
//   static bool checkFileExist(String filePath) {
//     return File(filePath).existsSync();
//   }
//
//   static Future<UploadUrlEntity?> uploadUrl(
//       String filePath,
//       CancelToken? cancelToken, {
//         required Future<Either<Failure, UploadUrlEntity>> Function(
//             UploadUrlParam param,
//             ) uploadUseCase,
//       }) async {
//     //Disable screen lock automatically
//     WakelockPlus.enable();
//     //
//     final file = File(filePath);
//     final param = UploadUrlParam(
//       fileName: basename(file.path),
//       size: file.lengthSync(),
//       file: file,
//     );
//     UploadUrlEntity? right;
//     final res = await uploadUseCase.call(param);
//     res.fold(
//           (l) => MessageDialog.showErrorToast(message: l.message),
//           (r) => right = r,
//     );
//
//     if (right != null) {
//       final UpdateFileS3UseCase updateFileS3UseCase = getIt.get();
//       final s3Param = UpdateFileS3Param(
//         uploadUrl: right!.uploadURL,
//         file: param.file,
//         cancelToken: cancelToken,
//       );
//       final res = await updateFileS3UseCase.call(s3Param);
//       res.fold(
//             (l) {
//           if (l.error?.isCanceled != true) {
//             MessageDialog.showErrorToast(message: l.message);
//           }
//           right = null;
//         },
//             (r) => null,
//       );
//     }
//     //Reset screen lock automatically setting
//     WakelockPlus.disable();
//     return right;
//   }
}
