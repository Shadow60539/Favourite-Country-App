import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:music_app/core/model/country.dart';
import 'package:music_app/data/apis.dart';

class TrackData {
  static Future<Either<String, List<Country>>> getAllContries() async {
    final List<Country> _countries = <Country>[];
    final Response response = await get(kAllCountriesApi);
    if (jsonDecode(response.body)["status-code"] == 200) {
      final data = jsonDecode(response.body)["data"] as Map<String, dynamic>;
      data.forEach((k, v) {
        _countries.add(Country(
            countryCode: k,
            countryName: v['country'] as String,
            region: v['region'] as String));
      });

      return right(_countries);
    } else {
      return left('Error');
    }
  }
}
