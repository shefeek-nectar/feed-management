import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SavedFeedsScreen extends StatelessWidget {
  const SavedFeedsScreen({super.key});

  static const String id = '/saved/feeds';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved Feeds"),
      ),
    );
  }
}
