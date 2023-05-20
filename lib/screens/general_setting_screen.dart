
import 'package:get/get.dart';
import 'package:seller/const/const.dart';
import 'package:seller/screens/edit_profile_screen.dart';
import 'package:seller/screens/messages_screen.dart';
import 'package:seller/screens/shop_setting_screen.dart';

class GeneralSettingsScreen extends StatelessWidget {
  const GeneralSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {},
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
            ListTile(
              leading: CircleAvatar(
                radius: 40.r,
                backgroundImage: const AssetImage(imgProduct),
              ),
              title: Text(
                "Vendor Name",
                style: TextStyle(
                    color: white, fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "vendormail@snapkart.com",
                style: TextStyle(color: white, fontSize: 14.sp),
              ),
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
