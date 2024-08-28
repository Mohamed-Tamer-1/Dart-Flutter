// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:store_app/models/constants.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.9,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
          Image.asset(image),
        ],
      ),
    );
  }
}
