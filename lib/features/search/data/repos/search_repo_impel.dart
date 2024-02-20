import 'package:book/core/errors/failures.dart';
import 'package:book/core/utils/api_service.dart';
import 'package:book/features/home/data/models/book_model/book_model.dart';
import 'package:book/features/search/data/repos/searchrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpel implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpel(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchResult(
      {required String name}) async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:$name");
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
