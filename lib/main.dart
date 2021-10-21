import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_api_ar/views/posts/posts_view.dart';

main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostsView(),
    );
  }
}
