import 'package:dashboard/pages/widgets/big_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class CustomCardText extends StatelessWidget {
  const CustomCardText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigTextWidget(text: "From",size: 13,),
            BigTextWidget(text: "Nairobi",color: Colors.blue.shade800,size: 22,)
          ],
          
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigTextWidget(text: "3h 50m",color: Colors.black26,size: 13,),
            BigTextWidget(text: "Fri 8 Apr",color: Colors.black26,size: 13,)
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BigTextWidget(text: "To",size: 13,color: Colors.black26,),
            BigTextWidget(text: "Nakuru",size: 22, color: Colors.blue.shade700,)
          ],
        )
      ],
    );
  }
}
