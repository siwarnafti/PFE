import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/core/fake_data/offers.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/offer.dart';

class FavoriteViewModel extends ChangeNotifier {
  final Map<String, List<Offer>> _favoriteOffers = {};
  final List<Offer> dummyOffers = fakeOffers;

  Map<String, List<Offer>> get favoriteOffers => _favoriteOffers;

  String _getCurrentDateKey() {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(now);
  }

  void addFavoriteOffer(Offer offer) {
    final String dateKey = _getCurrentDateKey();
    dummyOffers.firstWhere((element) => element.id == offer.id).isFavorite = true;
    if (_favoriteOffers.containsKey(dateKey)) {
      _favoriteOffers[dateKey]!.add(offer);
    } else {
      _favoriteOffers[dateKey] = [offer];
    }
    notifyListeners();
    _saveFavoriteOffers();
  }

  void removeFavoriteOffer(Offer offer) {
    bool offerRemoved = false;
    dummyOffers.firstWhere((element) => element.id == offer.id).isFavorite = false;
    for (String dateKey in _favoriteOffers.keys) {
      _favoriteOffers[dateKey]!.removeWhere((existingOffer) => existingOffer.id == offer.id);

      if (_favoriteOffers[dateKey]!.isEmpty) {
        _favoriteOffers.remove(dateKey);
      }

      offerRemoved = true;
      break;
    }

    if (offerRemoved) {
      notifyListeners();
      _saveFavoriteOffers();
    }
  }

  void clearFavoriteOffers() {
    _favoriteOffers.clear();
    notifyListeners();
  }

  void _saveFavoriteOffers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('favoriteOffers', jsonEncode(_favoriteOffers));
  }

  Future<void> loadFavoriteOffers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? favoriteOffersString = prefs.getString('favoriteOffers');
    if (favoriteOffersString != null) {
      Map<String, dynamic> favoriteOffersMap = jsonDecode(favoriteOffersString);
      _favoriteOffers.clear();
      favoriteOffersMap.forEach((key, value) {
        _favoriteOffers[key] = (value as List).map((e) => Offer.fromJson(e)).toList();
      });
      notifyListeners();
    }
  }
}
