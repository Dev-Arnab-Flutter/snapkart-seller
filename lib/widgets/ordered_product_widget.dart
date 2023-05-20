import 'package:flutter/material.dart';

import '../const/const.dart';

class OrderedProduct extends StatelessWidget {
  const OrderedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return       Padding(
              padding:  EdgeInsets.all(12.h),
              child: Material(
                borderRadius: BorderRadius.circular(10.r),
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(8.h),
                  child: Column(
                    
                    children: [
                    Text("Ordered Products",style: TextStyle(color: fontGrey,fontWeight: FontWeight.bold,fontSize: 16.sp),),
                      SizedBox(height: 10.h,),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("data[order][index][title]",style: TextStyle(color: purpleColor,fontWeight: FontWeight.bold,fontSize: 14.sp),),
                          Text("data[quantity]",style: TextStyle(color: red,fontSize: 14.sp),),
                          Container(
                            height: 30.h,
                            width: 50.w,
                            color: purpleColor,
                          )
                        ],
                      ),
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("data[order][index][price]",style: TextStyle(color: purpleColor,fontWeight: FontWeight.bold,fontSize: 14.sp),),
                          Text("refundable",style: TextStyle(color: darkGrey,fontSize: 14.sp),),
                        ],
                      )
                    ],
                  ),
                  
                     SizedBox(height: 10.h,),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("data[order][index][title]",style: TextStyle(color: purpleColor,fontWeight: FontWeight.bold,fontSize: 14.sp),),
                          Text("data[quantity]",style: TextStyle(color: red,fontSize: 14.sp),),
                          Container(
                            height: 30.h,
                            width: 50.w,
                            color: purpleColor,
                          )
                        ],
                      ),
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("data[order][index][price]",style: TextStyle(color: purpleColor,fontWeight: FontWeight.bold,fontSize: 14.sp),),
                          Text("refundable",style: TextStyle(color: darkGrey,fontSize: 14.sp),),
                        ],
                      )
                    ],
                  ),
                      SizedBox(height: 10.h,),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("data[order][index][title]",style: TextStyle(color: purpleColor,fontWeight: FontWeight.bold,fontSize: 14.sp),),
                          Text("data[quantity]",style: TextStyle(color: red,fontSize: 14.sp),),
                          Container(
                            height: 30.h,
                            width: 50.w,
                            color: purpleColor,
                          )
                        ],
                      ),
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("data[order][index][price]",style: TextStyle(color: purpleColor,fontWeight: FontWeight.bold,fontSize: 14.sp),),
                          Text("refundable",style: TextStyle(color: darkGrey,fontSize: 14.sp),),
                        ],
                      )
                    ],
                  ),
                  
                    ],
                  ),
                ),
              ),
            )
       ;
  }
}