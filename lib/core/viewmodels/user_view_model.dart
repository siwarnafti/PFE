import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserViewModel extends ChangeNotifier {
  final String emailRegEx =
      r'^(?!.*[&])(([^+<>()[\]\\.,;:\s@\"]+(\.[^+<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  final RegExp passwordPattern = RegExp(r'^(?=.*[A-Z])(?=.*[a-z]).{8,}$');

  late SharedPreferences _prefs;
  bool _isSignedUp = false;

  String? _firstName;
  String? _lastName;
  String? _email;
  String? _password;

  init() {
    _loadFromPrefs();
  }

  bool get isSignedUp => _isSignedUp;

  String? get firstName => _firstName;

  String? get lastName => _lastName;

  String? get email => _email;

  Future<void> _loadFromPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    _isSignedUp = _prefs.getBool('isSignedUp') ?? false;
    _firstName = _prefs.getString('firstName');
    _lastName = _prefs.getString('lastName');
    _email = _prefs.getString('email');
    _password = _prefs.getString('password');
    notifyListeners();
    return;
  }

  Future<void> signUp(String firstName, String lastName, String email, String password) async {
    if (!RegExp(emailRegEx).hasMatch(email)) {
      throw const FormatException('Invalid email format. Please enter a valid email address.');
    }

    if (!passwordPattern.hasMatch(password)) {
      throw const FormatException(
          'Invalid password format. Password must contain at least 8 characters with at least one uppercase letter.');
    }
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _password = password;
    _isSignedUp = true;

    await _prefs.setBool('isSignedUp', true);
    await _prefs.setString('firstName', firstName);
    await _prefs.setString('lastName', lastName);
    await _prefs.setString('email', email);
    await _prefs.setString('password', password);

    notifyListeners();
  }

  Future<bool> signIn(String email, String password) async {
    if (_email == email && _password == password) {
      _isSignedUp = true;
      await _prefs.setBool('isSignedUp', true);
      notifyListeners();
      return true;
    } else {
      return false;
    }
  }

  Future<void> signOut() async {
    _isSignedUp = false;
    await _prefs.setBool('isSignedUp', false);
    notifyListeners();
  }

  Future<void> updateUserData({String? firstName, String? lastName, String? email, String? password}) async {
    if (firstName != null) {
      _firstName = firstName;
      await _prefs.setString('firstName', firstName);
    }
    if (lastName != null) {
      _lastName = lastName;
      await _prefs.setString('lastName', lastName);
    }
    if (email != null && RegExp(emailRegEx).hasMatch(email)) {
      _email = email;
      await _prefs.setString('email', email);
    }
    if (password != null && passwordPattern.hasMatch(password)) {
      _password = password;
      await _prefs.setString('password', password);
    }
    notifyListeners();
  }
}
