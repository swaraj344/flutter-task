// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataItem {
  String get itemName => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  int get itemQuantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataItemCopyWith<DataItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataItemCopyWith<$Res> {
  factory $DataItemCopyWith(DataItem value, $Res Function(DataItem) then) =
      _$DataItemCopyWithImpl<$Res, DataItem>;
  @useResult
  $Res call({String itemName, String shortDescription, int itemQuantity});
}

/// @nodoc
class _$DataItemCopyWithImpl<$Res, $Val extends DataItem>
    implements $DataItemCopyWith<$Res> {
  _$DataItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? shortDescription = null,
    Object? itemQuantity = null,
  }) {
    return _then(_value.copyWith(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      itemQuantity: null == itemQuantity
          ? _value.itemQuantity
          : itemQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataItemImplCopyWith<$Res>
    implements $DataItemCopyWith<$Res> {
  factory _$$DataItemImplCopyWith(
          _$DataItemImpl value, $Res Function(_$DataItemImpl) then) =
      __$$DataItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemName, String shortDescription, int itemQuantity});
}

/// @nodoc
class __$$DataItemImplCopyWithImpl<$Res>
    extends _$DataItemCopyWithImpl<$Res, _$DataItemImpl>
    implements _$$DataItemImplCopyWith<$Res> {
  __$$DataItemImplCopyWithImpl(
      _$DataItemImpl _value, $Res Function(_$DataItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? shortDescription = null,
    Object? itemQuantity = null,
  }) {
    return _then(_$DataItemImpl(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      itemQuantity: null == itemQuantity
          ? _value.itemQuantity
          : itemQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DataItemImpl implements _DataItem {
  const _$DataItemImpl(
      {required this.itemName,
      required this.shortDescription,
      required this.itemQuantity});

  @override
  final String itemName;
  @override
  final String shortDescription;
  @override
  final int itemQuantity;

  @override
  String toString() {
    return 'DataItem(itemName: $itemName, shortDescription: $shortDescription, itemQuantity: $itemQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataItemImpl &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.itemQuantity, itemQuantity) ||
                other.itemQuantity == itemQuantity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, itemName, shortDescription, itemQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataItemImplCopyWith<_$DataItemImpl> get copyWith =>
      __$$DataItemImplCopyWithImpl<_$DataItemImpl>(this, _$identity);
}

abstract class _DataItem implements DataItem {
  const factory _DataItem(
      {required final String itemName,
      required final String shortDescription,
      required final int itemQuantity}) = _$DataItemImpl;

  @override
  String get itemName;
  @override
  String get shortDescription;
  @override
  int get itemQuantity;
  @override
  @JsonKey(ignore: true)
  _$$DataItemImplCopyWith<_$DataItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
