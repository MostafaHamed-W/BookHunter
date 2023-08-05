import 'package:book_hunt/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_hunt/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_hunt/core/utils/app_router.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(height: 36),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: const CustomBookImage(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 34),
          child: Text('The Jungle Book', style: Styles.textStyle30),
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(color: Colors.white.withOpacity(0.7)),
        ),
        const SizedBox(height: 16),
        const BookRating(),
        const SizedBox(height: 37),
        const CustomBookDetailsButton(),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 112,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(),
                );
              }),
        )
      ],
    );
  }
}

class CustomBookDetailsListViewItem extends StatelessWidget {
  const CustomBookDetailsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 70 / 112,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(17)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.bookIconTest),
          ),
        ),
      ),
    );
    ;
  }
}

class CustomBookDetailsButton extends StatelessWidget {
  const CustomBookDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(17),
                    bottomLeft: Radius.circular(17),
                  ),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    '19.99€',
                    style: Styles.textStyle20
                        .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kBookPreviewView);
              },
              child: Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(17),
                    bottomRight: Radius.circular(17),
                  ),
                  color: Color(0xFFEF8262),
                ),
                child: Center(
                  child: Text(
                    'Free perview',
                    style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
