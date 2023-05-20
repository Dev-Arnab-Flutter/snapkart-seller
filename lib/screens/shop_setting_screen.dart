import 'package:seller/widgets/custon_textfield_widget.dart';

import '../const/const.dart';

class ShopSettingsScreen extends StatelessWidget {
  const ShopSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: Text(
          shopSetting,
          style: TextStyle(color: white, fontSize: 22.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            const CustomTextField(hintText: shopNameHint, label: shopName),
            SizedBox(
              height: 10.h,
            ),
            const CustomTextField(
              hintText: shopDescHint,
              label: desc,
              isDesc: true,
            ),
            SizedBox(
              height: 10.h,
            ),
            const CustomTextField(hintText: address, label: addressHint),
            SizedBox(
              height: 10.h,
            ),
            const CustomTextField(hintText: mobileHint, label: mobile),
            SizedBox(
              height: 10.h,
            ),
            const CustomTextField(hintText: shopWebsiteHint, label: webSite),
            SizedBox(
              height: 10.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: white),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.save,
                      color: purpleColor,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Save",
                      style: TextStyle(color: purpleColor, fontSize: 16.sp),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
