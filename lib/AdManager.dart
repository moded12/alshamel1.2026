import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import '/apiConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdManager {
  static getNeumorphicBoxShadowColorLight() {
    return Color(0xFF1e568f);
  }

  static getNeumorphicBoxShadowColorDark() {
    return Color(0xff164069);
  }

  static getNeumorphicBackgroundColor() {
    return Color(0xFF1A4B7C);
  }

  static getTextColor() {
    return Colors.white;
  }

  static String get baseURL {
    if (Platform.isAndroid) {
      return APP_BASE_URL;
    } else if (Platform.isIOS) {
      return APP_BASE_URL;
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get API_KEY {
    if (Platform.isAndroid) {
      return "goog_VSIiBRdoHzMNUiAgJgbUbpyHUlK";
    } else if (Platform.isIOS) {
      return "appl_bawYAQkuWOOYwVDRxyfPQzAcmvA";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String get shareUrl {
    if (Platform.isAndroid) {
      return "https://play.google.com/store/apps/details?id=" + packageName;
    } else if (Platform.isIOS) {
      return "https://apps.apple.com/us/app/%D8%A7%D9%84%D9%85%D8%B9%D9%84%D9%85-%D8%A7%D9%84%D8%A7%D9%84%D9%83%D8%AA%D8%B1%D9%88%D9%86%D9%8A/id" +
          packageName;
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get appName {
    if (Platform.isAndroid) {
      return "المعلم الالكتروني الشامل";
    } else if (Platform.isIOS) {
      return "المعلم الالكتروني الشامل";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get packageName {
    if (Platform.isAndroid) {
      return "com.webview.wew";
    } else if (Platform.isIOS) {
      return "1593733275";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get moreBooksApiUrl {
    if (Platform.isAndroid) {
      return "https://example.com/apps/api/bilali/more_books_api.json";
    } else if (Platform.isIOS) {
      return "https://example.com/apps/api/bilali/more_books_api.json";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get emailId {
    if (Platform.isAndroid) {
      return "mohmdahmad1968@gmail.com";
    } else if (Platform.isIOS) {
      return "mohmdahmad1968@icloud.com";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get appOpenId {
    //   return "ca-app-pub-3940256099942544/9257395921";
    if (Platform.isAndroid) {
      return "ca-app-pub-8177765238464378/6180678589";
    } else if (Platform.isIOS) {
      return "ca-app-pub-8177765238464378/2743162302";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get bannerAdUnitId {
    //  return "ca-app-pub-3940256099942544/2014213617";

    if (Platform.isAndroid) {
      return "ca-app-pub-8177765238464378/7645142419";
    } else if (Platform.isIOS) {
      return "ca-app-pub-8177765238464378/4632568900";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get interstitialAdUnitId {
    // return "ca-app-pub-3940256099942544/1033173712";

    if (Platform.isAndroid) {
      return "ca-app-pub-8177765238464378/8630921029";
    } else if (Platform.isIOS) {
      return "ca-app-pub-8177765238464378/2006405564";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get appId {
    //  return "ca-app-pub-3940256099942544/9257395921";

    if (Platform.isAndroid) {
      return "ca-app-pub-8177765238464378~8018794933";
    } else if (Platform.isIOS) {
      return "ca-app-pub-8177765238464378~4087998211";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }
}
