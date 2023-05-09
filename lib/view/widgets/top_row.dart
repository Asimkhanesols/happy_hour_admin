

import '../../core/utils/export.dart';

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
                Text('Hello, George', style: TextStyles.h1?.copyWith(fontSize: 12,fontWeight: FontWeight.bold)),
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
