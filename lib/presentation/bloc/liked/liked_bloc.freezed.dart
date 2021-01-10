// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'liked_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LikedEventTearOff {
  const _$LikedEventTearOff();

// ignore: unused_element
  _LikeCountryEvent likeCountry(
      {String countryCode, String countryName, String region}) {
    return _LikeCountryEvent(
      countryCode: countryCode,
      countryName: countryName,
      region: region,
    );
  }

// ignore: unused_element
  _AllLikeCountriesEvent fetchAllLikedCountries() {
    return const _AllLikeCountriesEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $LikedEvent = _$LikedEventTearOff();

/// @nodoc
mixin _$LikedEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result likeCountry(
            String countryCode, String countryName, String region),
    @required Result fetchAllLikedCountries(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result likeCountry(String countryCode, String countryName, String region),
    Result fetchAllLikedCountries(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result likeCountry(_LikeCountryEvent value),
    @required Result fetchAllLikedCountries(_AllLikeCountriesEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result likeCountry(_LikeCountryEvent value),
    Result fetchAllLikedCountries(_AllLikeCountriesEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LikedEventCopyWith<$Res> {
  factory $LikedEventCopyWith(
          LikedEvent value, $Res Function(LikedEvent) then) =
      _$LikedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikedEventCopyWithImpl<$Res> implements $LikedEventCopyWith<$Res> {
  _$LikedEventCopyWithImpl(this._value, this._then);

  final LikedEvent _value;
  // ignore: unused_field
  final $Res Function(LikedEvent) _then;
}

/// @nodoc
abstract class _$LikeCountryEventCopyWith<$Res> {
  factory _$LikeCountryEventCopyWith(
          _LikeCountryEvent value, $Res Function(_LikeCountryEvent) then) =
      __$LikeCountryEventCopyWithImpl<$Res>;
  $Res call({String countryCode, String countryName, String region});
}

/// @nodoc
class __$LikeCountryEventCopyWithImpl<$Res>
    extends _$LikedEventCopyWithImpl<$Res>
    implements _$LikeCountryEventCopyWith<$Res> {
  __$LikeCountryEventCopyWithImpl(
      _LikeCountryEvent _value, $Res Function(_LikeCountryEvent) _then)
      : super(_value, (v) => _then(v as _LikeCountryEvent));

  @override
  _LikeCountryEvent get _value => super._value as _LikeCountryEvent;

  @override
  $Res call({
    Object countryCode = freezed,
    Object countryName = freezed,
    Object region = freezed,
  }) {
    return _then(_LikeCountryEvent(
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      countryName:
          countryName == freezed ? _value.countryName : countryName as String,
      region: region == freezed ? _value.region : region as String,
    ));
  }
}

/// @nodoc
class _$_LikeCountryEvent implements _LikeCountryEvent {
  const _$_LikeCountryEvent({this.countryCode, this.countryName, this.region});

  @override
  final String countryCode;
  @override
  final String countryName;
  @override
  final String region;

  @override
  String toString() {
    return 'LikedEvent.likeCountry(countryCode: $countryCode, countryName: $countryName, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikeCountryEvent &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(region);

  @override
  _$LikeCountryEventCopyWith<_LikeCountryEvent> get copyWith =>
      __$LikeCountryEventCopyWithImpl<_LikeCountryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result likeCountry(
            String countryCode, String countryName, String region),
    @required Result fetchAllLikedCountries(),
  }) {
    assert(likeCountry != null);
    assert(fetchAllLikedCountries != null);
    return likeCountry(countryCode, countryName, region);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result likeCountry(String countryCode, String countryName, String region),
    Result fetchAllLikedCountries(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeCountry != null) {
      return likeCountry(countryCode, countryName, region);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result likeCountry(_LikeCountryEvent value),
    @required Result fetchAllLikedCountries(_AllLikeCountriesEvent value),
  }) {
    assert(likeCountry != null);
    assert(fetchAllLikedCountries != null);
    return likeCountry(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result likeCountry(_LikeCountryEvent value),
    Result fetchAllLikedCountries(_AllLikeCountriesEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeCountry != null) {
      return likeCountry(this);
    }
    return orElse();
  }
}

abstract class _LikeCountryEvent implements LikedEvent {
  const factory _LikeCountryEvent(
      {String countryCode,
      String countryName,
      String region}) = _$_LikeCountryEvent;

  String get countryCode;
  String get countryName;
  String get region;
  _$LikeCountryEventCopyWith<_LikeCountryEvent> get copyWith;
}

/// @nodoc
abstract class _$AllLikeCountriesEventCopyWith<$Res> {
  factory _$AllLikeCountriesEventCopyWith(_AllLikeCountriesEvent value,
          $Res Function(_AllLikeCountriesEvent) then) =
      __$AllLikeCountriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$AllLikeCountriesEventCopyWithImpl<$Res>
    extends _$LikedEventCopyWithImpl<$Res>
    implements _$AllLikeCountriesEventCopyWith<$Res> {
  __$AllLikeCountriesEventCopyWithImpl(_AllLikeCountriesEvent _value,
      $Res Function(_AllLikeCountriesEvent) _then)
      : super(_value, (v) => _then(v as _AllLikeCountriesEvent));

  @override
  _AllLikeCountriesEvent get _value => super._value as _AllLikeCountriesEvent;
}

/// @nodoc
class _$_AllLikeCountriesEvent implements _AllLikeCountriesEvent {
  const _$_AllLikeCountriesEvent();

  @override
  String toString() {
    return 'LikedEvent.fetchAllLikedCountries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AllLikeCountriesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result likeCountry(
            String countryCode, String countryName, String region),
    @required Result fetchAllLikedCountries(),
  }) {
    assert(likeCountry != null);
    assert(fetchAllLikedCountries != null);
    return fetchAllLikedCountries();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result likeCountry(String countryCode, String countryName, String region),
    Result fetchAllLikedCountries(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllLikedCountries != null) {
      return fetchAllLikedCountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result likeCountry(_LikeCountryEvent value),
    @required Result fetchAllLikedCountries(_AllLikeCountriesEvent value),
  }) {
    assert(likeCountry != null);
    assert(fetchAllLikedCountries != null);
    return fetchAllLikedCountries(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result likeCountry(_LikeCountryEvent value),
    Result fetchAllLikedCountries(_AllLikeCountriesEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllLikedCountries != null) {
      return fetchAllLikedCountries(this);
    }
    return orElse();
  }
}

abstract class _AllLikeCountriesEvent implements LikedEvent {
  const factory _AllLikeCountriesEvent() = _$_AllLikeCountriesEvent;
}

/// @nodoc
class _$LikedStateTearOff {
  const _$LikedStateTearOff();

// ignore: unused_element
  _InitialState initial() {
    return const _InitialState();
  }

// ignore: unused_element
  _LoadingState loading() {
    return const _LoadingState();
  }
}

/// @nodoc
// ignore: unused_element
const $LikedState = _$LikedStateTearOff();

/// @nodoc
mixin _$LikedState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LikedStateCopyWith<$Res> {
  factory $LikedStateCopyWith(
          LikedState value, $Res Function(LikedState) then) =
      _$LikedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikedStateCopyWithImpl<$Res> implements $LikedStateCopyWith<$Res> {
  _$LikedStateCopyWithImpl(this._value, this._then);

  final LikedState _value;
  // ignore: unused_field
  final $Res Function(LikedState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res> extends _$LikedStateCopyWithImpl<$Res>
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
    return 'LikedState.initial()';
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
  }) {
    assert(initial != null);
    assert(loading != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
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
  }) {
    assert(initial != null);
    assert(loading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements LikedState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$LoadingStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(
          _LoadingState value, $Res Function(_LoadingState) then) =
      __$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingStateCopyWithImpl<$Res> extends _$LikedStateCopyWithImpl<$Res>
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
    return 'LikedState.loading()';
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
  }) {
    assert(initial != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
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
  }) {
    assert(initial != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements LikedState {
  const factory _LoadingState() = _$_LoadingState;
}
