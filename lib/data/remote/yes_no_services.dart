

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:yes_no_app/models/api/yes_no_response.dart';

class YesNoServices{
      final String _url = "https://yesno.wtf/api";
      final Dio _dio = Dio();


    Future<YesNoResponse?> getYesNoResponse() async{
      try{
        final Response response = await _dio.get(_url);
        return YesNoResponse.fromMap(response.data);
      }catch(e){
        Logger().e("Error in request $e");
        return null;
      }
    }
}