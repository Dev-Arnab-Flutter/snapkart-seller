import 'package:get/get.dart';
import 'package:seller/const/const.dart';
import 'package:seller/controllers/auth_controller.dart';
import 'package:seller/screens/home.dart';
import 'package:seller/widgets/custom_button_widget.dart';
import 'package:seller/widgets/custom_textfield_widget.dart';
import 'package:seller/widgets/loding_indicator.dart';

class LoginScreen extends StatelessWidget {
 final AuthController authController= Get.put(AuthController());
   LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(8.h),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                welcome,
                style: TextStyle(color: white, fontSize: 20.sp),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: white),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Padding(
                    padding: EdgeInsets.all(8.h),
                    child: Image.asset(
                      icLogo,
                      width: 40,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  appname,
                  style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                )
              ],
            ),
            SizedBox(
              height: 160.h,
            ),
            Material(
              borderRadius: BorderRadius.circular(10.r),
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10.r),
                  
                    ),
                child: Column(
                  children: [
                     CustomTextField(
                      controller: authController.emailController,
                        hintText: emailHint, icons: Icons.email),
                    SizedBox(
                      height: 10.h,
                    ),
                     CustomTextField(
                    controller: authController.passController,
                        hintText: passHint, icons: Icons.password),
                    SizedBox(
                      height: 30.h,
                    ),
                Obx(
                      ()=>authController.isLoading.value? loadingIndicator(): CustomButton(
                        onTap: () async{
                          // Get.to(()=>const Home());
                          authController.isLoading(true);
                          await authController.loginMethod(context: context).then((value) {
                            if(value != null){
                              authController.isLoading(false);
                              Get.offAll(()=>const Home());
                            }else{
                              authController.isLoading(false);

                            }
                          });
                        },
                        label: login,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              anyProblem,
              style: TextStyle(color: white, fontSize: 16.sp),
            ),
            const Spacer(),
            Center(
              child: Text(
                credit,
                style: TextStyle(color: white, fontSize: 16.sp),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
