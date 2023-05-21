import 'package:get/get.dart';

import '../const/const.dart';
import '../models/vendor_model.dart';

class GeneralSettingsController extends GetxController {
  Map<String, dynamic> map = {};//used empty objects
  VendorModel vendorModel = VendorModel(
     email: "", id: "", imageUrl: "", password: "", vendorName: "");//used empty objects
  void readProfile() async {
    await fireStore.doc("$vendorsCollection/${currentUser!.uid}").get().then(
      (snapshot) {
        debugPrint("Document: ${snapshot.data()}");

        map = snapshot.data()!;
        vendorModel = VendorModel.fromMap(map);
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    readProfile();
  }
}
