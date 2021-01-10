part of 'liked_bloc.dart';

@freezed
abstract class LikedEvent with _$LikedEvent {
  const factory LikedEvent.likeCountry({
    String countryCode,
    String countryName,
    String region,
  }) = _LikeCountryEvent;

  const factory LikedEvent.fetchAllLikedCountries() = _AllLikeCountriesEvent;
}
