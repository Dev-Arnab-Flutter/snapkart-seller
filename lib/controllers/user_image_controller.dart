
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:seller/const/const.dart';

class UserImageController extends GetxController{
  String userUid=currentUser!.uid;
  late String networkImageUrl='';
  File? imageFile;
  bool selectedProfilePicture=false;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDisplayImage(firestore: fireStore,userUid: userUid);
  }

  
    Future<void> selectImage()async{
  FilePickerResult? result = await FilePicker.platform.pickFiles(
                  type: FileType.image,
                );
                if (result != null) {
                  imageFile = File(result.files.single.path!);
                  selectedProfilePicture = true;
                 update();
                
                }else{
                }             
}

 void getDisplayImage({required FirebaseFirestore firestore,required String userUid}){
  
   firestore.collection(vendorsCollection).doc(userUid).get().then((snapShot) {
    networkImageUrl =snapShot.data()!['imageUrl'];
    update();    
    print("**********Final ImageURL: $networkImageUrl");
  });
} 
}
