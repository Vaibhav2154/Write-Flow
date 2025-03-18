import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/core/utils/caclulate_reading_time.dart';
import 'package:blog_app/features/blog/domain/entities/blog.dart';
import 'package:blog_app/features/blog/presentation/pages/blog_viewer_page.dart';
import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;
  final Color color;
  const BlogCard({super.key, required this.blog, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, BlogViewerPage.route(blog));
      },
      child: Container(
        height: 200,
        width: double.infinity,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(16).copyWith(bottom: 4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _seletecTopics(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(width: 10),
                Text(
                  '${blog.updatedAt}'.substring(0, 10),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                  ],
                ),
                Text(
                  'Reading Time: ${calculateReadingTime(blog.content)} min',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _seletecTopics() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _blogTitle(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: blog.topics
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Chip(
                      label: Text(e),
                      color: MaterialStatePropertyAll(
                        AppPallete.primaryFgColor,
                      ),
                      labelStyle: TextStyle(
                        fontSize: 16,
                      ),
                      side: null,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _blogTitle() {
    return Text(blog.title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ));
  }
}