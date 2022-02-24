import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

Future<void> init()async
{
/// api client
Get.lazyPut(()=>ApiClient(appBaseUrl: "https://mvs.bslmeiyu.com/"));

/// controllers
Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));


Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));



}

/// 5 min 50s