import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CommentFields extends StatelessWidget {
  const CommentFields({
    super.key,
    required this.userName,
    required this.comment,
    required this.commentTime,
  });

  // final GetAllComments comment;

  final String userName;
  final String comment;
  final String commentTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.sp),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/BenzActros.jpeg',
                package: "feed_management"),
          ),
          SizedBox(
            width: 5.sp,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: const TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                comment,
                // style: TextStyle(fontSize: 6.sp),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                commentTime,
                style: TextStyle(fontSize: 8.sp, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
