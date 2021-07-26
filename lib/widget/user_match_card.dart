import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lets_match/model/user_match_model.dart';

// ignore: must_be_immutable
class UserMatchCard extends StatelessWidget {
  UserMatchModel? userMatchModel;

  UserMatchCard({Key? key, this.userMatchModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                "${userMatchModel!.image}",
                height: 190,
                width: 190,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "${userMatchModel!.name}",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "${userMatchModel!.location}",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
        RichText(
          text: TextSpan(
            text: 'Religion: ',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),
            children: <TextSpan>[
              TextSpan(
                text: "${userMatchModel!.religion}",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                icon: Icon(
                  CupertinoIcons.heart,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                icon: Icon(
                  CupertinoIcons.down_arrow,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
