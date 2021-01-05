import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                    child: Text(
                        'RateMyAgent elevates agents, agencies & mortgage brokers with reviews',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Sales',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Leasing',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Mortgage Brokers',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: FlatButton(
                    color: Colors.black,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w200),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Image.asset(
              'images/title.png',
              fit: BoxFit.cover,
              height: 40.0,
              width: 200.0,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.people_alt_rounded),
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.heart),
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    "Overview",
                    style: TextStyle(fontSize: 11.0),
                  ),
                ),
                Tab(
                    child: Text(
                  "Reviews",
                  style: TextStyle(fontSize: 11.0),
                )),
                Tab(
                    child: Text(
                  "Agents",
                  style: TextStyle(fontSize: 11.0),
                )),
                Tab(
                    child: Text(
                  "Agencies",
                  style: TextStyle(fontSize: 11.0),
                )),
                Tab(
                    child: Text(
                  "Properties",
                  style: TextStyle(fontSize: 11.0),
                )),
                Tab(
                    child: Text(
                  "Awards",
                  style: TextStyle(fontSize: 11.0),
                )),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Properties in Melbourne",
                          style: TextStyle(fontSize: 30.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "174,603 properties listed in Melbourne over the past 12 months",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Victoria",
                          style: TextStyle(fontSize: 15.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: Card(
                            color: Colors.teal[100],
                            child: Text(
                              "View the 2020 Agent of the year award winners",
                              textAlign: TextAlign.center,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Icon(Icons.warning_amber_rounded),
              Icon(Icons.warning_amber_rounded),
              Icon(Icons.warning_amber_rounded),
              listings(),
              Icon(Icons.warning_amber_rounded),
            ],
          ),
        ),
      ),
    );
  }
}

class listings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: Expanded(
            child: Container(
              height: 400.0,
              width: 300.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Nicholson",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Image.asset("images/img1.jpeg", height: 200, width: 300),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Contact Agent"),
                    Text(
                      "2/5 Gordon Street",
                    ),
                    Text(
                      "Toorak VIC 3142",
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.bedtime_outlined),
                          Text("1"),
                          Icon(Icons.bathtub_outlined),
                          Text("2"),
                          Icon(Icons.car_rental),
                          Text("1"),
                          SizedBox(
                            width: 40.0,
                          ),
                          Icon(Icons.share),
                          SizedBox(
                            width: 100.0,
                          ),
                          Text(
                            "House",
                            style: TextStyle(fontFamily: "Roboto"),
                          ),
                        ],
                      ),
                    ),
                    FlatButton(
                      child: Text("For Sale"),
                      color: Colors.teal[100],
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Card(
          child: Expanded(
            child: Container(
              height: 400.0,
              width: 300.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Reliance",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Image.asset("images/img2.jpg", height: 200, width: 300),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Contact Agent",
                    ),
                    Text(
                      "2/5 Gordon Street",
                    ),
                    Text(
                      "Toorak VIC 3142",
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.bedtime_outlined),
                          Text("1"),
                          Icon(Icons.bathtub_outlined),
                          Text("2"),
                          Icon(Icons.car_rental),
                          Text("1"),
                          SizedBox(
                            width: 40.0,
                          ),
                          Icon(Icons.share),
                          SizedBox(
                            width: 100.0,
                          ),
                          Text("House"),
                        ],
                      ),
                    ),
                    FlatButton(
                      child: Text("For Sale"),
                      color: Colors.teal[100],
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Card(
          child: Expanded(
            child: Container(
              height: 400.0,
              width: 300.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "RT Edgar Bayside",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Image.asset("images/img3.jpg", height: 200, width: 300),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Contact Agent",
                    ),
                    Text(
                      "2/5 Gordon Street",
                    ),
                    Text(
                      "Toorak VIC 3142",
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.bedtime_outlined),
                          Text("1"),
                          Icon(Icons.bathtub_outlined),
                          Text("2"),
                          Icon(Icons.car_rental),
                          Text("1"),
                          SizedBox(
                            width: 40.0,
                          ),
                          Icon(Icons.share),
                          SizedBox(
                            width: 100.0,
                          ),
                          Text("House"),
                        ],
                      ),
                    ),
                    FlatButton(
                      child: Text("For Sale"),
                      color: Colors.teal[100],
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
