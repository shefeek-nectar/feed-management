import 'package:feed_management/feed_management.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
          appBarTheme: const AppBarTheme(
            centerTitle: false,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
          ),
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          SavedFeedsScreen.id: (context) => SavedFeedsScreen(),
          NotificationScreen.id: (context) => NotificationScreen(),
        },
        // initialRoute: ,
        home: const HomeScreen(),
      ),
    );
  }
}
