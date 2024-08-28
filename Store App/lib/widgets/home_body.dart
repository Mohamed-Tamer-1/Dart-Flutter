import 'package:flutter/material.dart';
import 'package:store_app/models/constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/pages/detail_page.dart';
import 'package:store_app/widgets/product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 80,
                  ),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemindex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailBage(product: products[index],)));
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
