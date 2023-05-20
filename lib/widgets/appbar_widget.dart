import 'package:seller/const/const.dart';
import 'package:intl/intl.dart' as intl;

AppBar appBarWidget(String title){
  return AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          title,
          style: TextStyle(
              color: purpleColor, fontSize: 20.sp, fontWeight: FontWeight.w600),
        ),
        actions: [
          Text(
            intl.DateFormat("EEE, MMM d, ''yy").format(
              DateTime.now(),
            ),
            style: TextStyle(color: purpleColor, fontSize: 16.sp),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      );

}