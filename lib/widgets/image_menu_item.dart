// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:slicing_ui_pro1/util/theme.dart';

class ImageMenuItem extends StatefulWidget {
  final String imageUrl;
  final String title;

  const ImageMenuItem({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  State<ImageMenuItem> createState() => _ImageMenuItemState();
}

class _ImageMenuItemState extends State<ImageMenuItem> {
  @override
  Widget build(BuildContext context) {
    String imageUrl = widget.imageUrl;
    String title = widget.title;

    return Hero(
      tag: imageUrl,
      child: Container(
        margin: const EdgeInsets.only(left: 24, right: 8),
        width: MediaQuery.of(context).size.width / 1.4,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  color: Colors.black.withOpacity(.2),
                ),
              ),
              Positioned(
                bottom: 24,
                left: 24,
                child: Text(
                  title,
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    color: kPrimaryAppColor,
                    iconSize: 20,
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
