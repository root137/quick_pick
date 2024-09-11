import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:quick_pick/src/screens/home_page.dart';
import 'package:quick_pick/src/screens/item_list_page.dart';
import 'package:quick_pick/src/screens/shuffle_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// path to the directory where the box files are stored
  final path = Directory.current.path;

  /// Initialize Hive
  Hive.init(path);

  runApp(const QuickPick());
}

class QuickPick extends StatelessWidget {
  const QuickPick({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: const [],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/item-list': (context) => const ItemListPage(),
          '/shuffle': (context) => const ShufflePage(),
        },
      ),
    );
  }
}
