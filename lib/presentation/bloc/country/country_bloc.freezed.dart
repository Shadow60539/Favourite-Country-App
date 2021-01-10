// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'country_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CountryEventTearOff {
  const _$CountryEventTearOff();

// ignore: unused_element
  _FetchAllCountriesEvent fetchAllCountries() {
    return const _FetchAllCountriesEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $CountryEvent = _$CountryEventTearOff();

/// @nodoc
mixin _$CountryEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchAllCountries(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchAllCountries(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchAllCountries(_FetchAllCountriesEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchAllCountries(_FetchAllCountriesEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CountryEventCopyWith<$Res> {
  factory $CountryEventCopyWith(
          CountryEvent value, $Res Function(CountryEvent) then) =
      _$CountryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountryEventCopyWithImpl<$Res> implements $CountryEventCopyWith<$Res> {
  _$CountryEventCopyWithImpl(this._value, this._then);

  final CountryEvent _value;
  // ignore: unused_field
  final $Res Function(CountryEvent) _then;
}

/// @nodoc
abstract class _$FetchAllCountriesEventCopyWith<$Res> {
  factory _$FetchAllCountriesEventCopyWith(_FetchAllCountriesEvent value,
          $Res Function(_FetchAllCountriesEvent) then) =
      __$FetchAllCountriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchAllCountriesEventCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res>
    implements _$FetchAllCountriesEventCopyWith<$Res> {
  __$FetchAllCountriesEventCopyWithImpl(_FetchAllCountriesEvent _value,
      $Res Function(_FetchAllCountriesEvent) _then)
      : super(_value, (v) => _then(v as _FetchAllCountriesEvent));

  @override
  _FetchAllCountriesEvent get _value => super._value as _FetchAllCountriesEvent;
}

/// @nodoc
class _$_FetchAllCountriesEvent implements _FetchAllCountriesEvent {
  const _$_FetchAllCountriesEvent();

  @override
  String toString() {
    return 'CountryEvent.fetchAllCountries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchAllCountriesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchAllCountries(),
  }) {
    assert(fetchAllCountries != null);
    return fetchAllCountries();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchAllCountries(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllCountries != null) {
      return fetchAllCountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchAllCountries(_FetchAllCountriesEvent value),
  }) {
    assert(fetchAllCountries != null);
    return fetchAllCountries(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchAllCountries(_FetchAllCountriesEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllCountries != null) {
      return fetchAllCountries(this);
    }
    return orElse();
  }
}

abstract class _FetchAllCountriesEvent implements CountryEvent {
  const factory _FetchAllCountriesEvent() = _$_FetchAllCountriesEvent;
}

/// @nodoc
class _$CountryStateTearOff {
  const _$CountryStateTearOff();

// ignore: unused_element
  _InitialState initial() {
    return const _InitialState();
  }

// ignore: unused_element
  _LoadingState loading() {
    return const _LoadingState();
  }

// ignore: unused_element
  _ErrorState error() {
    return const _ErrorState();
  }

// ignore: unused_element
  _AllCountriesState allCountries({List<Country> countries}) {
    return _AllCountriesState(
      countries: countries,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CountryState = _$CountryStateTearOff();

/// @nodoc
mixin _$CountryState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result allCountries(List<Country> countries),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result allCountries(List<Country> countries),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result allCountries(_AllCountriesState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result allCountries(_AllCountriesState value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res> implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  final CountryState _value;
  // ignore: unused_field
  final $Res Function(CountryState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res> extends _$CountryStateCopyWithImpl<$Res>
    implements _$InitialStateCopyWith<$Res> {
  __$InitialStateCopyWithImpl(
      _InitialState _value, $Res Function(_InitialState) _then)
      : super(_value, (v) => _then(v as _InitialState));

  @override
  _InitialState get _value => super._value as _InitialState;
}

/// @nodoc
class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'CountryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result allCountries(List<Country> countries),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(allCountries != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result allCountries(List<Country> countries),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result allCountries(_AllCountriesState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(allCountries != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result allCountries(_AllCountriesState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements CountryState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$LoadingStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(
          _LoadingState value, $Res Function(_LoadingState) then) =
      __$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingStateCopyWithImpl<$Res> extends _$CountryStateCopyWithImpl<$Res>
    implements _$LoadingStateCopyWith<$Res> {
  __$LoadingStateCopyWithImpl(
      _LoadingState _value, $Res Function(_LoadingState) _then)
      : super(_value, (v) => _then(v as _LoadingState));

  @override
  _LoadingState get _value => super._value as _LoadingState;
}

/// @nodoc
class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'CountryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result allCountries(List<Country> countries),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(allCountries != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result allCountries(List<Country> countries),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result allCountries(_AllCountriesState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(allCountries != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result allCountries(_AllCountriesState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements CountryState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$ErrorStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) then) =
      __$ErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res> extends _$CountryStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(
      _ErrorState _value, $Res Function(_ErrorState) _then)
      : super(_value, (v) => _then(v as _ErrorState));

  @override
  _ErrorState get _value => super._value as _ErrorState;
}

/// @nodoc
class _$_ErrorState implements _ErrorState {
  const _$_ErrorState();

  @override
  String toString() {
    return 'CountryState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result allCountries(List<Country> countries),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(allCountries != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result allCountries(List<Country> countries),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result allCountries(_AllCountriesState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(allCountries != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result allCountries(_AllCountriesState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements CountryState {
  const factory _ErrorState() = _$_ErrorState;
}

/// @nodoc
abstract class _$AllCountriesStateCopyWith<$Res> {
  factory _$AllCountriesStateCopyWith(
          _AllCountriesState value, $Res Function(_AllCountriesState) then) =
      __$AllCountriesStateCopyWithImpl<$Res>;
  $Res call({List<Country> countries});
}

/// @nodoc
class __$AllCountriesStateCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res>
    implements _$AllCountriesStateCopyWith<$Res> {
  __$AllCountriesStateCopyWithImpl(
      _AllCountriesState _value, $Res Function(_AllCountriesState) _then)
      : super(_value, (v) => _then(v as _AllCountriesState));

  @override
  _AllCountriesState get _value => super._value as _AllCountriesState;

  @override
  $Res call({
    Object countries = freezed,
  }) {
    return _then(_AllCountriesState(
      countries:
          countries == freezed ? _value.countries : countries as List<Country>,
    ));
  }
}

/// @nodoc
class _$_AllCountriesState implements _AllCountriesState {
  const _$_AllCountriesState({this.countries});

  @override
  final List<Country> countries;

  @override
  String toString() {
    return 'CountryState.allCountries(countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllCountriesState &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countries);

  @override
  _$AllCountriesStateCopyWith<_AllCountriesState> get copyWith =>
      __$AllCountriesStateCopyWithImpl<_AllCountriesState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result allCountries(List<Country> countries),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(allCountries != null);
    return allCountries(countries);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result allCountries(List<Country> countries),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allCountries != null) {
      return allCountries(countries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result allCountries(_AllCountriesState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(allCountries != null);
    return allCountries(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result allCountries(_AllCountriesState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allCountries != null) {
      return allCountries(this);
    }
    return orElse();
  }
}

abstract class _AllCountriesState implements CountryState {
  const factory _AllCountriesState({List<Country> countries}) =
      _$_AllCountriesState;

  List<Country> get countries;
  _$AllCountriesStateCopyWith<_AllCountriesState> get copyWith;
}
