import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

import '../models/category_model.dart';

class CategoryController extends GetxController{
    var database =FirebaseDatabase.instance.ref("categories");

List<Category> categoryList= [];
  void getCategory() async{
    final snapshot=await database.get();
    if(snapshot.exists){
 var listProp=snapshot.value as List;
     for(int i=0;i<listProp.length;i++){
      var categoryModel=Category.fromMap(listProp[i]);
      categoryList.add(categoryModel);
     }
    }
    print(categoryList[0]);
  }
}