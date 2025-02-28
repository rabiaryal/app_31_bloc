import 'package:app_31/models/favourite_items_models.dart';
import 'package:equatable/equatable.dart';

enum ListStatus { loading, success, failure }

class FavouriteItemStates extends Equatable {
  final List<FavouriteItemModel> favouriteItemList;
   final List<FavouriteItemModel> temFavouriteItemList;
  final ListStatus listStatus;

  const FavouriteItemStates({
    this.temFavouriteItemList=const [],
    this.favouriteItemList = const [],
    this.listStatus = ListStatus.loading,
  });
  FavouriteItemStates copyWith({
    List<FavouriteItemModel>? favouriteItemList,
    List<FavouriteItemModel>? temFavouriteItemList,
    ListStatus? listStatus,
  }) {
    return FavouriteItemStates(
      favouriteItemList: favouriteItemList ?? this.favouriteItemList,
       temFavouriteItemList: temFavouriteItemList ?? this.temFavouriteItemList,
      listStatus: listStatus ?? this.listStatus,
    );
  }

  @override
  List<Object?> get props => [
        favouriteItemList,
        temFavouriteItemList,
        listStatus,
      ];
}
