import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyController extends GetxController{
void changeLanguage(param1,param2){
  var locale =Locale(param1,param2);
  Get.updateLocale(locale);
}
}