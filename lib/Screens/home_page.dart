import 'package:flutter/material.dart';
import 'package:shebhaljazeerastore/Components/categoryViewItem.dart';
import 'package:shebhaljazeerastore/Components/constants.dart';
import 'package:shebhaljazeerastore/Components/sectionTitle.dart';
import 'package:shebhaljazeerastore/widgets/cart_products.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static String id = 'HomePage';

  final List<Map<String, String>> categories = [
    {'name': 'Rice', 'image': 'assets/images/Rice.webp'},
    {'name': 'Pasta', 'image': 'assets/images/Pasta.webp'},
    {'name': 'Indolina', 'image': 'assets/images/Indolina.webp'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            kNameApp,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: 'Category'),
            buildCategoryList(),
            const SectionTitle(title: 'Best Seller'),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CartProduct(
                              image: 'assets/images/Mawuq 400 gm.png',
                              nameProduct: 'مكرونة بدور مقصوصة',
                              weightProduct: '400 جرام'),
                          const SizedBox(
                            width: 10,
                          ),
                          CartProduct(
                              image: 'assets/images/Mawuq 400 gm.png',
                              nameProduct: 'مكرونة بدور مقصوصة',
                              weightProduct: '400 جرام'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CartProduct(
                              image: 'assets/images/Mawuq 400 gm.png',
                              nameProduct: 'مكرونة بدور مقصوصة',
                              weightProduct: '400 جرام'),
                          const SizedBox(
                            width: 10,
                          ),
                          CartProduct(
                              image: 'assets/images/Mawuq 400 gm.png',
                              nameProduct: 'مكرونة بدور مقصوصة',
                              weightProduct: '400 جرام'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        selectedItemColor: kPrimaryColor,
      ),
    );
  }

  Widget buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CategoryItem(
              categoryName: category['name']!,
              image: category['image']!,
              onTap: () {
                print(category['name']);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
