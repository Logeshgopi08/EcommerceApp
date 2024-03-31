import 'package:flutter/cupertino.dart';

import 'Curveimage.dart';

class ProductDetailImages extends StatefulWidget {
  const ProductDetailImages({super.key,required this.imageUrl});
  final String imageUrl;

  @override
  State<ProductDetailImages> createState() => _ProductDetailImagesState();
}

class _ProductDetailImagesState extends State<ProductDetailImages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: CurveImageSide(),
      child: Align(
        alignment: Alignment.topCenter,
        child: Center(
          child: Hero(
            tag: imageUrl,
            child: Image(
                fit: BoxFit.cover,
                height: size.height *0.6,
                width: size.width,
                image: AssetImage(
                  imageUrl,

                )),
          ),
        ),
      ),
    );
  }
}
