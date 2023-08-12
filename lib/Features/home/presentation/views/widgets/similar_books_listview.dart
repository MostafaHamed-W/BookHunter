import 'package:book_hunt/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_hunt/core/utils/app_router.dart';
import 'package:book_hunt/core/utils/custom_error_widget.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'custom_book_image.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: 112,
            child: state.books!.isEmpty
                ? const Center(
                    child: Text(
                    'Sorry, there is no similar books!',
                    style: Styles.textStyle20,
                  ))
                : ListView.builder(
                    itemCount: state.books!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: GestureDetector(
                          onTap: () => GoRouter.of(context)
                              .push(AppRouter.kBookDetailsView, extra: state.books![index]),
                          child: CustomBookImage(
                              aspectRatio: 70 / 112,
                              imageUrl: state.books![index].volumeInfo.imageLinks?.thumbnail ?? ''),
                        ),
                      );
                    }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
