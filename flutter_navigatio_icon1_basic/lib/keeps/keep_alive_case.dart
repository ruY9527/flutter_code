import 'package:flutter/material.dart';

class KeepAliveDemo extends StatefulWidget {
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin {

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3,vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep Alive Demo Case'),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(icon:Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit),),
            Tab(icon: Icon(Icons.directions_bike),)
          ],
        ),
      ),

      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Text('Yang123'),
          Text('Yang456'),
          Text('Yang789'),
        ],
      ),
    );
  }
}