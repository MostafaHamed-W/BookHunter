import 'package:flutter/material.dart';
import 'best_seller_list.dart';
import 'featured_books_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        FeaturedBooksList(),
        BestSellerBooksList(),
      ],
    );
  }
}
