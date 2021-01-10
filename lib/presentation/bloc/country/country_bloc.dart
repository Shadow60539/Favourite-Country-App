import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_app/core/model/country.dart';
import 'package:music_app/data/track_data.dart';

part 'country_event.dart';
part 'country_state.dart';
part 'country_bloc.freezed.dart';

@injectable
class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc() : super(const CountryState.initial());

  @override
  Stream<CountryState> mapEventToState(
    CountryEvent event,
  ) async* {
    yield* event.map(fetchAllCountries: (e) async* {
      yield const CountryState.loading();
      final Either<String, List<Country>> _stringOrCountries =
          await TrackData.getAllContries();

      yield _stringOrCountries.fold((l) {
        return const CountryState.error();
      }, (country) {
        return CountryState.allCountries(countries: country);
      });
    });
  }
}
