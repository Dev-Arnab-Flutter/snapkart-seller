import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:seller/const/const.dart';
import 'package:seller/const/firebase_const.dart';

class AuthController extends GetxController{
  var isLoading=false.obs;
  var emailController= TextEditingController();
  var passController= TextEditingController();
  Future<UserCredential?> loginMethod ({context})async{
    UserCredential? userCredential;
    try{
      userCredential= await auth.signInWithEmailAndPassword(email: emailController.text, password: passController.text);
    }on FirebaseAuthException catch (e){
     debugPrint(e.toString());
    }
    return userCredential;
  }
  signOutMethod(context)async{
    try{
      await auth.signOut();
    }on FirebaseAuthException catch (e){
      debugPrint(e.toString());
    }
  }
}