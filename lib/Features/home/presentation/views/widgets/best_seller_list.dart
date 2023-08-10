import 'package:book_hunt/Features/home/presentation/views/widgets/shimmers.dart';
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
                  bookModel: state.books[index],
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverList(
            delegate: SliverChildListDelegate(
              [
                Center(child: CustomErrorWidget(errMessage: state.errMessage)),
              ],
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: NewestBooksListShimmer(),
          );
        }
      },
    );
  }
}
