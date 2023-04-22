// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_details_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyDetailsScreenState _$CurrencyDetailsScreenStateFromJson(
    Map<String, dynamic> json) {
  return _CurrencyDetailsScreenState.fromJson(json);
}

/// @nodoc
mixin _$CurrencyDetailsScreenState {
  Currency? get currencyDetails => throw _privateConstructorUsedError;
  List<PriceHistory>? get priceHistory => throw _privateConstructorUsedError;
  List<ExchangeMarket>? get exchangeMarkets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyDetailsScreenStateCopyWith<CurrencyDetailsScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyDetailsScreenStateCopyWith<$Res> {
  factory $CurrencyDetailsScreenStateCopyWith(CurrencyDetailsScreenState value,
          $Res Function(CurrencyDetailsScreenState) then) =
      _$CurrencyDetailsScreenStateCopyWithImpl<$Res,
          CurrencyDetailsScreenState>;
  @useResult
  $Res call(
      {Currency? currencyDetails,
      List<PriceHistory>? priceHistory,
      List<ExchangeMarket>? exchangeMarkets});

  $CurrencyCopyWith<$Res>? get currencyDetails;
}

/// @nodoc
class _$CurrencyDetailsScreenStateCopyWithImpl<$Res,
        $Val extends CurrencyDetailsScreenState>
    implements $CurrencyDetailsScreenStateCopyWith<$Res> {
  _$CurrencyDetailsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyDetails = freezed,
    Object? priceHistory = freezed,
    Object? exchangeMarkets = freezed,
  }) {
    return _then(_value.copyWith(
      currencyDetails: freezed == currencyDetails
          ? _value.currencyDetails
          : currencyDetails // ignore: cast_nullable_to_non_nullable
              as Currency?,
      priceHistory: freezed == priceHistory
          ? _value.priceHistory
          : priceHistory // ignore: cast_nullable_to_non_nullable
              as List<PriceHistory>?,
      exchangeMarkets: freezed == exchangeMarkets
          ? _value.exchangeMarkets
          : exchangeMarkets // ignore: cast_nullable_to_non_nullable
              as List<ExchangeMarket>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res>? get currencyDetails {
    if (_value.currencyDetails == null) {
      return null;
    }

    return $CurrencyCopyWith<$Res>(_value.currencyDetails!, (value) {
      return _then(_value.copyWith(currencyDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CurrencyDetailsScreenStateCopyWith<$Res>
    implements $CurrencyDetailsScreenStateCopyWith<$Res> {
  factory _$$_CurrencyDetailsScreenStateCopyWith(
          _$_CurrencyDetailsScreenState value,
          $Res Function(_$_CurrencyDetailsScreenState) then) =
      __$$_CurrencyDetailsScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Currency? currencyDetails,
      List<PriceHistory>? priceHistory,
      List<ExchangeMarket>? exchangeMarkets});

  @override
  $CurrencyCopyWith<$Res>? get currencyDetails;
}

/// @nodoc
class __$$_CurrencyDetailsScreenStateCopyWithImpl<$Res>
    extends _$CurrencyDetailsScreenStateCopyWithImpl<$Res,
        _$_CurrencyDetailsScreenState>
    implements _$$_CurrencyDetailsScreenStateCopyWith<$Res> {
  __$$_CurrencyDetailsScreenStateCopyWithImpl(
      _$_CurrencyDetailsScreenState _value,
      $Res Function(_$_CurrencyDetailsScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyDetails = freezed,
    Object? priceHistory = freezed,
    Object? exchangeMarkets = freezed,
  }) {
    return _then(_$_CurrencyDetailsScreenState(
      currencyDetails: freezed == currencyDetails
          ? _value.currencyDetails
          : currencyDetails // ignore: cast_nullable_to_non_nullable
              as Currency?,
      priceHistory: freezed == priceHistory
          ? _value._priceHistory
          : priceHistory // ignore: cast_nullable_to_non_nullable
              as List<PriceHistory>?,
      exchangeMarkets: freezed == exchangeMarkets
          ? _value._exchangeMarkets
          : exchangeMarkets // ignore: cast_nullable_to_non_nullable
              as List<ExchangeMarket>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyDetailsScreenState implements _CurrencyDetailsScreenState {
  _$_CurrencyDetailsScreenState(
      {this.currencyDetails,
      final List<PriceHistory>? priceHistory,
      final List<ExchangeMarket>? exchangeMarkets})
      : _priceHistory = priceHistory,
        _exchangeMarkets = exchangeMarkets;

  factory _$_CurrencyDetailsScreenState.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyDetailsScreenStateFromJson(json);

  @override
  final Currency? currencyDetails;
  final List<PriceHistory>? _priceHistory;
  @override
  List<PriceHistory>? get priceHistory {
    final value = _priceHistory;
    if (value == null) return null;
    if (_priceHistory is EqualUnmodifiableListView) return _priceHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExchangeMarket>? _exchangeMarkets;
  @override
  List<ExchangeMarket>? get exchangeMarkets {
    final value = _exchangeMarkets;
    if (value == null) return null;
    if (_exchangeMarkets is EqualUnmodifiableListView) return _exchangeMarkets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CurrencyDetailsScreenState(currencyDetails: $currencyDetails, priceHistory: $priceHistory, exchangeMarkets: $exchangeMarkets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyDetailsScreenState &&
            (identical(other.currencyDetails, currencyDetails) ||
                other.currencyDetails == currencyDetails) &&
            const DeepCollectionEquality()
                .equals(other._priceHistory, _priceHistory) &&
            const DeepCollectionEquality()
                .equals(other._exchangeMarkets, _exchangeMarkets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currencyDetails,
      const DeepCollectionEquality().hash(_priceHistory),
      const DeepCollectionEquality().hash(_exchangeMarkets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyDetailsScreenStateCopyWith<_$_CurrencyDetailsScreenState>
      get copyWith => __$$_CurrencyDetailsScreenStateCopyWithImpl<
          _$_CurrencyDetailsScreenState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyDetailsScreenStateToJson(
      this,
    );
  }
}

abstract class _CurrencyDetailsScreenState
    implements CurrencyDetailsScreenState {
  factory _CurrencyDetailsScreenState(
          {final Currency? currencyDetails,
          final List<PriceHistory>? priceHistory,
          final List<ExchangeMarket>? exchangeMarkets}) =
      _$_CurrencyDetailsScreenState;

  factory _CurrencyDetailsScreenState.fromJson(Map<String, dynamic> json) =
      _$_CurrencyDetailsScreenState.fromJson;

  @override
  Currency? get currencyDetails;
  @override
  List<PriceHistory>? get priceHistory;
  @override
  List<ExchangeMarket>? get exchangeMarkets;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyDetailsScreenStateCopyWith<_$_CurrencyDetailsScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
