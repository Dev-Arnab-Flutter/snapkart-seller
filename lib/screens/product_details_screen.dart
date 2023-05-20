import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:seller/const/const.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: Text(
          "Product Title",
          style: TextStyle(color: white, fontSize: 22.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                disableGesture: true,
                items: List.generate(
                  3,
                  (index) => SizedBox(
                      height: 350.h,
                      child: Image.asset(imgProduct, fit: BoxFit.cover)),
                ),
                options:
                    CarouselOptions(autoPlay: true, enlargeCenterPage: true),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Product Title",
                style: TextStyle(
                    color: purpleColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              RatingBar.builder(
                  itemCount: 5,
                  allowHalfRating: true,
                  initialRating: 3.5,
                  ignoreGestures: true,
                  itemSize: 30.h,
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.star,
                      color: golden,
                    );
                  },
                  onRatingUpdate: (value) {}),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "\$300",
                style: TextStyle(color: red, fontSize: 16.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              Material(
                borderRadius: BorderRadius.circular(10.r),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(8.0.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Color:",
                            style: TextStyle(color: fontGrey, fontSize: 16.sp),
                          ),
                             SizedBox(width: 10.w,),
                          
                          Row(
                            children: List.generate(
                              3,
                              (index) => Container(
                                margin: EdgeInsets.symmetric(horizontal: 4.w),
                                child: CircleAvatar(
                                  radius: 25.r,
                                  backgroundColor: Colors.primaries[Random()
                                      .nextInt(Colors.primaries.length)],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                         Text(
                            "Quantity: ",
                            style: TextStyle(color: fontGrey, fontSize: 16.sp,fontWeight: FontWeight.bold),
                          ), 
                          SizedBox(width: 10.w,),
                          Text(
                            "20 Items",
                            style: TextStyle(color: fontGrey, fontSize: 14.sp),
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
                      Text("Product Description shown here... ",style: TextStyle(color: purpleColor,fontSize: 14.sp),)
            ],
          ),
        ),
      ),
    );
  }
}
