import 'package:book_hunt/Features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextField(),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text('Search result', style: Styles.textStyle18),
        ),
        SizedBox(height: 15),
        Expanded(
          child: SearchResultListView(),
        )
      ],
    );
  }
}
