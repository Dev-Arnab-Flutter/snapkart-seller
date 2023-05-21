
import 'package:get/get.dart';
import 'package:seller/const/const.dart';

import 'package:seller/controllers/auth_controller.dart';
import 'package:seller/controllers/general_settings_controller.dart';

import 'package:seller/screens/edit_profile_screen.dart';



import 'package:seller/screens/login_screen.dart';
import 'package:seller/screens/messages_screen.dart';
import 'package:seller/screens/shop_setting_screen.dart';




class GeneralSettingsScreen extends StatelessWidget {
final GeneralSettingsController generalSettingsController=Get.put(GeneralSettingsController());
   GeneralSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controllerData=generalSettingsController.vendorModel;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: purpleColor,
        title: Text(
          settings,
          style: TextStyle(color: white, fontSize: 22.sp),
        ),
        actions: [
          IconButton(
            onPressed: () {
         Get.to(()=>EditProfileScreen());
           
            },
            icon: Icon(
              Icons.edit,
              size: 25.h,
              color: white,
            ),
          ),
          IconButton(
            onPressed: () async{
              await Get.find<AuthController>().signOutMethod(context);
              Get.offAll(()=>LoginScreen());
            },
            icon: Icon(
              Icons.logout,
              size: 25.h,
              color: white,
            ),
          ),
        ],
      ),
    
      body: Container(
        color: purpleColor,
        child: Column(
          children: [
            GetBuilder<GeneralSettingsController>(
              builder: (context) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40.r,
                    backgroundImage: controllerData.imageUrl.isNotEmpty? NetworkImage(controllerData.imageUrl):const AssetImage("assets/user.png") as ImageProvider<Object>,
                  ),
                  title: Text(
                  controllerData .vendorName,
                    style: TextStyle(
                        color: white, fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    controllerData.email,
                    style: TextStyle(color: white, fontSize: 14.sp),
                  ),
                );
              }
            ),
            SizedBox(
              height: 10.h,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: profileButtonstitle.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      switch (index){
                        case 0:
                        Get.to(()=>const ShopSettingsScreen());
                        case 1:
                        Get.to(()=> const MessagesScreen());
                        break;
                      default:
                      }
                    },
                    leading: Icon(
                      profileButtonIcons[index],
                      color: white,
                    ),
                    title: Text(
                      profileButtonstitle[index],
                      style: TextStyle(color: white, fontSize: 16.sp),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
