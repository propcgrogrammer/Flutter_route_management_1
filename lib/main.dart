import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: '保險類型', home: new HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('保險類型'),
      ),
      body: new Center(
        child: ElevatedButton(
          child: Text('查看險種分類'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('全險'),
      ),
      body: Column(
        children: <Widget>[
          TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 50),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('壽險')),
          TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 50),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('醫療險')),
          TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 50),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('意外險')),
          TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 50),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('長照險')),
        ],
      ),
    );
  }
}
