import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Image widget to show NetworkImage with caching functionality.
class AppCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final ImageWidgetBuilder? imageBuilder;
  final PlaceholderWidgetBuilder? placeholder;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;
  final LoadingErrorWidgetBuilder? errorWidget;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final bool useOldImageOnUrlChange;
  final Duration fadeInDuration;
  final Duration fadeOutDuration;
  final Duration? placeholderFadeInDuration;

  const AppCachedNetworkImage({
    Key? key,
    required this.imageUrl,
    this.imageBuilder,
    this.placeholder,
    this.progressIndicatorBuilder,
    this.errorWidget,
    this.fadeInDuration = const Duration(milliseconds: 500),
    this.fadeOutDuration = const Duration(milliseconds: 1000),
    this.placeholderFadeInDuration,
    this.width,
    this.height,
    this.fit,
    this.useOldImageOnUrlChange = false,
  }) : super(key: key);

  /// Remove all query params from url to improve caching
  /// case same image file but diff temporary params like expired time
  String get cacheKey => imageUrl.split("?").first;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      cacheKey: cacheKey,
      fit: fit,
      width: width,
      height: height,
      fadeInDuration: fadeInDuration,
      fadeOutDuration: fadeOutDuration,
      placeholderFadeInDuration: placeholderFadeInDuration,
      imageUrl: imageUrl,
      errorWidget: errorWidget,
      imageBuilder: imageBuilder,
      progressIndicatorBuilder: (ctx, url, progress) {
        return progressIndicatorBuilder != null
            ? progressIndicatorBuilder!(ctx, url, progress)
            : placeholder != null
            ? placeholder!(ctx, url)
            : const SizedBox();
      },
      useOldImageOnUrlChange: useOldImageOnUrlChange,
    );
  }
}
