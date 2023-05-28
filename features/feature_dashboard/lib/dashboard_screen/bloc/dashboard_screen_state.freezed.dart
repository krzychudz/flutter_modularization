// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardScreenState _$DashboardScreenStateFromJson(Map<String, dynamic> json) {
  return _DashboardScreenState.fromJson(json);
}

/// @nodoc
mixin _$DashboardScreenState {
  List<Currency>? get currencies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardScreenStateCopyWith<DashboardScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardScreenStateCopyWith<$Res> {
  factory $DashboardScreenStateCopyWith(DashboardScreenState value,
          $Res Function(DashboardScreenState) then) =
      _$DashboardScreenStateCopyWithImpl<$Res, DashboardScreenState>;
  @useResult
  $Res call({List<Currency>? currencies});
}

/// @nodoc
class _$DashboardScreenStateCopyWithImpl<$Res,
        $Val extends DashboardScreenState>
    implements $DashboardScreenStateCopyWith<$Res> {
  _$DashboardScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = freezed,
  }) {
    return _then(_value.copyWith(
      currencies: freezed == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardScreenStateCopyWith<$Res>
    implements $DashboardScreenStateCopyWith<$Res> {
  factory _$$_DashboardScreenStateCopyWith(_$_DashboardScreenState value,
          $Res Function(_$_DashboardScreenState) then) =
      __$$_DashboardScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Currency>? currencies});
}

/// @nodoc
class __$$_DashboardScreenStateCopyWithImpl<$Res>
    extends _$DashboardScreenStateCopyWithImpl<$Res, _$_DashboardScreenState>
    implements _$$_DashboardScreenStateCopyWith<$Res> {
  __$$_DashboardScreenStateCopyWithImpl(_$_DashboardScreenState _value,
      $Res Function(_$_DashboardScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = freezed,
  }) {
    return _then(_$_DashboardScreenState(
      currencies: freezed == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DashboardScreenState implements _DashboardScreenState {
  _$_DashboardScreenState({final List<Currency>? currencies})
      : _currencies = currencies;

  factory _$_DashboardScreenState.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardScreenStateFromJson(json);

  final List<Currency>? _currencies;
  @override
  List<Currency>? get currencies {
    final value = _currencies;
    if (value == null) return null;
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DashboardScreenState(currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardScreenState &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardScreenStateCopyWith<_$_DashboardScreenState> get copyWith =>
      __$$_DashboardScreenStateCopyWithImpl<_$_DashboardScreenState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardScreenStateToJson(
      this,
    );
  }
}

abstract class _DashboardScreenState implements DashboardScreenState {
  factory _DashboardScreenState({final List<Currency>? currencies}) =
      _$_DashboardScreenState;

  factory _DashboardScreenState.fromJson(Map<String, dynamic> json) =
      _$_DashboardScreenState.fromJson;

  @override
  List<Currency>? get currencies;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardScreenStateCopyWith<_$_DashboardScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
