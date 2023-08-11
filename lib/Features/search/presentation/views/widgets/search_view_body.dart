import 'package:book_hunt/Features/search/presentation/manager/cubit/search_book_cubit.dart';
import 'package:book_hunt/Features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:book_hunt/core/errors/failures.dart';
import 'package:book_hunt/core/utils/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/book_listview_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSearchTextField(),
        const SizedBox(height: 5),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text('Search result', style: Styles.textStyle18),
        ),
        const SizedBox(height: 15),
        BlocBuilder<SearchBookCubit, SearchBookState>(
          builder: (context, state) {
            if (state is SearchBookInitial) {
              return const Expanded(
                child: Center(
                  child: Text(
                    'Enter book you want to search',
                    style: Styles.textStyle20,
                  ),
                ),
              );
            } else if (state is SearchBookSuccess) {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return BestSellerBookListViewItem(
                      bookModel: state.books[index],
                    );
                  },
                ),
              );
            } else if (state is SearchBookFailure) {
              return CustomErrorWidget(errMessage: state.errMessage);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )
      ],
    );
  }
}
