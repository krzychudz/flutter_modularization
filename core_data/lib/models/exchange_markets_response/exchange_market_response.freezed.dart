// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_market_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeMarketResponse _$ExchangeMarketResponseFromJson(
    Map<String, dynamic> json) {
  return _ExchangeMarketResponse.fromJson(json);
}

/// @nodoc
mixin _$ExchangeMarketResponse {
  List<ExchangeMarket> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeMarketResponseCopyWith<ExchangeMarketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeMarketResponseCopyWith<$Res> {
  factory $ExchangeMarketResponseCopyWith(ExchangeMarketResponse value,
          $Res Function(ExchangeMarketResponse) then) =
      _$ExchangeMarketResponseCopyWithImpl<$Res, ExchangeMarketResponse>;
  @useResult
  $Res call({List<ExchangeMarket> data});
}

/// @nodoc
class _$ExchangeMarketResponseCopyWithImpl<$Res,
        $Val extends ExchangeMarketResponse>
    implements $ExchangeMarketResponseCopyWith<$Res> {
  _$ExchangeMarketResponseCopyWithImpl(this._value, this._then);

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
              as List<ExchangeMarket>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeMarketResponseCopyWith<$Res>
    implements $ExchangeMarketResponseCopyWith<$Res> {
  factory _$$_ExchangeMarketResponseCopyWith(_$_ExchangeMarketResponse value,
          $Res Function(_$_ExchangeMarketResponse) then) =
      __$$_ExchangeMarketResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExchangeMarket> data});
}

/// @nodoc
class __$$_ExchangeMarketResponseCopyWithImpl<$Res>
    extends _$ExchangeMarketResponseCopyWithImpl<$Res,
        _$_ExchangeMarketResponse>
    implements _$$_ExchangeMarketResponseCopyWith<$Res> {
  __$$_ExchangeMarketResponseCopyWithImpl(_$_ExchangeMarketResponse _value,
      $Res Function(_$_ExchangeMarketResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ExchangeMarketResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ExchangeMarket>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangeMarketResponse implements _ExchangeMarketResponse {
  _$_ExchangeMarketResponse({required final List<ExchangeMarket> data})
      : _data = data;

  factory _$_ExchangeMarketResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeMarketResponseFromJson(json);

  final List<ExchangeMarket> _data;
  @override
  List<ExchangeMarket> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ExchangeMarketResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeMarketResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeMarketResponseCopyWith<_$_ExchangeMarketResponse> get copyWith =>
      __$$_ExchangeMarketResponseCopyWithImpl<_$_ExchangeMarketResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeMarketResponseToJson(
      this,
    );
  }
}

abstract class _ExchangeMarketResponse implements ExchangeMarketResponse {
  factory _ExchangeMarketResponse({required final List<ExchangeMarket> data}) =
      _$_ExchangeMarketResponse;

  factory _ExchangeMarketResponse.fromJson(Map<String, dynamic> json) =
      _$_ExchangeMarketResponse.fromJson;

  @override
  List<ExchangeMarket> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeMarketResponseCopyWith<_$_ExchangeMarketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
