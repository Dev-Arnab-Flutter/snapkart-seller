import 'package:seller/const/const.dart';

Widget orderDetailsWidget(){
  return Padding(
                padding: EdgeInsets.all(12.h),
                child: Material(
                  borderRadius: BorderRadius.circular(10.r),
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.all(8.h),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  orderCode,
                                  style: TextStyle(
                                      color: purpleColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                ),
                                Text(
                                  "data[code]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  shippingMethod,
                                  style: TextStyle(
                                      color: purpleColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                ),
                                Text(
                                  "data[method]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  orderDate,
                                  style: TextStyle(
                                      color: purpleColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                ),
                                Text(
                                  "data[date]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  paymentMethod,
                                  style: TextStyle(
                                      color: purpleColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                ),
                                Text(
                                  "data[pay_method]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  paymentStatus,
                                  style: TextStyle(
                                      color: purpleColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                ),
                                Text(
                                  "data[status]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  deliveryStatus,
                                  style: TextStyle(
                                      color: purpleColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                ),
                                Text(
                                  "data[pay_method]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  shippingAddress,
                                  style: TextStyle(
                                      color: purpleColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                ),
                                Text(
                                  "data[address]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                                Text(
                                  "data[address]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                                Text(
                                  "data[address]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                                Text(
                                  "data[address]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                                Text(
                                  "data[address]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  totalAmmount,
                                  style: TextStyle(
                                      color: purpleColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                ),
                                Text(
                                  "data[ammount]",
                                  style: TextStyle(color: red, fontSize: 14.sp),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
}