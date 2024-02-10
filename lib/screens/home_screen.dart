import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = "homeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Feed",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      // backgroundColor: Colors.grey.shade300,
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 10.sp,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.sp, vertical: 8.sp),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 12.sp,
                            backgroundImage: const AssetImage(
                                'assets/BenzActros.jpeg',
                                package: "feed_management"),
                          ),
                          SizedBox(
                            width: 8.sp,
                          ),
                          Text(
                            "Benz Actros",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.sp),
                            child: Icon(
                              Icons.circle,
                              size: 3.sp,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "3 hours ago",
                            style: TextStyle(
                                fontSize: 8.sp, color: Colors.grey.shade700),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz))
                  ],
                ),
                Container(
                  height: 180.sp,
                  // width: 350,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/BenzActros.jpeg',
                            package: "feed_management"),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 45.sp,
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 15.sp,
                                ),
                                Positioned(
                                  left: 12.sp,
                                  child: Icon(
                                    Icons.thumb_up,
                                    color: Colors.blue,
                                    size: 15.sp,
                                  ),
                                ),
                                Positioned(
                                  left: 24.sp,
                                  child: Icon(
                                    Icons.mood,
                                    color: Colors.yellow,
                                    size: 15.sp,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Text("6"),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.comment,
                          ),
                          SizedBox(
                            width: 3.sp,
                          ),
                          const Text("6"),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.sp, vertical: 5.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ReactionButton(
                            onReactionChanged: (value) {},
                            reactions: const <Reaction<String>>[
                              Reaction<String>(
                                value: 'like',
                                icon: Icon(
                                  Icons.thumb_up_rounded,
                                  color: Colors.blue,
                                ),
                              ),
                              Reaction<String>(
                                value: 'love',
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                            itemSize: Size(25.sp, 25.sp),
                          ),
                          SizedBox(
                            width: 18.sp,
                          ),
                          const Icon(Icons.mode_comment_outlined),
                          SizedBox(
                            width: 18.sp,
                          ),
                          const Icon(Icons.send_rounded),
                        ],
                      ),
                      const Icon(Icons.bookmark_border_rounded)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.sp),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: TextStyle(fontSize: 11.sp),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.sp),
                  child: Text(
                    "#trending #trending #trending #trending #trending #trending #trending #trending #trending",
                    style: TextStyle(color: Colors.blue.shade900),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
