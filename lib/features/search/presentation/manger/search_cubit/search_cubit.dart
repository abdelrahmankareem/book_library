import 'package:bloc/bloc.dart';
import 'package:book/features/home/data/models/book_model/book_model.dart';

import 'package:book/features/search/data/repos/searchrepo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.search) : super(SearchInitial());
  final SearchRepo search;

  Future<void> fetchSearchresult({required String name}) async {
    emit(SearchLoading());
    var result = await search.fetchSearchResult(name: name);
    result.fold((failure) {
      emit(SearchFailure(failure.errMessage));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}
