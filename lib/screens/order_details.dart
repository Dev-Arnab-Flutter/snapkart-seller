import 'package:seller/const/const.dart';
import 'package:seller/widgets/custom_button_widget.dart';
import 'package:seller/widgets/order_details_widget.dart';
import 'package:seller/widgets/order_status.dart';
import 'package:seller/widgets/ordered_product_widget.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: const Text(
          orderDetails,
          style: TextStyle(color: white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              orderStatus(),
              SizedBox(height: 20.h,),
              orderDetailsWidget(),
              SizedBox(
                height: 20.h,
              ),
              const OrderedProduct(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
          child: const CustomButton(label: "Confirm Order"),
        ),
      ),
    );
  }
}
