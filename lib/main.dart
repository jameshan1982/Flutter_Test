import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  String _title = 'To-Do List';
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _finishedList),
        ],
      ),
      //body: ,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,

        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text('Today')),
          BottomNavigationBarItem(icon: Icon(Icons.event), title: Text('Calendar')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addToDoList,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }

  void _finishedList() {
    setState(() {

    });
  }

  void _addToDoList() {
    setState(() {

    });
  }

  void _onItemTapped(int _value) {
    setState(() {
      _selectedIndex = _value;
      if(_selectedIndex == 0) {
        _title = 'To-Do List';
      }
      else if(_selectedIndex == 1) {
        _title = 'Calendar';
      }
      else if(_selectedIndex == 2) {
        _title = 'Search';
      }
      else if(_selectedIndex == 3) {
        _title = 'Settings';
      }
      else {
        _title = 'To-Do List Test';
      }
    });
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: TodoList(),
    );
  }
}