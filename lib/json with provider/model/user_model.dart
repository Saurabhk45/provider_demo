import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class UserModel with ChangeNotifier{
  Map<String,dynamic>_map = {};
  bool _error = false;
  String _errorMsg = '';

  Map<String,dynamic> get map => _map;
  bool get error => _error;
  String get errorMsg => _errorMsg;


  Future<void> get fetchData async{
    final response = await get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200){
      try{
          _map = jsonDecode(response.body);
          _error = false;
      }
      catch (e){
        _error = true;
        _errorMsg = e.toString();
        _map = {};
      }
    }
    else {
      _error = true;
      _errorMsg = 'Connection problem';
      _map = {};
    }
    notifyListeners();
  }

  void initialValue(){
    _map = {};
    _error = false;
    _errorMsg = '';
    notifyListeners();
  }

}