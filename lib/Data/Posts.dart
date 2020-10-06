class Post {
  String imgUrl;
  String userName;
  String likes;
  String comments;
  String saves;

  Post({this.imgUrl, this.userName, this.likes, this.comments, this.saves});
}

final List<Post> homePosts = [
  Post(
    imgUrl: 'assets/conor.jpg',
    userName: 'conor_mcgregor',
    likes: '1.2m',
    comments: "245.5k",
    saves: '140.4k',
  ),
  Post(
    imgUrl: 'assets/cr7.jpg',
    userName: 'cristiano_ronaldo',
    likes: '5.2m',
    comments: "435.5k",
    saves: '230.4k',
  ),
  Post(
    imgUrl: 'assets/goggins.jpg',
    userName: 'david_goggins',
    likes: '1.1m',
    comments: "225.5k",
    saves: '130.4k',
  ),
  Post(
    imgUrl: 'assets/jock.jpg',
    userName: 'jocko_willink',
    likes: '1m',
    comments: "235.5k",
    saves: '30.4k',
  ),
  Post(
    imgUrl: 'assets/kabib.jpg',
    userName: 'kabib_nurmagomedov',
    likes: '2.3m',
    comments: "105.5k",
    saves: '70.4k',
  ),
];
