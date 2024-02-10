import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:sizer/sizer.dart';

void showCommentsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return SizedBox(
        height: 80.h,
        child: Column(
          children: [
            const ListTile(
              title: Text(
                "Comments",
                style: TextStyle(
                  // fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Expanded(
                child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 8.sp,
                );
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.sp),
                  child: Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(
                        width: 5.sp,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(child: Text("Comment")),
                                Text(
                                  "2 minutes ago",
                                  style: TextStyle(
                                    fontSize: 7.sp,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "mansoor@nectarit",
                              style: TextStyle(
                                fontSize: 8.sp,
                                color: Colors.grey,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Reply"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );

                // return Column(
                //   children: [
                //     ListTile(
                //       leading: CircleAvatar(),
                //       title: const Text("Comment"),
                //       subtitle: const Text("mansoor@nectarit"),
                //       trailing: Column(
                //         children: [
                //           Text(
                //             "2 minutes ago",
                //             style: TextStyle(
                //               fontSize: 7.sp,
                //               color: Colors.grey.shade400,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //     TextButton(onPressed: () {}, child: Text("Reply"))
                //   ],
                // );
              },
            ))
          ],
        ),
      );
    },
  );
}
