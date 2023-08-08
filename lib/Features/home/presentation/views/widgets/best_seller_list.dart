import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/custom_error_widget.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import 'book_listview_item.dart';

class BestSellerBooksList extends StatelessWidget {
  const BestSellerBooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) {
                return BestSellerBookListViewItem(
                  author: state.books[index].volumeInfo.authors,
                  bookName: state.books[index].volumeInfo.title,
                  imgUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverList(
            delegate: SliverChildListDelegate(
              [
                CustomErrorWidget(errMessage: state.errMessage),
              ],
            ),
          );
        } else {
          return SliverList(
            delegate: SliverChildListDelegate(
              [const Center(child: CircularProgressIndicator())],
            ),
          );
        }
      },
    );
  }
}
