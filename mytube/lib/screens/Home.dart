import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mytube/screens/home/homepage.dart';
import 'package:mytube/screens/home/my_account.dart';
import 'package:mytube/screens/home/videos.dart';
import 'package:mytube/feeds/rss.dart';

// import 'package:flutter_svg/flutter_svg.dart';
class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentIndex = 0;
  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Map<String, List> newsData = Map<String, List>();
  bool isLoading = true;
  getData() async {
    Future.wait([
      rssToJson('topnews'),
      rssToJson('india'),
    ]).then((value) {
      newsData['topnews'] = value[0];
      newsData['india'] = value[1];
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                "assets/icons/drawer.svg",
                color: Colors.white,
                height: 15,
                width: 34,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        backgroundColor: Colors.green[400],
        // backgroundColor: currentIndex == 3 ? Color(0xffF7F8FA) : Colors.white,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            DrawerHeader(
              child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/img/mytube.jpg",
                  )),
              decoration: BoxDecoration(
                color: Colors.transparent,
                // color: Colors.green[400],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 48,
                  height: 48,
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: Icon(Icons.home),
                ),
              ),
              title: Text(
                'Home',
                // child: Icon(Icons.home),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                // textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              leading: GestureDetector(
                // behavior: HitTestBehavior.translucent,
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 48,
                  height: 48,
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: Icon(Icons.history),
                ),
              ),
              title: Text(
                'Trending',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                // textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              leading: GestureDetector(
                // behavior: HitTestBehavior.translucent,
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 48,
                  height: 48,
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: Icon(Icons.file_download),
                ),
              ),
              title: Text(
                'Download',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                // textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              leading: GestureDetector(
                // behavior: HitTestBehavior.translucent,
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 48,
                  height: 48,
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: Icon(Icons.thumb_up),
                ),
              ),
              title: Text(
                'Liked Videos',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                // textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            // ListTile(
            //   leading: GestureDetector(
            //     // behavior: HitTestBehavior.translucent,
            //     onTap: () {
            //       setState(() {
            //         currentIndex = 3;
            //       });
            //       Navigator.of(context).pop();
            //     },
            //     child: Container(
            //       width: 48,
            //       height: 48,
            //       padding: EdgeInsets.symmetric(vertical: 4.0),
            //       alignment: Alignment.center,
            //       child: Icon(Icons.account_box),
            //     ),
            //   ),
            //   title: Text(
            //     'Account',
            //     style: TextStyle(
            //       fontFamily: 'Grandstander',
            //       fontSize: 24,
            //       fontWeight: FontWeight.w700,
            //     ),
            //     // textAlign: TextAlign.center,
            //   ),
            // ),
            // SizedBox(
            //   height: 45,
            // ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Center(
                  child: Text(
                    'My Account',
                    style: TextStyle(
                      fontFamily: 'Grandstander',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
      // appBar: AppBar(
      //     title: Text('MyTube'),
      //     // centerTitle: true,
      //     backgroundColor: Colors.green[400]),
      body: <Widget>[
        HomePage(),
        Container(
          color: Colors.yellow,
        ),
        Videos(),
        MyAccount(),
      ][currentIndex],
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 21,
                color: Colors.black54,
                height: 21,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 21,
                color: Colors.black,
                height: 21,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 21,
                color: Colors.black54,
                height: 21,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 21,
                color: Colors.black,
                height: 21,
              ),
              title: Text("Search")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(
                'assets/icons/bookmark.svg',
                width: 21,
                color: Colors.black54,
                height: 21,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/bookmark.svg',
                width: 21,
                color: Colors.black,
                height: 21,
              ),
              title: Text("Saved")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: AssetImage('assets/img/user.png')),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x5c000000),
                        offset: Offset(0, 1),
                        blurRadius: 5)
                  ],
                ),
              ),
              title: Text("Profile")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('you clicked me');
        },
        backgroundColor: Colors.green[400],
        child: Text('click'),
      ),
    );
  }
}
