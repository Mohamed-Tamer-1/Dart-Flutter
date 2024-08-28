import 'package:flutter/material.dart';
import 'package:store_app/models/constants.dart';
import 'package:store_app/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key, required this.itemindex, required this.product, required this.press});

  final int itemindex;
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 15),
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 20,
                    )
                  ]),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 160,
                    width: 200,
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                    ))),
            Positioned(
                right: 0,
                bottom: 0,
                child: SizedBox(
                  height: 136,
                  width: size.width - 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(product.title,
                            style: Theme.of(context).textTheme.titleLarge),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(product.subTitle,
                            style: Theme.of(context).textTheme.bodyMedium),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5,
                            vertical: kDefaultPadding / 5),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text("Price: \$${product.price}",
                            style: Theme.of(context).textTheme.labelLarge),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
