import 'package:flutter/material.dart';
import 'package:mvvm_api_ar/repositories/posts/posts_api.dart';
import 'package:mvvm_api_ar/repositories/posts/posts_fake.dart';
import 'package:mvvm_api_ar/view_models/posts_view_model.dart';

class PostsView extends StatelessWidget {
  PostsView({Key? key}) : super(key: key);
  //Dependency Injection
  var postsViewModel = PostsViewModel(postsRepository: PostsAPI());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postsViewModel.title),
      ),
      body: Center(
        child: TextButton(
          child: Text('Load data'),
          onPressed: () {
            postsViewModel.fetchAllPosts();
          },
        ),
      ),
    );
  }
}
