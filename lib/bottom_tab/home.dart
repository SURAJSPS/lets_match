import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lets_match/util/user_match_util.dart';
import 'package:lets_match/widget/user_match_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    // color: Colors.black,
                    width: MediaQuery.of(context).size.width / 2,
                    child: _getUser(),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    // color: Colors.blue,
                    width: MediaQuery.of(context).size.width / 2,
                    child: _getMatchUser(context),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            right: MediaQuery.of(context).size.width / 4,
            top: MediaQuery.of(context).size.height / 4,
            child: Container(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Icon(
                    CupertinoIcons.heart,
                    color: Colors.pink,
                    size: 80,
                  ),
                  Positioned(
                    top: 20,
                    child: Text(
                      '70 %',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                    left: 20,
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.width / 2,
              width: MediaQuery.of(context).size.width / 2,
              // color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _getMatchUser(context) {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        // color: Colors.blue,
        height: MediaQuery.of(context).size.height / 9.99,
      ),
      Container(
        height: MediaQuery.of(context).size.height / 1.94,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return UserMatchCard(
              userMatchModel: UserMatchUtil.list[index],
            );
          },
          itemCount: UserMatchUtil.list.length,
        ),
      ),
    ],
  );
}

Widget _getUser() {
  return Container(
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
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
                "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
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
          'Uddesh Rajoriya',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Gwalior, India',
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
                  text: 'Hindu',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.pink)),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            print('object');
          },
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(20)),
            child: Text(
              'My Vistors',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        )
      ],
    ),
  );
}
