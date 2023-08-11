import 'package:book_hunt/Features/home/data/book_model/book_model.dart';
import 'package:book_hunt/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_hunt/Features/home/presentation/views/book_details_view.dart';
import 'package:book_hunt/Features/home/presentation/views/home_view.dart';
import 'package:book_hunt/Features/preview/presentation/views/book_preview_view.dart';
import 'package:book_hunt/Features/search/presentation/views/search_view.dart';
import 'package:book_hunt/Features/splash/presentation/views/splash_view.dart';
import 'package:book_hunt/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/data/repos/home_repo_impl.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kBookPreviewView = '/bookPreviewView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            homeRepo: getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: kBookPreviewView,
        builder: (context, state) => BookPreviewView(bookModel: state.extra as BookModel),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
