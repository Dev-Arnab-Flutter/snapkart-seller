import 'package:seller/const/const.dart';

Widget orderStatus(){
  return Padding(
                padding: EdgeInsets.all(12.h),
                child: Material(
                  borderRadius: BorderRadius.circular(10.r),
                  elevation: 10,
                  child: Column(
                    children: [
                      Text("Order Status",style: TextStyle(color: purpleColor,fontSize: 16.sp,fontWeight: FontWeight.bold),),
                      SwitchListTile(
                        dense: true,
                        activeColor: green,
                        value: true,
                        onChanged: (value) {},
                        title: Text(
                          "Placed",
                          style: TextStyle(color: fontGrey, fontSize: 16.sp),
                        ),
                      ),
                      SwitchListTile(
                        dense: true,
                        activeColor: green,
                        value: true,
                        onChanged: (value) {},
                        title: Text(
                          "Confirmed",
                          style: TextStyle(color: fontGrey, fontSize: 16.sp),
                        ),
                      ),
                      SwitchListTile(
                        dense: true,
                        activeColor: green,
                        value: false,
                        onChanged: (value) {},
                        title: Text(
                          "On Delivery",
                          style: TextStyle(color: fontGrey, fontSize: 16.sp),
                        ),
                      ),
                          SwitchListTile(
                            dense: true,
                        activeColor: green,
                        value: false,
                        onChanged: (value) {},
                        title: Text(
                          "Delivered",
                          style: TextStyle(color: fontGrey, fontSize: 16.sp),
                        ),
                      ),
                      

                    ],
                  ),
                ),
              );
             
}