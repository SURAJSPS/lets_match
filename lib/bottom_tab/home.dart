import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lets_match/model/user_match_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

final List<UserMatchModel> imgList = [
  UserMatchModel(
      image:
          'https://secure.gravatar.com/avatar/ea4a232b2a8c2b116ef27574d8c0abb7?s=400&d=mm&r=g',
      location: 'Usa',
      name: 'Rina',
      religion: 'Hindu'),
  UserMatchModel(
      image:
          'https://secure.gravatar.com/avatar/ea4a232b2a8c2b116ef27574d8c0abb7?s=400&d=mm&r=g',
      location: 'Usa',
      name: 'Rina',
      religion: 'Hindu'),
  UserMatchModel(
      image:
          'https://secure.gravatar.com/avatar/ea4a232b2a8c2b116ef27574d8c0abb7?s=400&d=mm&r=g',
      location: 'Usa',
      name: 'Rina',
      religion: 'Hindu'),
  UserMatchModel(
      image:
          'https://secure.gravatar.com/avatar/ea4a232b2a8c2b116ef27574d8c0abb7?s=400&d=mm&r=g',
      location: 'Usa',
      name: 'Rina',
      religion: 'Hindu'),
  UserMatchModel(
      image:
          'https://secure.gravatar.com/avatar/ea4a232b2a8c2b116ef27574d8c0abb7?s=400&d=mm&r=g',
      location: 'Usa',
      name: 'Rina',
      religion: 'Hindu'),
];
final List<Widget> imageSliders = imgList
    .map(
      (item) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  "${item.image}",
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
            "${item.name}",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "${item.location}",
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
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              children: <TextSpan>[
                TextSpan(
                  text: "${item.religion}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.pink),
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
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15)),
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
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15)),
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
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15)),
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
      ),
    )
    .toList();

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
      SizedBox(
        height: 80,
      ),
      Container(
        // color: Colors.black,
        height: MediaQuery.of(context).size.height / 1.71,
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.vertical,
          ),
          items: imageSliders,
        ),
      )
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
