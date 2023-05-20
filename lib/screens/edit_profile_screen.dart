import 'package:seller/widgets/custon_textfield_widget.dart';

import '../const/const.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
            onPressed: () {},
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
            CircleAvatar(
              backgroundImage: const AssetImage(imgProduct),
              radius: 60.r,
            ),
            SizedBox(
              height: 10.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: white),
              onPressed: () {},
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
           const CustomTextFormField(label: name,hintText: nameHint,),
 SizedBox(
              height: 10.h,
            ),
            const CustomTextFormField(label: password,hintText: passHint,),
           SizedBox(
              height: 10.h,
            ),
           const CustomTextFormField(
            
            label: confirmPassword,hintText: passHint,),
 SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
