import 'package:image_cacheing/image_cacheing.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ImageCacheing(
          url: url,
          fit: BoxFit.fill,
          loadingWidget: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
