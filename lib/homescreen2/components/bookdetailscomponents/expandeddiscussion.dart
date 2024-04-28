import "package:flutter/material.dart";

List<ExpandedDiscussionTileData> expandedDiscussionTilesData = [
  ExpandedDiscussionTileData(
    username: "username1",
    comment:
        "Just joined Bookworm and I'm already hooked! 📚💕 The recommendations are on point.",
    likes: 10,
    onReplyTap: () {
      // Handle reply button tap
    },
  ),
  ExpandedDiscussionTileData(
    username: "username2",
    comment:
        "Just joined Bookworm and I'm already hooked! 📚💕 The recommendations are on point.",
    likes: 20,
    onReplyTap: () {
      // Handle reply button tap
    },
  ),
  ExpandedDiscussionTileData(
    username: "username2",
    comment:
        "Just joined Bookworm and I'm already hooked! 📚💕 The recommendations are on point.",
    likes: 30,
    onReplyTap: () {
      // Handle reply button tap
    },
  ),
  ExpandedDiscussionTileData(
    username: "username2",
    comment:
        "Just joined Bookworm and I'm already hooked! 📚💕 The recommendations are on point.",
    likes: 40,
    onReplyTap: () {
      // Handle reply button tap
    },
  ),
  // Add more ExpandedDiscussionTileData objects to the list
];

class ExpandedDiscussionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: expandedDiscussionTilesData.length,
        itemBuilder: (context, index) {
          return ExpandedDiscussionTile(
            username: expandedDiscussionTilesData[index].username,
            comment: expandedDiscussionTilesData[index].comment,
            likes: expandedDiscussionTilesData[index].likes,
            onReplyTap: expandedDiscussionTilesData[index].onReplyTap,
          );
        },
      ),
    );
  }
}

class ExpandedDiscussionTile extends StatelessWidget {
  final String username;
  final String comment;
  final int likes;
  final VoidCallback onReplyTap;

  ExpandedDiscussionTile({
    required this.username,
    required this.comment,
    required this.likes,
    required this.onReplyTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            minRadius: 18,
            maxRadius: 18,
            backgroundColor: Colors.black.withOpacity(0.1),
            child: Container(
                height: 26,
                width: 26,
                color: Colors.transparent,
                child: Image.asset("assets/icons/avatar2.png")),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // width: 200,
                width: MediaQuery.of(context).size.width * 0.7,
                padding:
                    EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(36, 36, 36, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: TextStyle(
                        color: Color.fromRGBO(198, 198, 198, 1),
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      comment,
                      style: TextStyle(
                        color: Color.fromRGBO(198, 198, 198, 1),
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    '$likes ',
                    style: TextStyle(
                      color: Color.fromRGBO(158, 15, 58, 1),
                      fontSize: 6,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'likes',
                    style: TextStyle(
                      color: Color.fromRGBO(198, 198, 198, 1),
                      fontSize: 6,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '👍',
                    style: TextStyle(
                      color: Color.fromRGBO(198, 198, 198, 1),
                      fontSize: 6,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExpandedDiscussionTileData {
  final String username;
  final String comment;
  final int likes;
  final VoidCallback onReplyTap;

  ExpandedDiscussionTileData({
    required this.username,
    required this.comment,
    required this.likes,
    required this.onReplyTap,
  });
}
