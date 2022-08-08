import "package:flutter/material.dart";

class FacebookScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}


class _HomeScreenState extends State<FacebookScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Facebook Feed",
        ),
        elevation: 10,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  displayFeed(
                      userFullName: "Stephen Torres Belmonte ",
                      userAvatar: "assets/images/profile_me.jpg",
                      uploadedTime: "1hr ago",
                      feedArticle:
                      "Stephen Torres Belmonte is a career level 12 in Accenture Inc.",
                      feedImage: ""),
            SizedBox(
              height: 20,
            ),
            displayFeed(
                userFullName: "Stephen Torres Belmonte ",
                userAvatar: "assets/images/profile_me.jpg",
                uploadedTime: "2hr ago",
                feedArticle:
                "Role of Application Development Associate",
                feedImage: ""),
            SizedBox(
              height: 20,
            ),
            displayFeed(
                userFullName: "Stephen Torres Belmonte ",
                userAvatar: "assets/images/profile_me.jpg",
                uploadedTime: "3hr ago",
                feedArticle:
                "ole of Application Development Associate",
                feedImage: ""),
                ],
              )
            ),);
  }
}
  Widget displayFeed({required String userFullName,
    required String userAvatar,
    required String uploadedTime,
    required String feedArticle,
    required String feedImage}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(userAvatar),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      userFullName,
                      style: TextStyle(

                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      uploadedTime,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                right: 10,
              ),
              child: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
                size: 30,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          feedArticle,
          style: TextStyle(color: Colors.grey[600], height: 1.4),
        ),
        SizedBox(
          height: 15,
        ),
        // feedImage == null
        //     ? null
        //     : Container(
        //         height: 200,
        //         decoration: BoxDecoration(
        //           color: Colors.black,
        //           borderRadius: BorderRadius.circular(10),
        //         ),
        //         child: Image.asset(
        //           feedImage,
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 17,
                  ),
                ),
                Transform.translate(
                  offset: Offset(-5, 0),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "2.5k",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "400",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Comments",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }