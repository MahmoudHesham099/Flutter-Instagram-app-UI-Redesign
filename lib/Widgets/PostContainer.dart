import 'package:flutter/material.dart';
import 'package:instagramredesign/Data/Posts.dart';
import 'package:instagramredesign/Screens/ProfileScreen.dart';

class PostContainer extends StatefulWidget {
  final Post post;

  const PostContainer({Key key, this.post}) : super(key: key);
  @override
  _PostContainerState createState() => _PostContainerState();
}

class _PostContainerState extends State<PostContainer> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffe43e68), Color(0xfffaa449)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProfileScreen(
                          post: widget.post,
                        )));
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(widget.post.imgUrl),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.post.userName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient,
                    ),
                  )
                ],
              ),
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 270,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(widget.post.imgUrl),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Container(
                  width: 20,
                  height: 30,
                  child: Image.asset('assets/heart.png'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.post.likes,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 30,
                  child: Icon(Icons.comment),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.post.comments,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 30,
                  child: Icon(Icons.save),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.post.saves,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
