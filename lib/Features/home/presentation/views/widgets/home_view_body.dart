import 'package:book_hunt/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomAppBar(),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomListViewItem(),
                  SizedBox(width: 6),
                  CustomListViewItem(),
                  SizedBox(width: 6),
                  CustomListViewItem(),
                  SizedBox(width: 6),
                  CustomListViewItem(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
