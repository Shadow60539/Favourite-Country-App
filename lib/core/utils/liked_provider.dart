import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:music_app/core/model/country.dart';

@lazySingleton
class LikedProvider extends ChangeNotifier {
  List<Country> _likedTracksList = [];
  List<Country> get likedTracksList => _likedTracksList;

  void updateLikedTracksList({List<Country> newCountryList}) {
    _likedTracksList = newCountryList;
    notifyListeners();
  }

  void addLikedTracksList({Country country}) {
    _likedTracksList.add(country);
    notifyListeners();
  }

  void removeLikedTracksList({Country country}) {
    _likedTracksList
        .removeWhere((element) => element.countryCode == country.countryCode);
    notifyListeners();
  }
}
