import 'package:flutter/cupertino.dart';

import '../../../../home/presentation/views/widgets/book_listview_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BookListViewItem();
        });
  }
}
