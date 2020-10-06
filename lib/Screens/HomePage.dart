import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramredesign/Data/Posts.dart';
import 'package:instagramredesign/Widgets/PostContainer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  List<Widget> buildPosts() {
    List<Widget> posts = new List<Widget>();
    for (Post post in homePosts) {
      posts.add(PostContainer(
        post: post,
      ));
    }
    return posts;
  }

  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 30,
          child: Image.asset('assets/logo.png'),
        ),
        centerTitle: true,
        leading: Container(
          padding: EdgeInsets.all(10),
          child: Image.asset('assets/igtv.png'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.send,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: buildPosts(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
            Icons.add,
            size: 40,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [const Color(0xffe43e68), const Color(0xfffaa449)],
            ),
          ),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        currentIndex: _currentTab,
        onTap: (index) {
          setState(() {
            _currentTab = index;
          });
        },
        activeColor: Color(0xffe43e68),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
