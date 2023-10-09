import 'package:flutter/material.dart';
import 'package:subspace/Apis/bApi.dart';
import 'package:subspace/Screen/bFullScreen_page.dart';


class BlogPage extends StatelessWidget {
  final Blog blog;
  const BlogPage({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => BlogScreenPage(
                  blog: blog,
                )));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 220,
            width: double.infinity,
            child: Column(children: [
              Container(
                height: 155,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: NetworkImage(blog.imageUrl), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  blog.title,

                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
