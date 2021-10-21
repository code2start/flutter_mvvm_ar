import 'package:mvvm_api_ar/models/post_model.dart';

abstract class PostsRepository {
  Future<List<PostModel>> getAllPosts();
  Future<PostModel> getPostById(int id);
}
