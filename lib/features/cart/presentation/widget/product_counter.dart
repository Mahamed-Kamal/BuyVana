import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCounter extends StatefulWidget {
     int productCounter;
     ProductCounter({super.key,required this.productCounter});

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(30.r),
        color: ColorsManager.mainBlue,
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: (){
                if(widget.productCounter != 1){
                  setState(() {
                    widget.productCounter--;
                  });
                }
              },
              icon: Icon(Icons.remove_circle_outline,color: ColorsManager.myWhite)),
          Text('${widget.productCounter}',style: MyStyles.font18BlueMedium().copyWith(color: ColorsManager.myWhite)),
          IconButton(
              onPressed: (){
                setState(() {
                  widget.productCounter++;
                });
              },
              icon: Icon(Icons.add_circle_outline,color: ColorsManager.myWhite)
          ),
        ],
      ),
    );
  }
}
