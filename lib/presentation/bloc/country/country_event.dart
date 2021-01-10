part of 'country_bloc.dart';

@freezed
abstract class CountryEvent with _$CountryEvent {
  const factory CountryEvent.fetchAllCountries() = _FetchAllCountriesEvent;
}


