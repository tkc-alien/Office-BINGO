// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../entity/lottery_number_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LotteryNumberEntity _$LotteryNumberEntityFromJson(Map<String, dynamic> json) {
  return _LotteryNumberEntity.fromJson(json);
}

/// @nodoc
mixin _$LotteryNumberEntity {
  int get number => throw _privateConstructorUsedError;
  DateTime? get gotAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryNumberEntityCopyWith<LotteryNumberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryNumberEntityCopyWith<$Res> {
  factory $LotteryNumberEntityCopyWith(
          LotteryNumberEntity value, $Res Function(LotteryNumberEntity) then) =
      _$LotteryNumberEntityCopyWithImpl<$Res, LotteryNumberEntity>;
  @useResult
  $Res call({int number, DateTime? gotAt});
}

/// @nodoc
class _$LotteryNumberEntityCopyWithImpl<$Res, $Val extends LotteryNumberEntity>
    implements $LotteryNumberEntityCopyWith<$Res> {
  _$LotteryNumberEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? gotAt = freezed,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      gotAt: freezed == gotAt
          ? _value.gotAt
          : gotAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryNumberEntityImplCopyWith<$Res>
    implements $LotteryNumberEntityCopyWith<$Res> {
  factory _$$LotteryNumberEntityImplCopyWith(_$LotteryNumberEntityImpl value,
          $Res Function(_$LotteryNumberEntityImpl) then) =
      __$$LotteryNumberEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, DateTime? gotAt});
}

/// @nodoc
class __$$LotteryNumberEntityImplCopyWithImpl<$Res>
    extends _$LotteryNumberEntityCopyWithImpl<$Res, _$LotteryNumberEntityImpl>
    implements _$$LotteryNumberEntityImplCopyWith<$Res> {
  __$$LotteryNumberEntityImplCopyWithImpl(_$LotteryNumberEntityImpl _value,
      $Res Function(_$LotteryNumberEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? gotAt = freezed,
  }) {
    return _then(_$LotteryNumberEntityImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      gotAt: freezed == gotAt
          ? _value.gotAt
          : gotAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$LotteryNumberEntityImpl implements _LotteryNumberEntity {
  const _$LotteryNumberEntityImpl({required this.number, required this.gotAt});

  factory _$LotteryNumberEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryNumberEntityImplFromJson(json);

  @override
  final int number;
  @override
  final DateTime? gotAt;

  @override
  String toString() {
    return 'LotteryNumberEntity(number: $number, gotAt: $gotAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryNumberEntityImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.gotAt, gotAt) || other.gotAt == gotAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, gotAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryNumberEntityImplCopyWith<_$LotteryNumberEntityImpl> get copyWith =>
      __$$LotteryNumberEntityImplCopyWithImpl<_$LotteryNumberEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryNumberEntityImplToJson(
      this,
    );
  }
}

abstract class _LotteryNumberEntity implements LotteryNumberEntity {
  const factory _LotteryNumberEntity(
      {required final int number,
      required final DateTime? gotAt}) = _$LotteryNumberEntityImpl;

  factory _LotteryNumberEntity.fromJson(Map<String, dynamic> json) =
      _$LotteryNumberEntityImpl.fromJson;

  @override
  int get number;
  @override
  DateTime? get gotAt;
  @override
  @JsonKey(ignore: true)
  _$$LotteryNumberEntityImplCopyWith<_$LotteryNumberEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
