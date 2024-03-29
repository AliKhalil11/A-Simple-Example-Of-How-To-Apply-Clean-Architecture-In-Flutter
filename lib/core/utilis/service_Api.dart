

// ignore_for_file: avoid_print

import 'package:dio/dio.dart';



class ApiService{
  Dio? dio;
  ApiService(){
    BaseOptions options = BaseOptions(
      receiveDataWhenStatusError: true,
      connectTimeout:const Duration(milliseconds: 100) ,
      receiveTimeout:const Duration(milliseconds: 100) ,
    );
    dio = Dio(options);
  }
  Future <List<dynamic>> getAlbums()async{

    try{
         Response response = await dio!.get("https://jsonplaceholder.typicode.com/photos");
        print(response.data.toString());
        return response.data;

    }
    catch(e){
      print(e.toString());
      return [];
    }
   
  }
}