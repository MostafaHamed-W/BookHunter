import 'package:book_hunt/Features/home/data/book_model/book_model.dart';
import 'package:book_hunt/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> searchBook({required String searchText});
}
