import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController
{
   final PopularProductRepo popularProductRepo;
   PopularProductController({required this.popularProductRepo});

    dynamic   _popularProductList = [];
   dynamic get PopularProductList => _popularProductList;


   Future<void> getPopularProductList() async
   {
     print("hello");
     Response response = await popularProductRepo.getPopularProductList();
     if( response.statusCode == 200)
       {
         print("got products");
         _popularProductList = [];
         _popularProductList.addAll(Product.fromJson(response.body).products);
         update();
       }
     else{
       print("here status code is ${response.statusCode}");

     }
   }
}