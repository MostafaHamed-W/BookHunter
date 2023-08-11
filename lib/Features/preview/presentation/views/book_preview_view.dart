import 'package:book_hunt/Features/home/data/book_model/book_model.dart';
import 'package:book_hunt/Features/preview/presentation/views/widgets/book_preview_view_body.dart';
import 'package:flutter/material.dart';

class BookPreviewView extends StatelessWidget {
  const BookPreviewView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookPreviewViewBody(bookModel: bookModel),
      ),
    );
  }
}
