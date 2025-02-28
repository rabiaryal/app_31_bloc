import 'package:app_31/models/favourite_items_models.dart';
import 'package:equatable/equatable.dart';

abstract class FavouriteEvents extends Equatable {
  const FavouriteEvents();

  @override
  List<Object> get props => [];
}

class FetchFavouriteLIst extends FavouriteEvents {}

class FavouriteItem extends FavouriteEvents {
  final FavouriteItemModel item;
 const  FavouriteItem({required this.item});
}


class SelectItem extends FavouriteEvents {
  final FavouriteItemModel item;
  const SelectItem({required this.item});
}
class UnSelectItem extends FavouriteEvents {
  final FavouriteItemModel item;
  const UnSelectItem({required this.item});
}


class DeleteItem extends FavouriteEvents{}