import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_item.freezed.dart';

@freezed
class DataItem with _$DataItem {
  const factory DataItem({
    required String itemName,
    required String shortDescription,
    required int itemQuantity,
  }) = _DataItem;
}
