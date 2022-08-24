import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter_sdk/config/dream_config.dart';
import 'package:flutter_sdk/utils/dream_utils.dart';

enum DreamInitType {
  noInitType,   // 未初始化
  initingType,  // 正在初始化
  initEndType   // 初始化完成
}

enum DreamLoginType {
  noLoginType,   // 未登录
  loginingType,  // 正在登录
  loginEndType   // 登录完成
}

enum DreamPayType {
  noPaying,  // 未支付/支付完成
  paying     // 正在支付
}

class DreamSDK {
  DreamInitType initType = DreamInitType.noInitType;
  DreamLoginType loginType = DreamLoginType.noLoginType;
  DreamPayType payType = DreamPayType.noPaying;

  // Flutter(able)的单例模式
  // https://baijiahao.baidu.com/s?id=1707067916984436729&wfr=spider&for=pc
  DreamSDK._internal();

  factory DreamSDK() => _instance;

  static late final DreamSDK _instance = DreamSDK._internal();

  void init(String config, void Function(bool isOk) initComplete) {
    if (initType != DreamInitType.initingType) {
      DreamUtils.showToast('SDK初始化未完成');
      return;
    }

    if (initType == DreamInitType.initEndType) {
      return;
    }

    initType == DreamInitType.initingType;

    _mLoadConfig();

    // if (config != null) {
    //   _mApiLoadConfig(config);
    // }

    _mClearData();

    _mEnterGame(false);
  }

  void login(void Function(bool isOk, bool isRegister, String uid, String token, String notifyMsg) loginComplete) {
    if (initType != DreamInitType.initEndType) {
      return;
    }

    if (loginType == DreamLoginType.loginingType) {
      return;
    }

    if (loginType == DreamLoginType.loginEndType) {
      return;
    }

    loginType = DreamLoginType.loginingType;

    _mLoginMethod();
  }

  bool isLogined() {
    if (loginType == DreamLoginType.loginEndType) {
      return true;
    }
    return false;
  }

  void logout() {
    _mLogout(true, (isSuccessed) {

    });
  }

  void switchAccount() {
    _mLogout(true, (isSuccessed) {
      if (isSuccessed == true) {
        login((isOk, isRegister, uid, token, notifyMsg) {

        });
      }
    });
  }

  void payWithConfig(Config config) {
    if (loginType != DreamLoginType.loginEndType) {
      return;
    }

    if (payType == DreamPayType.paying) {
      return;
    }

    payType == DreamPayType.paying;

    _mPayOrder(config);

    payType == DreamPayType.noPaying;
  }

  void showUserCenter() {
    if (loginType != DreamLoginType.loginEndType) {
      login((isOk, isRegister, uid, token, notifyMsg) {

      });
      return;
    }

    _mEnterUserCenter();
  }
  /// ******************************内部方法start******************************
  void _mLoadConfig() {

  }

  void _mApiLoadConfig(Config config) {

  }

  void _mClearData() {

  }

  void _mEnterGame(bool isLoading) {

  }

  void _mLoginMethod() {

  }

  void _mLogout(bool shouldCommit, void Function(bool isSuccessed) logoutComplete) {

  }

  void _mPayOrder(Config config) {

  }

  void _mEnterUserCenter() {

  }
  /// ******************************内部方法end******************************
}