import 'package:flutter/material.dart';

import 'color_helper.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
    required this.productOldPrice,
    required this.productRating,
  });

  final String productName;
  final String productDescription;
  final num productPrice;
  final num productOldPrice;
  final num productRating;
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
          Container(
            height: 130,
            // width: MediaQuery.of(context).size.width * 0.4,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),

            ),

          ),
          Container(
            padding: const EdgeInsets.all(3),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                    color: ColorHelper.textColor,
                  ),
                  maxLines: 1,
                ),
                Text(productDescription,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                    color: ColorHelper.textColor,
                  ),
                  maxLines: 1,

                ),
                SizedBox(height: 7,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("EGP $productPrice ",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                        color: ColorHelper.textColor,
                      ),
                      maxLines: 1,
                    ),
                    SizedBox(width: 20,),
                    Text("$productOldPrice",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        decorationColor: ColorHelper.mainColor.withOpacity(.5),
                        fontSize: 14,
                        color: ColorHelper.mainColor.withOpacity(.5),
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
                SizedBox(height: 7,),
                Text("Review ($productRating)",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                    color: ColorHelper.textColor,
                  ),
                  maxLines: 1,
                ),
                SizedBox(height: 7,),
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
