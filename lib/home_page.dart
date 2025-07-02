import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> posts = [
    {
      "imageUrl": Icons.account_circle,
      "userName": "alex_01",
      "isVerified": true,
      "postTime": "2m",
      "message": "Just saw a UFO... or maybe it was just a frisbee. 🤔",
      "replies": 3,
      "likes": 27
    },
    {
      "imageUrl": Icons.face,
      "userName": "brielle_c",
      "isVerified": false,
      "postTime": "5m",
      "message": "Coffee is life. Who’s with me? ☕️",
      "replies": 5,
      "likes": 49
    },
    {
      "imageUrl": Icons.pets,
      "userName": "doggoKing",
      "isVerified": true,
      "postTime": "10m",
      "message": "My dog just barked at the mirror again. 😂",
      "replies": 1,
      "likes": 88
    },
    {
      "imageUrl": Icons.emoji_emotions,
      "userName": "sunny_side",
      "isVerified": false,
      "postTime": "20m",
      "message": "Rainy days make the best naps. 😴",
      "replies": 0,
      "likes": 15
    },
    {
      "imageUrl": Icons.cake,
      "userName": "birthdaybabe",
      "isVerified": true,
      "postTime": "30m",
      "message": "It’s my birthday! 🎉🎂",
      "replies": 20,
      "likes": 300
    },
    {
      "imageUrl": Icons.directions_bike,
      "userName": "cycleDude",
      "isVerified": false,
      "postTime": "40m",
      "message": "Biked 20km today. Legs = jelly 🦵",
      "replies": 4,
      "likes": 64
    },
    {
      "imageUrl": Icons.travel_explore,
      "userName": "wanderlust_jane",
      "isVerified": true,
      "postTime": "1h",
      "message": "Currently lost in Tokyo... and loving it 🗺️",
      "replies": 11,
      "likes": 150
    },
    {
      "imageUrl": Icons.music_note,
      "userName": "lofi_beats",
      "isVerified": false,
      "postTime": "2h",
      "message": "Late night coding + lofi = perfection 🎧",
      "replies": 6,
      "likes": 90
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Icon(
          Icons.strikethrough_s_rounded,
          size: 60,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: List.generate(posts.length, (index) {
          return Container(
            width: size.width,
            padding: EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Icon(posts[index]['imageUrl']),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(posts[index]['userName']),
                          SizedBox(
                            width: 10,
                          ),
                          posts[index]['isVerified']
                              ? Icon(
                                  Icons.verified,
                                  color: Colors.blue,
                                )
                              : SizedBox.shrink(),
                        ],
                      ),
                      Text(posts[index]['message']),
                      Row(
                        children: [
                          Icon(Icons.heart_broken_outlined),
                          Icon(Icons.message_outlined),
                          Icon(Icons.replay_sharp),
                          Icon(Icons.send_outlined),
                        ],
                      ),
                      Text(
                          '${posts[index]['replies']} replies . ${posts[index]['likes']} likes')
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(posts[index]['postTime']),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        posts.removeAt(index);
                        setState(() {});
                      },
                      child: Icon(Icons.more_horiz),
                    ),
                  ],
                )
              ],
            ),
          );
        })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          posts.add(
            {
              "imageUrl": Icons.music_note,
              "userName": "lofi_beats",
              "isVerified": false,
              "postTime": "2h",
              "message": "Late night coding + lofi = perfection 🎧",
              "replies": 6,
              "likes": 90
            },
          );
          setState(() {});
        },
        child: Text("Add"),
      ),
    );
  }
}
