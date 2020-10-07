import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramredesign/Data/Posts.dart';

class ProfileScreen extends StatefulWidget {
  final Post post;

  const ProfileScreen({Key key, this.post}) : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffe43e68), Color(0xfffaa449)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  List<Widget> buildStories() {
    List<Widget> stories = new List<Widget>();
    for (Post story in homePosts) {
      stories.add(
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xffe43e68), const Color(0xfffaa449)],
            ),
            borderRadius: BorderRadius.circular(35),
          ),
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Center(
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(story.imgUrl),
            ),
          ),
        ),
      );
    }
    return stories;
  }

  List<Widget> buildProfilePosts() {
    List<Widget> posts = new List<Widget>();
    for (String img in widget.post.imgs) {
      posts.add(
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(img),
              )),
        ),
      );
    }
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          widget.post.userName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()..shader = linearGradient,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color(0xffe43e68), const Color(0xfffaa449)],
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(widget.post.imgUrl),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.post.userName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'MMA',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'more info',
                        style: TextStyle(fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '10',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'posts',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '1.2M',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'followers',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '132',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'following',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xffe43e68),
                            const Color(0xfffaa449)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.send,
                      size: 30,
                      color: Colors.black,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/pp.jpg'),
                          )),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Icon(
                        Icons.add_circle,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  children: buildStories(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Wrap(
              direction: Axis.horizontal,
              children: buildProfilePosts(),
            ),
          )
        ],
      ),
    );
  }
}
