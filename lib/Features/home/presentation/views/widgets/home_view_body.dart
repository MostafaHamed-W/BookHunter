import 'package:book_hunt/Features/home/presentation/views/widgets/book_listview_item.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'books_list_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              BooksListView(),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return const BookListViewItem();
          }, childCount: 20),
        )
      ],
    );
  }
}
