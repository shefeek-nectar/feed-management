

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SavedFeedsListBuilder extends StatelessWidget {
  const SavedFeedsListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      itemCount: 5,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 13.sp,
        );
      },
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 10.sp,
            ),
            Container(
              height: 40.sp,
              width: 40.sp,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            SizedBox(
              width: 8.sp,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Feed Title",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.sp, vertical: 2.sp),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Text(
                      "Alarms",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark,
                color: Colors.grey,
              ),
            )
          ],
        );
      },
    );
  }
}
