import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:flutter/material.dart';

import '../../core/utils/assets_constants.dart';
import '../../core/utils/styles.dart';

class TopRow extends StatelessWidget {
  const TopRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),

        Row(
          children: [
            Container(
              height: 60,
              width: 80,

              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(imgProfile),
            ),
            5.pw,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello, George', style: TextStyles.smallBlackText),
                5.ph,
                Text('admin', style: TextStyles.greyMostSmallBodyText)
              ],
            ),
          ],
        )
      ],
    );
  }
}
