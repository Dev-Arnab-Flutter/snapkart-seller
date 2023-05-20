
import 'package:get/get.dart';
import 'package:seller/const/const.dart';
import 'package:seller/screens/order_details.dart';
import 'package:seller/widgets/appbar_widget.dart';
import 'package:intl/intl.dart' as intl;
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(orders),
      body: Padding(padding: EdgeInsets.all(8.h),
      child: ListView(
            physics:const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(30, (index) {
              return Container(
                margin: EdgeInsets.only(bottom: 4.h),
                child: ListTile(
                
                  onTap: () {
                    Get.to(()=>const OrderDetailsScreen());
                  },
                  tileColor: textfieldGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)
                  ),
                  title: Text(
                    "product title".toUpperCase(),
                    style: TextStyle(
                        color: purpleColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month,color: fontGrey,size: 25.h,),
                          SizedBox(width: 10.w,),
                           Text(
                    intl.DateFormat().add_yMd().format(DateTime.now()),
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: 14.sp,
                    ),
                  )
                        ],
                      ),
                    Row(
                        children: [
                          Icon(Icons.payment,color: fontGrey,size: 25.h,),
                          SizedBox(width: 10.w,),
                           Text(
                    unPaid,
                    style: TextStyle(
                      color: red,
                      fontSize: 14.sp,
                    ),
                  )
                        ],
                      ),
                    ],
                  ),
                  trailing: Text(
                    "\$40",
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              );
            }),
          ), 
      ),
    );
  }
}