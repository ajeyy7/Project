import 'package:get/get.dart';
import 'package:project3/api%20intergration/api_intergration_using_http/service/api_service.dart';

class ProductController extends GetxController{
  var isLoading=true.obs;
  var productList=[].obs;

  @override
  void onInit(){
    getproducts();
    super.onInit();

  }

  void getproducts() async{
    try{
      isLoading(true);
      var products=await HttpService.fetchProducts();
      if(products!=null){
        productList.value=products;
      }
    }catch(e){
      print(e);
    }finally{
      isLoading(false);
    }
  }
}