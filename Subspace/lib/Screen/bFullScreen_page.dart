import 'package:flutter/material.dart';
import 'package:subspace/Apis/bApi.dart';


class BlogScreenPage extends StatefulWidget {
  final Blog blog;
  const BlogScreenPage({super.key, required this.blog});

  @override
  State<BlogScreenPage> createState() => _BlogScreenPageState();
}

class _BlogScreenPageState extends State<BlogScreenPage> {
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
          elevation: 4,
          title: Text(
            'Blog Page',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      widget.blog.title,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(
                              widget.blog.imageUrl),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      '------ * -------',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: 'Elegant Blog ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          )
                      ),
                      TextSpan(
                          text: 'is a term often used to describe a type of blog template or theme for websites.\n'
                      ),
                      TextSpan(
                          text:'Sophisticated Design: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          )
                      ),
                      TextSpan(
                          text: 'An elegant blog template typically features a clean and polished design. It may use stylish typography, well-chosen color schemes, and high-quality images to create a visually pleasing website. \n'
                      ),
                      TextSpan(
                          text:'User-Friendly Layout: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      TextSpan(
                          text: 'These templates are designed with user experience in mind. They often have a well-organized layout that makes it easy for visitors to navigate the blog and find the content they are interested in.\n'
                      ),
                      TextSpan(
                          text:'Responsive: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      TextSpan(
                          text:'Elegant blog templates are usually responsive, meaning they adapt to different screen sizes and devices. This ensures that your blog looks good and functions well on desktop computers, tablets, and mobile phones.\n'
                      ),TextSpan(
                          text: 'Customization Options: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      TextSpan(
                          text:'Most "Elegant Blog" templates come with customization options that allow you to personalize the design to match your brand or personal style. You can often customize colors, fonts, and other visual elements.\n'
                      )
                    ]),

                  )
                ]),
          ),
        ),
      ),
    );
  }
}