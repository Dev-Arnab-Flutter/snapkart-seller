


import 'package:get/get.dart';
import 'package:seller/const/const.dart';



class ShopController extends GetxController {


  var isLoading = false.obs;
  final TextEditingController shopNameTEC = TextEditingController();
  final TextEditingController shopDescTEC = TextEditingController();
  final TextEditingController shopAddressTEC = TextEditingController();
  final TextEditingController shopMobileNoTEC = TextEditingController();
  final TextEditingController shopWebsiteTEC = TextEditingController();

  void shopUpdate(
      {required String shopname,
      required String shopdesc,
      required String shopAddress,
      required String shopMobile,
      required String shopWebsite}) async {
    isLoading.value = true;
    await fireStore.doc("$vendorsCollection/${currentUser!.uid}").update({
      "shop_name": shopname,
      "shop_desc": shopdesc,
      "shop_address": shopAddress,
      "shop_mobile": shopMobile,
      "shop_website": shopWebsite
    });
    isLoading.value = false;

  }

  void showSnackBar() {
    Get.snackbar("Error occured", "Fields are empty",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 5));
  }

  
}
