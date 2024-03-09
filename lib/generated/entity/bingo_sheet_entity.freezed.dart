// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../entity/bingo_sheet_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BingoSheetEntity _$BingoSheetEntityFromJson(Map<String, dynamic> json) {
  return _BingoSheetEntity.fromJson(json);
}

/// @nodoc
mixin _$BingoSheetEntity {
  List<LotteryNumberEntity> get sheet => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BingoSheetEntityCopyWith<BingoSheetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BingoSheetEntityCopyWith<$Res> {
  factory $BingoSheetEntityCopyWith(
          BingoSheetEntity value, $Res Function(BingoSheetEntity) then) =
      _$BingoSheetEntityCopyWithImpl<$Res, BingoSheetEntity>;
  @useResult
  $Res call({List<LotteryNumberEntity> sheet, DateTime createdAt});
}

/// @nodoc
class _$BingoSheetEntityCopyWithImpl<$Res, $Val extends BingoSheetEntity>
    implements $BingoSheetEntityCopyWith<$Res> {
  _$BingoSheetEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheet = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      sheet: null == sheet
          ? _value.sheet
          : sheet // ignore: cast_nullable_to_non_nullable
              as List<LotteryNumberEntity>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BingoSheetEntityImplCopyWith<$Res>
    implements $BingoSheetEntityCopyWith<$Res> {
  factory _$$BingoSheetEntityImplCopyWith(_$BingoSheetEntityImpl value,
          $Res Function(_$BingoSheetEntityImpl) then) =
      __$$BingoSheetEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LotteryNumberEntity> sheet, DateTime createdAt});
}

/// @nodoc
class __$$BingoSheetEntityImplCopyWithImpl<$Res>
    extends _$BingoSheetEntityCopyWithImpl<$Res, _$BingoSheetEntityImpl>
    implements _$$BingoSheetEntityImplCopyWith<$Res> {
  __$$BingoSheetEntityImplCopyWithImpl(_$BingoSheetEntityImpl _value,
      $Res Function(_$BingoSheetEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheet = null,
    Object? createdAt = null,
  }) {
    return _then(_$BingoSheetEntityImpl(
      sheet: null == sheet
          ? _value._sheet
          : sheet // ignore: cast_nullable_to_non_nullable
              as List<LotteryNumberEntity>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$BingoSheetEntityImpl implements _BingoSheetEntity {
  const _$BingoSheetEntityImpl(
      {required final List<LotteryNumberEntity> sheet, required this.createdAt})
      : _sheet = sheet;

  factory _$BingoSheetEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BingoSheetEntityImplFromJson(json);

  final List<LotteryNumberEntity> _sheet;
  @override
  List<LotteryNumberEntity> get sheet {
    if (_sheet is EqualUnmodifiableListView) return _sheet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sheet);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'BingoSheetEntity(sheet: $sheet, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BingoSheetEntityImpl &&
            const DeepCollectionEquality().equals(other._sheet, _sheet) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_sheet), createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BingoSheetEntityImplCopyWith<_$BingoSheetEntityImpl> get copyWith =>
      __$$BingoSheetEntityImplCopyWithImpl<_$BingoSheetEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BingoSheetEntityImplToJson(
      this,
    );
  }
}

abstract class _BingoSheetEntity implements BingoSheetEntity {
  const factory _BingoSheetEntity(
      {required final List<LotteryNumberEntity> sheet,
      required final DateTime createdAt}) = _$BingoSheetEntityImpl;

  factory _BingoSheetEntity.fromJson(Map<String, dynamic> json) =
      _$BingoSheetEntityImpl.fromJson;

  @override
  List<LotteryNumberEntity> get sheet;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$BingoSheetEntityImplCopyWith<_$BingoSheetEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
