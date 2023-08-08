import 'package:book_hunt/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_hunt/Features/home/presentation/views/widgets/book_listview_item.dart';
import 'package:book_hunt/core/utils/custom_error_widget.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list.dart';
import 'books_list_view.dart';
import 'custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
