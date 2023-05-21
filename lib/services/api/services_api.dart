import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:seller/const/const.dart';
import 'package:seller/controllers/user_image_controller.dart';
import 'package:seller/services/api/assets_api.dart';

class ServiceApi with AssetsHelper{
  final TextEditingController userNameTEC=TextEditingController();
  final TextEditingController passTEC=TextEditingController();
  final TextEditingController confirmpassTEC=TextEditingController();
  final UserImageController userImageController=Get.put(UserImageController());
  String imageUrl="";
  void editProfile()async{
if(userNameTEC.text.isNotEmpty&&passTEC.text.isNotEmpty&&confirmpassTEC.text.isNotEmpty){
      if(passTEC.text==confirmpassTEC.text){
      try {
        await auth.currentUser!.updateDisplayName(userNameTEC.text);
        await auth.currentUser!.updatePassword(passTEC.text);
        final String userId = currentUser!.uid;
if(userImageController.selectedProfilePicture=false){
  imageUrl= await uploadFile(dbPath: "VendorCoverImages/$userId", file: await assetFileGenerator("assets/user.png"));
}else{
  imageUrl = await uploadFile(dbPath: "VendorCoverImages/$userId", file: userImageController.imageFile!);
}
fireStore.collection(vendorsCollection).doc(userId).update(
  {
    "id":userId,
    "vendor_name":userNameTEC.text,
    "imageUrl":imageUrl,
    "password":passTEC.text
  }
);
userNameTEC.clear();
passTEC.clear();
confirmpassTEC.clear();
userImageController.selectedProfilePicture=false;
      }catch (e){
showSnackBar(e.toString());
userNameTEC.clear();
passTEC.clear();
confirmpassTEC.clear();
userImageController.selectedProfilePicture=false;
      }
    }else{
      showSnackBar("Password doesn't match");
      userNameTEC.clear();
passTEC.clear();
confirmpassTEC.clear();
userImageController.selectedProfilePicture=false;
    }
}
  }

    Future<String> uploadFile(
      {required String dbPath, required File file}) async {
    Reference imageReference = FirebaseStorage.instance.ref(dbPath);
    UploadTask uploadTask = imageReference.putFile(file);
    await uploadTask.whenComplete(() {});
    String imageURL = await imageReference.getDownloadURL();
    return imageURL;
  }
   void showSnackBar(String message) {
    Get.snackbar("Error occured", message,
        backgroundColor: Colors.redAccent, snackPosition: SnackPosition.BOTTOM,duration:const Duration(seconds: 5));
  }
}