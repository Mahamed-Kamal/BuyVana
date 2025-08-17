import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowPriceAndQuantity extends StatelessWidget {
  final int? price;
  final int? quantity;

  const RowPriceAndQuantity({super.key, required this.price, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "EGP $price",
          style: MyStyles.font14DarkBlueRegular(),
        ),
        SizedBox(width: 16.w),
        Text(
          "$quantity %",
          style: MyStyles.font12BlueOpacityRegularWithLine(),
        ),
      ],
    );
  }
}
