import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Modal/Modallist.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        height: size.height * 0.05,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text(
                        category[index],
                        style: TextStyle(
                            color: selectedIndex == index
                                ? Colors.black
                                : Colors.black26,
                            fontSize: 18,
                            fontWeight: selectedIndex == index
                                ? FontWeight.w500
                                : FontWeight.normal),
                      ),
                      Container(
                        height: 3,
                        width: 26,
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Colors.orange
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
