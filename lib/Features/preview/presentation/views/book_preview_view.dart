import 'package:book_hunt/Features/preview/presentation/views/widgets/book_preview_view_body.dart';
import 'package:flutter/material.dart';

class BookPreviewView extends StatelessWidget {
  const BookPreviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookPreviewViewBody(),
      ),
    );
  }
}
