import 'package:book/core/errors/failures.dart';
import 'package:book/core/utils/api_service.dart';
import 'package:book/features/home/data/models/book_model/book_model.dart';
import 'package:book/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiservice;

  HomeRepoImpl({required this.apiservice});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiservice.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=computer science");
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
