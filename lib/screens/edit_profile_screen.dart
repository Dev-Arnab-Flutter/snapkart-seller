import 'package:get/get.dart';
import 'package:seller/controllers/general_settings_controller.dart';
import 'package:seller/controllers/user_image_controller.dart';
import 'package:seller/services/api/services_api.dart';
import 'package:seller/widgets/custon_textfield_widget.dart';
import '../const/const.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final ServiceApi api = ServiceApi();
  final UserImageController userImageController =
      Get.put(UserImageController());
  final GeneralSettingsController generalSettingsController =
      Get.put(GeneralSettingsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: Text(
          editProfile,
          style: TextStyle(color: white, fontSize: 22.sp),
        ),
        actions: [
          IconButton(
            onPressed: () {
              api.editProfile();
            },
            icon: Icon(
              Icons.save,
              size: 25.h,
              color: white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Column(
          children: [
            GetBuilder<UserImageController>(builder: (context) {
              return CircleAvatar(
                backgroundImage: userImageController.selectedProfilePicture
                    ? MemoryImage(
                        userImageController.imageFile!.readAsBytesSync())
                    : generalSettingsController.vendorModel.imageUrl.isNotEmpty
                        ? NetworkImage(
                            generalSettingsController.vendorModel.imageUrl)
                        : const AssetImage("assets/user.png") as ImageProvider<
                            Object>, 
                radius: 60.r,
              );
            }),
            SizedBox(
              height: 10.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: white),
              onPressed: () {
                userImageController.selectImage();
              },
              child: Text(
                changeImage,
                style: TextStyle(color: fontGrey, fontSize: 14.sp),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Divider(
              color: white,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              label: name,
              hintText: nameHint,
              controller: api.userNameTEC,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              label: password,
              hintText: passHint,
              controller: api.passTEC,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              label: confirmPassword,
              hintText: passHint,
              controller: api.confirmpassTEC,
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
