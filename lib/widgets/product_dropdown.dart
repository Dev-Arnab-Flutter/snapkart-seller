import 'package:seller/const/const.dart';

Widget productDropDown({String hint=""}) {
  return Container(
    decoration: BoxDecoration(color: white,borderRadius: BorderRadius.circular(10.r)),
    child: Padding(
      padding:  EdgeInsets.all(4.h),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text(hint),
          onChanged: (value){},
          items: [
          ]
          ,
          isExpanded: true,
        ),
      ),
    ),
  );
}
