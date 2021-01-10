part of 'country_bloc.dart';

@freezed
abstract class CountryState with _$CountryState {
  const factory CountryState.initial() = _InitialState;
  const factory CountryState.loading() = _LoadingState;
  const factory CountryState.error() = _ErrorState;
  const factory CountryState.allCountries({List<Country> countries}) = _AllCountriesState;
}
