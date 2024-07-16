import 'package:flutter/material.dart';
import 'package:olx_project/domain/repository.dart';
import 'package:olx_project/post_page.dart';

import 'di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  return runApp(const OlxApp());
}

class OlxApp extends StatelessWidget {
  const OlxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          body: PostPage(repository: sl<Repository>())),
    );
  }
}
