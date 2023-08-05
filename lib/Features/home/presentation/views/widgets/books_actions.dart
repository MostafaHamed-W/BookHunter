import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_Button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              buttonText: "19.99€",
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(17),
                bottomLeft: Radius.circular(17),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              buttonText: 'Free preview',
              backgroundColor: const Color(0xFFEF8262),
              textColor: Colors.white,
              textStyle:
                  Styles.textStyle16.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(17),
                bottomRight: Radius.circular(17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
