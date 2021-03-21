import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 30.0, left: 20.0),
        color: Colors.grey.shade300,
        child: Column(
          children: <Widget>[
            Slickback(),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Name: ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "A Pimp Named Slickback",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Occupation: ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Pimping",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            LikeSlickBackButton(),
          ],
        ),
      ),
    );
  }
}

class Slickback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage slickback = AssetImage('images/slickback.png');
    Image slickbackImage = Image(
      image: slickback,
      height: 200.0,
      width: 200.0,
    );
    return Container(
      child: slickbackImage,
    );
  }
}

class LikeSlickBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        onPressed: () => likeSlickback(context),
        child: Text(
          'Like SlickBack',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: 'Raleway',
          ),
        ),
        elevation: 10.0,
        color: Colors.purple,
      ),
    );
  }
}

void likeSlickback(BuildContext context) {
  // BuildContext -> a context in which a widget is build
  // Read more
  showDialog(
    context: context,
    // builder is a function handler
    // Read more
    builder: (BuildContext context) => AlertDialog(
      title: Text("Mr. Dubois"),
      content:
          Text("Mr. Dubois, you're suffering from B*** Dependancy Diseases"),
    ),
  );
}

// ====================Lists======================

// ListView widget
Widget getListView() {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.wb_sunny_sharp),
        title: Text("B*****"),
        subtitle: Text("Number one B*** for Daddy"),
        // trailing: Icon(Icons.landscape),
        onTap: () {
          debugPrint("Mr. Dubois");
        },
      )
    ],
  );
}

// Steps for creating a long list
// 1. We need a data source
List<String> getListElements() {
  return List<String>.generate(100, (index) => "B*** $index");
}

// Add the data source to a widget
Widget getLongListView() {
  var items = getListElements();
  var listItems = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(items[index]),
        leading: Icon(Icons.arrow_back),
        onTap: () {
          showSnackbar(context);
        },
      );
    },
  );
  return listItems;
}

// Snackbar
void showSnackbar(BuildContext context) {
  // Bottom sheet?
  Scaffold.of(context).showSnackBar(
    SnackBar(
      content: Text("You want this one.."),
      action: SnackBarAction(
        label: "undo",
        onPressed: () {
          debugPrint("Some undo action..or so");
        },
      ),
    ),
  );
}
