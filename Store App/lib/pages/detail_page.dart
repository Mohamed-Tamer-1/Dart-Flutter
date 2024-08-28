import 'package:flutter/material.dart';
import 'package:store_app/models/constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/color_dot.dart';
import 'package:store_app/widgets/product_images.dart';

class DetailBage extends StatelessWidget {
  const DetailBage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: const Text("Back"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
              decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: ProductImage(
                      size: size,
                      image: product.image,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ColorDot(
                          fillcolor: kTextLightColor,
                          isSelected: true,
                        ),
                        ColorDot(
                          fillcolor: Colors.blue,
                          isSelected: false,
                        ),
                        ColorDot(
                          fillcolor: Colors.red,
                          isSelected: false,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding / 2),
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(22)),
                        child: Text(
                          "Price: \$${product.price}",
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding / 2),
            child: Text(
              product.description,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
