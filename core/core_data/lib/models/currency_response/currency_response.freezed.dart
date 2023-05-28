// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyResponse _$CurrencyResponseFromJson(Map<String, dynamic> json) {
  return _CurrencyResponse.fromJson(json);
}

/// @nodoc
mixin _$CurrencyResponse {
  Currency get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyResponseCopyWith<CurrencyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyResponseCopyWith<$Res> {
  factory $CurrencyResponseCopyWith(
          CurrencyResponse value, $Res Function(CurrencyResponse) then) =
      _$CurrencyResponseCopyWithImpl<$Res, CurrencyResponse>;
  @useResult
  $Res call({Currency data});

  $CurrencyCopyWith<$Res> get data;
}

/// @nodoc
class _$CurrencyResponseCopyWithImpl<$Res, $Val extends CurrencyResponse>
    implements $CurrencyResponseCopyWith<$Res> {
  _$CurrencyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Currency,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res> get data {
    return $CurrencyCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CurrencyResponseCopyWith<$Res>
    implements $CurrencyResponseCopyWith<$Res> {
  factory _$$_CurrencyResponseCopyWith(
          _$_CurrencyResponse value, $Res Function(_$_CurrencyResponse) then) =
      __$$_CurrencyResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Currency data});

  @override
  $CurrencyCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CurrencyResponseCopyWithImpl<$Res>
    extends _$CurrencyResponseCopyWithImpl<$Res, _$_CurrencyResponse>
    implements _$$_CurrencyResponseCopyWith<$Res> {
  __$$_CurrencyResponseCopyWithImpl(
      _$_CurrencyResponse _value, $Res Function(_$_CurrencyResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CurrencyResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Currency,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyResponse implements _CurrencyResponse {
  _$_CurrencyResponse({required this.data});

  factory _$_CurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyResponseFromJson(json);

  @override
  final Currency data;

  @override
  String toString() {
    return 'CurrencyResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyResponse &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyResponseCopyWith<_$_CurrencyResponse> get copyWith =>
      __$$_CurrencyResponseCopyWithImpl<_$_CurrencyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyResponseToJson(
      this,
    );
  }
}

abstract class _CurrencyResponse implements CurrencyResponse {
  factory _CurrencyResponse({required final Currency data}) =
      _$_CurrencyResponse;

  factory _CurrencyResponse.fromJson(Map<String, dynamic> json) =
      _$_CurrencyResponse.fromJson;

  @override
  Currency get data;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyResponseCopyWith<_$_CurrencyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
