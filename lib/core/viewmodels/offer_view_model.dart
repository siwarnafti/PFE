import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/core/fake_data/offers.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/offer.dart';

class OfferViewModel extends ChangeNotifier {
  final Map<String, List<Offer>> _favoriteOffers = {};
  List<Offer> _dummyOffers = fakeOffers;

  Map<String, List<Offer>> get favoriteOffers => _favoriteOffers;

  List<Offer> get dummyOffers => _dummyOffers;

  set dummyOffers(List<Offer> value) {
    _dummyOffers = value;
    notifyListeners();
  }

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
      for (var offer in dummyOffers) {
        offer.isFavorite = _favoriteOffers.values.any((list) => list.any((o) => o.id == offer.id));
      }
      notifyListeners();
    }
  }

  void loadDummyOffers() {
    dummyOffers = fakeOffers;
    for (var offer in dummyOffers) {
      offer.isFavorite = _favoriteOffers.values.any((list) => list.any((o) => o.id == offer.id));
    }
    notifyListeners();
  }

  void loadAllOffers() {
    loadFavoriteOffers();
    loadDummyOffers();
  }

  void clearAllOffers() {
    clearFavoriteOffers();
    loadDummyOffers();
  }

  void deleteOffer(Offer offer) {
    dummyOffers.removeWhere((element) => element.id == offer.id);
    notifyListeners();
  }

  void addOffer(Offer offer) {
    dummyOffers.add(offer);
    notifyListeners();
  }

  void updateOffer(Offer offer) {
    int index = dummyOffers.indexWhere((element) => element.id == offer.id);
    if (index != -1) {
      dummyOffers[index] = offer;
      notifyListeners();
    }
  }

  void orderOfferBySalary() {
    dummyOffers.sort((a, b) => a.salary.compareTo(b.salary));
    notifyListeners();
  }
}
