import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../manager/cubit/search_book_cubit.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onSubmitted: (value) =>
                  BlocProvider.of<SearchBookCubit>(context).searchBook(searchText: value),
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: Styles.textStyle20.copyWith(fontWeight: FontWeight.normal),
                enabledBorder: borderDecoration(),
                focusedBorder: borderDecoration(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder borderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
