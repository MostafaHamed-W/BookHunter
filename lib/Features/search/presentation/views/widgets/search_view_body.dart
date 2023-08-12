import 'package:book_hunt/Features/search/presentation/manager/cubit/search_book_cubit.dart';
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
              return Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 200),
                        Icon(
                          Icons.search,
                          size: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.white.withOpacity(0.7),
                        ),
                        Text(
                          'Please enter book name or category to search',
                          style: Styles.textStyle20.copyWith(
                            fontSize: 23,
                            color: Colors.white.withOpacity(0.7),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
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
              return const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        )
      ],
    );
  }
}
