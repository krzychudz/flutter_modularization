// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_currencies_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllCurrenciesResponse _$AllCurrenciesResponseFromJson(
    Map<String, dynamic> json) {
  return _AllCurrenciesResponse.fromJson(json);
}

/// @nodoc
mixin _$AllCurrenciesResponse {
  List<Currency> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllCurrenciesResponseCopyWith<AllCurrenciesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllCurrenciesResponseCopyWith<$Res> {
  factory $AllCurrenciesResponseCopyWith(AllCurrenciesResponse value,
          $Res Function(AllCurrenciesResponse) then) =
      _$AllCurrenciesResponseCopyWithImpl<$Res, AllCurrenciesResponse>;
  @useResult
  $Res call({List<Currency> data});
}

/// @nodoc
class _$AllCurrenciesResponseCopyWithImpl<$Res,
        $Val extends AllCurrenciesResponse>
    implements $AllCurrenciesResponseCopyWith<$Res> {
  _$AllCurrenciesResponseCopyWithImpl(this._value, this._then);

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
              as List<Currency>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllCurrenciesResponseCopyWith<$Res>
    implements $AllCurrenciesResponseCopyWith<$Res> {
  factory _$$_AllCurrenciesResponseCopyWith(_$_AllCurrenciesResponse value,
          $Res Function(_$_AllCurrenciesResponse) then) =
      __$$_AllCurrenciesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Currency> data});
}

/// @nodoc
class __$$_AllCurrenciesResponseCopyWithImpl<$Res>
    extends _$AllCurrenciesResponseCopyWithImpl<$Res, _$_AllCurrenciesResponse>
    implements _$$_AllCurrenciesResponseCopyWith<$Res> {
  __$$_AllCurrenciesResponseCopyWithImpl(_$_AllCurrenciesResponse _value,
      $Res Function(_$_AllCurrenciesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AllCurrenciesResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllCurrenciesResponse implements _AllCurrenciesResponse {
  _$_AllCurrenciesResponse({required final List<Currency> data}) : _data = data;

  factory _$_AllCurrenciesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AllCurrenciesResponseFromJson(json);

  final List<Currency> _data;
  @override
  List<Currency> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AllCurrenciesResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllCurrenciesResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllCurrenciesResponseCopyWith<_$_AllCurrenciesResponse> get copyWith =>
      __$$_AllCurrenciesResponseCopyWithImpl<_$_AllCurrenciesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllCurrenciesResponseToJson(
      this,
    );
  }
}

abstract class _AllCurrenciesResponse implements AllCurrenciesResponse {
  factory _AllCurrenciesResponse({required final List<Currency> data}) =
      _$_AllCurrenciesResponse;

  factory _AllCurrenciesResponse.fromJson(Map<String, dynamic> json) =
      _$_AllCurrenciesResponse.fromJson;

  @override
  List<Currency> get data;
  @override
  @JsonKey(ignore: true)
  _$$_AllCurrenciesResponseCopyWith<_$_AllCurrenciesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
