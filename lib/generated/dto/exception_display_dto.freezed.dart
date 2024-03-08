// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../dto/exception_display_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExceptionDisplayDTO {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExceptionDisplayDTOCopyWith<ExceptionDisplayDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionDisplayDTOCopyWith<$Res> {
  factory $ExceptionDisplayDTOCopyWith(
          ExceptionDisplayDTO value, $Res Function(ExceptionDisplayDTO) then) =
      _$ExceptionDisplayDTOCopyWithImpl<$Res, ExceptionDisplayDTO>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ExceptionDisplayDTOCopyWithImpl<$Res, $Val extends ExceptionDisplayDTO>
    implements $ExceptionDisplayDTOCopyWith<$Res> {
  _$ExceptionDisplayDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExceptionDisplayDTOImplCopyWith<$Res>
    implements $ExceptionDisplayDTOCopyWith<$Res> {
  factory _$$ExceptionDisplayDTOImplCopyWith(_$ExceptionDisplayDTOImpl value,
          $Res Function(_$ExceptionDisplayDTOImpl) then) =
      __$$ExceptionDisplayDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ExceptionDisplayDTOImplCopyWithImpl<$Res>
    extends _$ExceptionDisplayDTOCopyWithImpl<$Res, _$ExceptionDisplayDTOImpl>
    implements _$$ExceptionDisplayDTOImplCopyWith<$Res> {
  __$$ExceptionDisplayDTOImplCopyWithImpl(_$ExceptionDisplayDTOImpl _value,
      $Res Function(_$ExceptionDisplayDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ExceptionDisplayDTOImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExceptionDisplayDTOImpl implements _ExceptionDisplayDTO {
  const _$ExceptionDisplayDTOImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ExceptionDisplayDTO(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceptionDisplayDTOImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceptionDisplayDTOImplCopyWith<_$ExceptionDisplayDTOImpl> get copyWith =>
      __$$ExceptionDisplayDTOImplCopyWithImpl<_$ExceptionDisplayDTOImpl>(
          this, _$identity);
}

abstract class _ExceptionDisplayDTO implements ExceptionDisplayDTO {
  const factory _ExceptionDisplayDTO({required final String message}) =
      _$ExceptionDisplayDTOImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ExceptionDisplayDTOImplCopyWith<_$ExceptionDisplayDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
