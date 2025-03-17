import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewBlogPage extends StatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const AddNewBlogPage());
  const AddNewBlogPage({super.key});

  @override
  State<AddNewBlogPage> createState() => _AddNewBlogPageState();
}

class _AddNewBlogPageState extends State<AddNewBlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.done_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            DottedBorder(
              color: AppPallete.greyColor,
              dashPattern: [
                10,
                4,
              ],
              strokeWidth: 2,
              strokeCap: StrokeCap.round,
              borderType: BorderType.RRect,
              radius: Radius.circular(10),
              child: Container(
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        CupertinoIcons.folder,
                        size: 40,
                        // color: AppPallete.primaryColor,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Select you Image',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  'Technology',
                  'Business',
                  'Programming',
                  'Entertainment',
                ]
                    .map(
                      (e) => Chip(
                        label: Text(e),
                        labelStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
