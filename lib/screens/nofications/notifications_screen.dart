import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  static const String id = "notifications";

  List notificationsList = [
    {
      "title": "Today",
      "data": [
        {
          "title": "East Corner building",
          "description":
              "Consumption trend of March is 25% more compared to previous year. This might be due to rise in ambient temperature.",
          "time": "3 minutes ago",
        },
        {
          "title": "East Corner building",
          "description":
              "Consumption trend of March is 25% more compared to previous year. This might be due to rise in ambient temperature.",
          "time": "5 minutes ago",
        },
      ],
    },
    {
      "title": "Last 7 days",
      "data": [
        {
          "title": "East Corner building",
          "description":
              "Consumption trend of March is 25% more compared to previous year. This might be due to rise in ambient temperature.",
          "time": "28/02/2023 10:00 AM",
        },
        {
          "title": "East Corner building",
          "description":
              "Consumption trend of March is 25% more compared to previous year. This might be due to rise in ambient temperature.",
          "time": "28/02/2023 10:00 AM",
        },
        {
          "title": "East Corner building",
          "description":
              "Consumption trend of March is 25% more compared to previous year. This might be due to rise in ambient temperature.",
          "time": "28/02/2023 10:00 AM",
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 5.sp,
          );
        },
        itemBuilder: (context, index) {
          var map = notificationsList[index];

          String title = map['title'];
          List list = map['data'];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5.sp, top: 10.sp, bottom: 3.sp),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ...List.generate(
                list.length,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.sp),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 3.sp, horizontal: 7.sp),
                    margin: EdgeInsets.symmetric(horizontal: 5.sp),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          minRadius: 13.sp,
                        ),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    list[index]['title'],
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Text(
                                  list[index]['time'],
                                  style: TextStyle(
                                    fontSize: 7.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.sp,
                            ),
                            Text(
                              list[index]?['description'] ?? "",
                              style: TextStyle(
                                fontSize: 8.sp,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )),
                        SizedBox(
                          width: 5.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: 2,
      ),
    );
  }
}
