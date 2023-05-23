import 'package:get/get.dart';
import 'package:seller/controllers/shop_controller.dart';
import 'package:seller/widgets/custon_textfield_widget.dart';
import 'package:seller/widgets/loding_indicator.dart';

import '../const/const.dart';

class ShopSettingsScreen extends StatelessWidget {
  final ShopController shopController = Get.put(ShopController());
  ShopSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: Text(
          shopSetting,
          style: TextStyle(color: white, fontSize: 22.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              hintText: shopNameHint,
              label: shopName,
              controller: shopController.shopNameTEC,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              hintText: shopDescHint,
              label: desc,
              isDesc: true,
              controller: shopController.shopDescTEC,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              hintText: address,
              label: addressHint,
              controller: shopController.shopAddressTEC,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              hintText: mobileHint,
              label: mobile,
              keyboardType: TextInputType.number,
              maxLength: 10,
              controller: shopController.shopMobileNoTEC,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              hintText: shopWebsiteHint,
              label: webSite,
              controller: shopController.shopWebsiteTEC,
            ),
            SizedBox(
              height: 10.h,
            ),
            Obx(()=>shopController.isLoading.value?loadingIndicator(color: white):
               ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: white),
                  onPressed: () {
                    if (shopController.shopNameTEC.text.isNotEmpty &&
                        shopController.shopDescTEC.text.isNotEmpty &&
                        shopController.shopAddressTEC.text.isNotEmpty &&
                        shopController.shopMobileNoTEC.text.isNotEmpty &&
                        shopController.shopWebsiteTEC.text.isNotEmpty) {
                          shopController.shopUpdate(
                            shopname: shopController.shopNameTEC.text,
                            shopdesc: shopController.shopDescTEC.text,
                            shopAddress: shopController.shopAddressTEC.text,
                            shopMobile: shopController.shopMobileNoTEC.text,
                            shopWebsite: shopController.shopWebsiteTEC.text,
                          );
                          Get.back();
                        }else{
                          shopController.showSnackBar();
                        }
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.save,
                        color: purpleColor,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Save",
                        style: TextStyle(color: purpleColor, fontSize: 16.sp),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
