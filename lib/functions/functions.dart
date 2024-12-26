import 'package:booklyapp/Features/home/presentation/views/home_view.dart';
import 'package:get/get.dart';

void transition() {
  Future.delayed(const Duration(seconds: 4), () {
    Get.to(const Home(), transition: Transition.fadeIn);
  });
}
