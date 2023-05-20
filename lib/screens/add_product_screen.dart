import 'dart:math';

import 'package:seller/const/const.dart';

import 'package:seller/widgets/custon_textfield_widget.dart';
import 'package:seller/widgets/product_dropdown.dart';
import 'package:seller/widgets/product_images_widget.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: Text(
          "Add Products",
          style: TextStyle(color: white, fontSize: 22.sp),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.save,
              size: 25.h,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              const CustomTextFormField(
                  hintText: "eg. BMW", label: "Product Name"),
              SizedBox(
                height: 10.h,
              ),
              const CustomTextFormField(
                hintText: "eg. Nice Product",
                label: desc,
                isDesc: true,
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomTextFormField(hintText: "eg. \$300", label: "Price"),

              SizedBox(
                height: 10.h,
              ),
              const CustomTextFormField(hintText: "eg. 20", label: "Quantity"),
              SizedBox(
                height: 10.h,
              ),
              productDropDown(hint: "Choose Category"),
              SizedBox(
                height: 10.h,
              ),
              productDropDown(hint: "Choose Subcategory"),
              SizedBox(
                height: 10.h,
              ),
              Text("Choose Product Images",style: TextStyle(color: white,fontSize: 16.sp),),
               SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  3,
                  (index) => productImage(tileIndex: (index+1).toString()),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text("First image will be your display image",style: TextStyle(color: white,fontSize: 14.sp),),
              SizedBox(
                height: 10.h,
              ),
                Text("Choose Product Colors",style: TextStyle(color: white,fontSize: 16.sp),),
              SizedBox(
                height: 10.h,
              ),
              Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: List.generate(
                              9,
                              (index) => Stack(
                                alignment: Alignment.center,
                                children: [

                                  CircleAvatar(
                                    radius: 30.r,
                                    backgroundColor: Colors.primaries[Random()
                                        .nextInt(Colors.primaries.length)],
                                  ),
                                  Icon(Icons.done,color: white,)
                                ],
                              ),
                            ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
