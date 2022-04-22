import 'package:flutter/material.dart';
import 'package:untitled/constants/app_defaults.dart';
import 'package:cached_network_image/cached_network_image.dart';


class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
      { Key? key,
        this.fit = BoxFit.cover,
        required this.src,
        this.radius = AppDefaults.radius}
    ) : super(key: key);

  final BoxFit fit;
  final String src;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: CachedNetworkImage(
        fit: fit,
        imageUrl: src,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: fit,
            ),
          ),
        ),
        //placeholder: (context, url) => ,
      ),
    );
  }
}
