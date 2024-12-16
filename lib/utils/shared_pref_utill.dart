import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant/constant.dart';
import '../main.dart';

const String prefSelectedLanguageCode = "SelectedLanguageCode";
const String prefSelectedCurrency = "SelectedCurrency";
const String prefAccessToken = "AccessToken";
const String prefUserId = "UserId";
const String prefCountryCode = "countryCode";
const String prefUserName = "userName";
const String prefEmail = "email";
const String prefPassword = "password";
const String prefLoginType = "loginType";
const String prefProfileImage = "profileImage";
const String prefContactNumber = "contactNumber";
const String prefEmergencyContact = "emergencyContact";
const String prefReferralCode = "referralCode";
const String prefHareCredit = "credit";
const String prefUserVerified = "userVerified";
const String prefDeviceToken = "deviceToken";
const String prefDemoDialogOpen = "demoDialogOpen";
const String prefSelectedServiceCateId = "selectedServiceCateId";
const String prefHandicap = "handicap";
const String prefChildSeat = "childSeat";
const String prefProductId = "productId";
const String prefDriverGender = "driverGender";
const String prefServerTimeZone = "serverTimeZone";
const String prefSelectedStoreFullResponse = "dsKeySelectedStoreFullRes";
const String prefNewDeliveryAddress = "keyNewDeliveryAddress";
const String prefNewDeliveryAddressId = "keyNewDeliveryAddressId";
const String prefSelectedServiceCateName = "selectedServiceCateName";
const String prefSelectedServiceCateIcon = "selectedServiceCateIcon";
const String prefIsShownOnBoarding = "isShownOnBoarding";
const String prefOldOrderStatus = "oldStatus";
const String prefOldWayPointOrderStatus = "oldWaypointStatus";
const String prefServiceAccountAccessToken = "serviceAccountAccessToken";
const String prefOTPerror = "prefOTPerror";
const String prefSelectedLatLng = "selectedLatLng";

late SharedPreferences _prefs;

Future<SharedPreferences> initSharedPreferences() async {
  _prefs = await SharedPreferences.getInstance();
  return _prefs;
}

String prefGetString(String key) {
  return _prefs.getString(key) ?? "";
}

bool prefGetBool(String key) {
  return _prefs.getBool(key) ?? false;
}

String prefGetStringWithDefaultValue(String key, String defaultValue) {
  return _prefs.getString(key) ?? defaultValue;
}

int prefGetInt(String key) {
  return _prefs.getInt(key) ?? 0;
}

prefSetBool(String key, bool value) async {
  _prefs.setBool(key, value);
}

prefSetString(String key, String value) async {
  _prefs.setString(key, value);
}

prefSetInt(String key, int value) async {
  _prefs.setInt(key, value);
}

//deletes..
Future<bool> prefRemove(String key) async => await _prefs.remove(key);

Future<bool> prefClear() async => await _prefs.clear();
