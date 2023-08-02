import 'package:flutter/cupertino.dart';

import 'custom_list_view_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.30,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: CustomListViewItem(),
              );
            }),
      ),
    );
  }
}
