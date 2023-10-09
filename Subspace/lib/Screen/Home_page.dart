import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subspace/Apis/bPage.dart';
import 'package:subspace/Provider/bProvider.dart';
import 'package:subspace/Screen/bScreen.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService apiService = ApiService();
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Provider.of<BlogProvider>(context, listen: false).getAllBlogs();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff06142E),
                  Color(0xffB3358),
                  Color(0xff473E66),
                  Color(0xffBD83B8),
                  Color(0xffF5D7DB),
                  Color(0xffF1916D)
                ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 5,
            leading: Image.asset(
              'Images/blog.png',
              height: 10,
              width: 10,
            ),
            actions: [Icon(Icons.search)],
            title: Center(
              child: Text(
                'Blog Explorer',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          body: Consumer<BlogProvider>(builder: (context, value, child) {
            if (value.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: value.blog.length,
              itemBuilder: (context, index) {
                final blog = value.blog[index];
                return BlogPage(
                  blog: blog,
                );
              },
            );
          }),
        ));
  }
}