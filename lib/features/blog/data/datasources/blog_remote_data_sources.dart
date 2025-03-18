import 'package:blog_app/core/error/exception.dart';
import 'package:blog_app/features/blog/data/models/blog_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class BlogRemoteDataSource {
  Future<List<BlogModel>> uploadBlog(BlogModel blog);
}


class BlogRemoteDataSourcImpl implements BlogRemoteDataSource{
  final SupabaseClient supabaseClient;

  BlogRemoteDataSourcImpl(this.supabaseClient);


  @override
  Future<List<BlogModel>> uploadBlog(BlogModel blog) async{
    try{
      supabaseClient.from('blogs').insert();
    }catch(e){
      throw ServerExpection(e.toString());
      }
  }

}


