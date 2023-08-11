import 'package:bloc/bloc.dart';
import 'package:book_hunt/Features/home/data/book_model/book_model.dart';
import 'package:book_hunt/Features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());
  final SearchRepo searchRepo;

  Future<void> searchBook({required String searchText}) async {
    emit(SearchBookLoading());
    var result = await searchRepo.searchBook(searchText: searchText);
    result.fold((failure) {
      emit(SearchBookFailure(failure.errMessage));
    }, (books) {
      emit(SearchBookSuccess(books));
    });
  }
}
