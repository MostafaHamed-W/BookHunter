import 'package:book_hunt/core/utils/assets.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'books_list_view.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const BooksListView(),
          const SizedBox(height: 27),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Best Seller', style: Styles.homeTitle),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return const BestSellerListViewItem();
            }),
          ),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: SizedBox(
        height: 130,
        width: double.infinity,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 300 / 480,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.bookIconTest),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Harry Potter', style: Styles.homeTitle),
                  const Text('and the Goblet of Fire', style: Styles.homeTitle),
                  const Spacer(flex: 2),
                  Text('J.K. Rowling', style: Styles.authorName),
                  const Spacer(),
                  const Row(
                    children: [
                      Text('19.99 €', style: Styles.homeTitle),
                      Spacer(),
                      Icon(Icons.star, color: Color(0xFFFFDD4F)),
                      SizedBox(width: 5),
                      Text('4.8'),
                      SizedBox(width: 5),
                      Text('(2390)'),
                      SizedBox(width: 12),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
