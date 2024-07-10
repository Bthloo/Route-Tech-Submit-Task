import 'package:flutter/material.dart';

import '../../../../../core/general_component/color_helper.dart';
import '../../../../../core/general_component/custom_form_field.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomFormField(
            prefix:Icon(Icons.search,color: ColorHelper.mainColor,),
            hintText: 'What do you search for?',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter a valid value';
              }
              return null;
            },
            controller: TextEditingController(),

          ),
        ),
        IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.shopping_cart,color: ColorHelper.mainColor,)
        )
      ],
    );
  }
}
