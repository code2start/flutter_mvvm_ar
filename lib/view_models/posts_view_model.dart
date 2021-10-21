import 'package:dio/dio.dart';
import 'package:mvvm_api_ar/models/post_model.dart';
import 'package:mvvm_api_ar/repositories/posts/post_repository.dart';
import 'package:mvvm_api_ar/repositories/posts/posts_api.dart';
import 'package:mvvm_api_ar/view_models/post_view_model.dart';

class PostsViewModel {
  final String title = "All Posts";
  PostsRepository? postsRepository;
  PostsViewModel({this.postsRepository});

  Future<List<PostViewModel>> fetchAllPosts() async {
    List<PostModel> list = await postsRepository!.getAllPosts();
    return list.map((post) => PostViewModel(postModel: post)).toList();
  }
}
