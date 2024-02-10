import 'package:feed_management/screens/home_screen.dart';
import 'package:feed_management/widgets/comment_field_widget.dart';
import 'package:feed_management/widgets/comment_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class PostDetailsScreen extends StatelessWidget {
  const PostDetailsScreen({super.key});

  static String id = "postDetails";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Feed",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              shrinkWrap: true,
              children: [
                const FeedCard(),
                SizedBox(
                  height: 5.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.sp),
                  child: Text(
                    "Comments",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                  ),
                ),
                const CommentFields(
                    userName: "Peter",
                    comment: "Hello",
                    commentTime: "2:30 PM"),
                const Divider(),
                const CommentFields(
                    userName: "Peter",
                    comment: "Hello",
                    commentTime: "2:30 PM"),
                const Divider(),
                const CommentFields(
                    userName: "Peter",
                    comment: "Hello",
                    commentTime: "2:30 PM"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.sp),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12.sp,
                  backgroundImage: const AssetImage('assets/BenzActros.jpeg',
                      package: "feed_management"),
                ),
                SizedBox(
                  width: 5.sp,
                ),
                BuildCommentTextfield(hintText: "Comment"),
              ],
            ),
          ),
          SizedBox(
            height: 15.sp,
          )
        ],
      ),
    );
  }
}
