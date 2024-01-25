part of 'best_seller_cubit.dart';

abstract class BestSellerState extends Equatable {
  const BestSellerState();

  @override
  List<Object> get props => [];
}

final class BestSellerInitial extends BestSellerState {}

final class BestSellerSuccess extends BestSellerState {
  final List books;

  const BestSellerSuccess(this.books);
}

final class BestSellerFailure extends BestSellerState {
  final String errMessage;

  const BestSellerFailure(this.errMessage);
}

final class BestSellerLoading extends BestSellerState {}
