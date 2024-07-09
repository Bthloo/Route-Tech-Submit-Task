import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_helper.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
    required this.productOldPrice,
    required this.productRating,
    required this.productImage,
  });

  final String productName;
  final String productDescription;
  final num productPrice;
  final num productOldPrice;
  final num productRating;
  final String productImage;
  @override
  Widget build(BuildContext context) {
    return Container(
    width: MediaQuery.of(context).size.width * 0.40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: ColorHelper.mainColor.withOpacity(.5),
        width: 2,
      ),
    ),
    child: Stack(
      children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
            child: CachedNetworkImage(
                imageUrl: productImage,
              fit: BoxFit.fill,
              height: 100.r,
              width: MediaQuery.of(context).size.width * 0.5,

            ),
          ),
          // Container(
          //   height: 130,
          //   // width: MediaQuery.of(context).size.width * 0.4,
          //   decoration: const BoxDecoration(
          //     color: Colors.red,
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(18),
          //       topRight: Radius.circular(18),
          //     ),
          //
          //   ),
          //
          // ),
          Container(
            padding: const EdgeInsets.all(3),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                    color: ColorHelper.textColor,
                  ),
                  maxLines: 1,
                ),
                Text(productDescription,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                    color: ColorHelper.textColor,
                  ),
                  maxLines: 1,

                ),
                 SizedBox(height: 7.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("EGP $productPrice ",
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                        color: ColorHelper.textColor,
                      ),
                      maxLines: 1,
                    ),
                     SizedBox(width: 15.w,),
                    SizedBox(
                      width: 50.w,
                      child: Text("$productOldPrice",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationColor: ColorHelper.mainColor.withOpacity(.5),
                          fontSize: 14.sp,
                          color: ColorHelper.mainColor.withOpacity(.5),
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 7.h,),
                Row(
                  children: [
                    Text("Review ($productRating) ",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                        color: ColorHelper.textColor,
                      ),
                      maxLines: 1,
                    ),
                    const Icon(Icons.star,color: Colors.amber,)
                  ],
                ),
                 SizedBox(height: 7.h,),
              ],
            ),
          ),



        ],
      ),
        Positioned(
          right: 7,
          top: 7,
          child: IconButton.filled(
            color: ColorHelper.mainColor,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.white),

            ),
            onPressed: (){},
            icon: Icon(Icons.favorite_border,color: ColorHelper.mainColor,),
          ),
        ),
        Positioned(
          right: 7,
          bottom: 7,
          child: IconButton.filled(
            color: Colors.white,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(ColorHelper.mainColor),

            ),
            onPressed: (){},
            icon: const Icon(Icons.add),
          ),
        ),
      ]
    ),
          );
  }
}
