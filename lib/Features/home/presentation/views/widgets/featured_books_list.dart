import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'books_list_view.dart';
import 'custom_app_bar.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
