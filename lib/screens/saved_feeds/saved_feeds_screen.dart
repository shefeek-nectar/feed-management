import 'package:flutter/material.dart';
import 'widgets/saved_feeds_list_builder.dart';

class SavedFeedsScreen extends StatelessWidget {
  SavedFeedsScreen({super.key});

  static const String id = '/saved/feeds';

  final List<String> categories = [
    "All",
    "Alarms",
    "Assets",
    "Documents",
    "Communities",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Saved Feeds"),
          bottom: buildTabbar(),
        ),
        body: TabBarView(
          children: List.generate(
            categories.length,
            (index) {
              return Builder(
                builder: (context) {
                  // print(index);
                  return const SavedFeedsListBuilder();
                },
              );
            },
          ),
        ),
      ),
    );
  }

  // =============================================================
  // Build TabBar

  TabBar buildTabbar() {
    return TabBar(
      isScrollable: true,
      labelStyle: const TextStyle(
        color: Colors.black,
      ),
      tabs: List.generate(
        categories.length,
        (index) => Tab(
          text: categories[index],
        ),
      ),
    );
  }
}
