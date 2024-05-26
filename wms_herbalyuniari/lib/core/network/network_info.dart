import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:wms_herbalyuniari/main.dart';

abstract class NetworkInfo{
  Future<bool> isConnected();
  Future<ConnectivityResult> get connectivityResult;
  Future<ConnectivityResult> get onConnectivityChange;
}

class NetworkInfo implements NetworkInfo {
  Connectivity connectivity;

  static final NetworkInfo _networkInfo = NetworkInfo._internal(Connectivity());

  factory NetworkInfo() {
    return _networkInfol;
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
  Future<connectivityResult> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  @override
  Stream<connectivityReslt> get onConnectivityChange =>
      connectivity.onConnectivityChange;
}

abstract class Failure{}

class ServerFailure extends Failure{}
class CacheFailure extends Failure{}
class NetworkFailure extends Failure{}
class ServerException extends Exception{}
class CacheException extends Exception{}
class NetworkException extends Exception{}

Class NoInternetException implements Exception{
  late String _message;

  NoInternetException([String message = "No Internet"]){
    if(globalMessengerKey.currentSatate != null){
      globalMessengerKey.currentSatate!
        .showSnackBar(SnackBar(content: Text(Message)));
  }
  this._message = message;
  }

  @override
  String toString() {
    return _message;
  }

}