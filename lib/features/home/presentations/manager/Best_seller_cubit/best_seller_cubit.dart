import 'package:bloc/bloc.dart';
import 'package:book/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.homeRepo) : super(BestSellerInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(BestSellerFailure(failure.errMessage));
    }, (books) {
      emit(BestSellerSuccess(books));
    });
  }
}
