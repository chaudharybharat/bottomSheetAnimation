import 'package:flutter/material.dart';

import '../Song.dart';

class SongContainer extends StatelessWidget {
  final Song song;
  final double topMargin;
  final double leftMargin;
  final double imgSize;
  final bool isCompleted;

  const SongContainer(
      { Key? key,
      required this.song,
        required this.topMargin,
        required this.leftMargin,
        required this.imgSize,
        required this.isCompleted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topMargin,
      left: leftMargin,
      right: 0,
      child: Row(
        children: [
          Container(
            height: imgSize,
            width: imgSize,
            child: Image.asset(
              'assets/${song.image}',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
              child: isCompleted
                  ? Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            song.title,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            song.year,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  : SizedBox.shrink())
        ],
      ),
    );
  }
}
