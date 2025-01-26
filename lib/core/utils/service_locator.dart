import 'package:booklyapp/Features/home/Data/repo/homerepoimplmantion.dart';
import 'package:booklyapp/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setup() {
  getit.registerSingleton<Apiservices>(Apiservices(Dio()));
  getit.registerSingleton<Homerepoimplmantion>(
      Homerepoimplmantion(getit.get<Apiservices>()));
}
