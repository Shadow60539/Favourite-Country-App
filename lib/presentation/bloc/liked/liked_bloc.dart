import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_app/core/model/country.dart';
import 'package:music_app/core/strings.dart';
import 'package:music_app/core/utils/liked_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'liked_event.dart';
part 'liked_state.dart';
part 'liked_bloc.freezed.dart';

@injectable
class LikedBloc extends Bloc<LikedEvent, LikedState> {
  LikedBloc(this.likedProvider) : super(const LikedState.initial());
  final LikedProvider likedProvider;

  @override
  Stream<LikedState> mapEventToState(
    LikedEvent event,
  ) async* {
    yield* event.map(
      fetchAllLikedCountries: (e) async* {
        final List<Country> _likedList = [];
        final SharedPreferences pref = await SharedPreferences.getInstance();
        final List<String> _likedSongsIds =
            pref.getStringList(kLikedTracksIds) ?? [];
        final List<String> _likedSongsNames =
            pref.getStringList(kLikedTracksName) ?? [];
        final List<String> _likedSongsArtists =
            pref.getStringList(kLikedTracksArtist) ?? [];

        if (_likedSongsIds.isNotEmpty) {
          for (int i = 0; i < _likedSongsIds.length; i++) {
            _likedList.add(
              Country(
                countryName: _likedSongsNames[i],
                region: _likedSongsArtists[i],
                countryCode: _likedSongsIds[i],
              ),
            );
          }
        }
        likedProvider.updateLikedTracksList(newCountryList: _likedList);
      },
      likeCountry: (e) async* {
        SharedPreferences.getInstance().then((pref) {
          final List<String> _likedSongsIds =
              pref.getStringList(kLikedTracksIds) ?? [];
          final List<String> _likedSongsNames =
              pref.getStringList(kLikedTracksName) ?? [];
          final List<String> _likedSongsArtists =
              pref.getStringList(kLikedTracksArtist) ?? [];

          if (_likedSongsNames.contains(e.countryName)) {
            _likedSongsIds.remove(e.countryCode.toString());
            _likedSongsNames.remove(e.countryName);
            _likedSongsArtists.remove(e.region);
            likedProvider.removeLikedTracksList(
              country: Country(
                countryName: e.countryName,
                region: e.region,
                countryCode: e.countryCode,
              ),
            );
          } else {
            _likedSongsIds.add(e.countryCode.toString());
            _likedSongsNames.add(e.countryName);
            _likedSongsArtists.add(e.region);
            likedProvider.addLikedTracksList(
              country: Country(
                countryName: e.countryName,
                region: e.region,
                countryCode: e.countryCode,
              ),
            );
          }

          pref.setStringList(kLikedTracksIds, _likedSongsIds);
          pref.setStringList(kLikedTracksName, _likedSongsNames);
          pref.setStringList(kLikedTracksArtist, _likedSongsArtists);
        });
      },
    );
  }
}
