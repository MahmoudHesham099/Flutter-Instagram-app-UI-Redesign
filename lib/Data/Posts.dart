class Post {
  String imgUrl;
  String userName;
  String likes;
  String comments;
  String saves;
  List<String> imgs;
  Post(
      {this.imgUrl,
      this.userName,
      this.likes,
      this.comments,
      this.saves,
      this.imgs});
}

final List<Post> homePosts = [
  Post(
    imgUrl: 'assets/conor.jpg',
    userName: 'conor_mcgregor',
    likes: '1.2m',
    comments: "245.5k",
    saves: '140.4k',
    imgs: [
      'assets/post1.jpg',
      'assets/post2.jpg',
      'assets/post3.jpg',
      'assets/post4.jpg',
      'assets/post5.jpg',
      'assets/post6.jpg',
      'assets/post7.jpeg',
      'assets/post8.jpg',
      'assets/post9.jpg',
      'assets/post10.jpg',
    ],
  ),
  Post(
    imgUrl: 'assets/cr7.jpg',
    userName: 'cristiano_ronaldo',
    likes: '5.2m',
    comments: "435.5k",
    saves: '230.4k',
    imgs: [
      'assets/post1.jpg',
      'assets/post2.jpg',
      'assets/post3.jpg',
      'assets/post4.jpg',
      'assets/post5.jpg',
      'assets/post6.jpg',
      'assets/post7.jpeg',
      'assets/post8.jpg',
      'assets/post9.jpg',
      'assets/post10.jpg',
    ],
  ),
  Post(
    imgUrl: 'assets/goggins.jpg',
    userName: 'david_goggins',
    likes: '1.1m',
    comments: "225.5k",
    saves: '130.4k',
    imgs: [
      'assets/post1.jpg',
      'assets/post2.jpg',
      'assets/post3.jpg',
      'assets/post4.jpg',
      'assets/post5.jpg',
      'assets/post6.jpg',
      'assets/post7.jpeg',
      'assets/post8.jpg',
      'assets/post9.jpg',
      'assets/post10.jpg',
    ],
  ),
  Post(
    imgUrl: 'assets/jock.jpg',
    userName: 'jocko_willink',
    likes: '1m',
    comments: "235.5k",
    saves: '30.4k',
    imgs: [
      'assets/post1.jpg',
      'assets/post2.jpg',
      'assets/post3.jpg',
      'assets/post4.jpg',
      'assets/post5.jpg',
      'assets/post6.jpg',
      'assets/post7.jpeg',
      'assets/post8.jpg',
      'assets/post9.jpg',
      'assets/post10.jpg',
    ],
  ),
  Post(
    imgUrl: 'assets/kabib.jpg',
    userName: 'kabib_nurmagomedov',
    likes: '2.3m',
    comments: "105.5k",
    saves: '70.4k',
    imgs: [
      'assets/post1.jpg',
      'assets/post2.jpg',
      'assets/post3.jpg',
      'assets/post4.jpg',
      'assets/post5.jpg',
      'assets/post6.jpg',
      'assets/post7.jpeg',
      'assets/post8.jpg',
      'assets/post9.jpg',
      'assets/post10.jpg',
    ],
  ),
];
