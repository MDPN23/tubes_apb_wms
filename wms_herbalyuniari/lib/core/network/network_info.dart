import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:wms_herbalyuniari/main.dart';

abstract class NetworkInfoI{
  Future<bool> isConnected();

  Future<ConnectivityResult> get connectivityResult;

  Future<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  Connectivity connectivity;

  static final NetworkInfo _networkInfo = NetworkInfo._internal(Connectivity());

  factory NetworkInfo() {
    return _networkInfo;
  }

  NetworkInfo._internal(this.connectivity) {
    connectivity = this.connectivity;
  }


  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();
    if (result != ConnectivityResult.none){
      return true;
    }
    return false;
  }

  @override
  Future<ConnectivityResult> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}

abstract class Failure {}

class ServerFailure extends Failure{}
class CacheFailure extends Failure{}
class NetworkFailure extends Failure{}
class ServerException extends Exception{}
class CacheException extends Exception{}
class NetworkException extends Exception{}

Class NoInternetException implements Exception{
  late String _message;

  NoInternetException([String message = "NoInternetException Occured"]){
    if(globalMessengerKey.currentState != null){
      globalMessengerKey.currentState!
        .showSnackBar(SnackBar(content: Text(message)));
    }
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
  
}