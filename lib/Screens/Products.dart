import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Modal/Modallist.dart';
import 'Details/Detailscreen.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              Size size = MediaQuery.of(context).size;
              final product = products[index];
              return Transform.translate(
                offset: Offset(0, index.isOdd ? 28 : 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailScreen(products: product)));
                  },
                  child: Padding(
                    padding:
                    const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Hero(
                            tag: product.imageUrl,
                            child: Image(
                              height: size.height * 0.25,
                              width: size.width * 0.45,
                              image: AssetImage(
                                product.imageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          product.name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          product.manufacturer,
                          style: const TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
