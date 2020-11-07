import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'MyTube Menu',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontFamily: 'Grandstander',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.house),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the draw\r
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Trending'),
              leading: Icon(Icons.history),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Downloads'),
              leading: Icon(Icons.file_download),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Liked Videos'),
              leading: Icon(Icons.thumb_up),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Account'),
              leading: Icon(Icons.account_box),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
          title: Text('MyTube'),
          // centerTitle: true,
          backgroundColor: Colors.green[400]),
      body: Center(
        child: Text(
          'hello again, ninjas!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'Grandstander',
          ),
        ),
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
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'MyTube Menu',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontFamily: 'Grandstander',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.house),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the draw\r
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Trending'),
              leading: Icon(Icons.history),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Downloads'),
              leading: Icon(Icons.file_download),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the draw\r
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Liked Videos'),
              leading: Icon(Icons.thumb_up),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Account'),
              leading: Icon(Icons.account_box),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
          title: Text('MyTube'),
          // centerTitle: true,
          backgroundColor: Colors.green[400]),
      body: Center(
        child: Text(
          'hello again, ninjas!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'Grandstander',
          ),
        ),
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
