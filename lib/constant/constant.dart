import 'package:flutter/material.dart';

export 'colors.dart';
export 'dimensions.dart';

const String defaultCurrency = "NOK";
const String defaultLanguage = "en";

const int loginDeviceFlutterAndroid = 3;
const int loginDeviceFlutterIos = 4;
const int maxItems = 10;

//Chat with users...
const int chatWithTypeUser = 0;
const int chatWithTypeStore = 1;
const int chatWithTypeDriver = 2;

//Add-On Typs
const int typeToppingOption = 0;
const int typeSizeColor = 1;

//Dynamic Modules
const bool showWalletTransferModule = true;
const bool showSurgeChargeModule = true;
const bool showChildSeatModule = true;
const bool showHandicapModule = true;
const bool showRideForOther = true;
const bool isDemoApp = false;
const bool showInviteFriends = true;
const bool showChatWithAdmin = true;
const bool showEmergencyNumber = true;
const bool isMultiOrderDelivery = true;

late double deviceWidth;
late double deviceHeight;
late double deviceAverageSize;
late double textScaleFactorOf;

//LOGIN TYPE
const loginTypeFacebook = "facebook";
const loginTypeGoogle = "google";
const loginTypeEmail = "email";
const loginTypeApple = "apple";

//PAGINATION
const int perPageRecord = 10;

//ADDRESS TYPE
const home = "home";
const work = "work";
const other = "other";

//PAYMENT TYPE
const paymentTypeCash = 1;
const paymentTypeCard = 2;
const paymentTypeWallet = 3;
const showCashPayment = true;
const showCardPayment = true;
const showWalletPayment = true;

//SELECT PAYMENT METHOD
const deliveries = "deliveries";
const rides = "rides";
const courier = "courier";
const wallet = "wallet";

const List<int> deliveryServiceCatIdList = [5, 6, 7, 8, 9, 10];

//TAKE AWAY
const delivery = 1;
const pickup = 2;

const filterTypeAll = 0;
const filterTypeToday = 1;
const filterTypeLast7Days = 2;
const filterTypeThisMonth = 3;
const filterTypeYear = 4;
const filterTypeUpcoming = 5;
const filterTypeRunning = 6;

BuildContext? scContext;
String firebaseProjectId = "";
