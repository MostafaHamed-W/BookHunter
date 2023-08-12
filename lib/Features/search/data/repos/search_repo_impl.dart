import 'package:book_hunt/Features/home/data/book_model/book_model.dart';
import 'package:book_hunt/Features/search/data/repos/search_repo.dart';
import 'package:book_hunt/core/errors/failures.dart';
import 'package:book_hunt/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> searchBook({required String searchText}) async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=$searchText',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        debugPrint(e.toString());
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
