import 'package:boss_zhipin/pages/job/job_list.dart';
import 'package:flutter/material.dart';

import 'package:boss_zhipin/pages/chat/chat_list.dart';
import 'package:boss_zhipin/pages/company/company_list.dart';
import 'package:boss_zhipin/pages/chat/chat_list.dart';

class AppLayout extends StatefulWidget {
  @override
  _AppLayout createState() => new _AppLayout();
}

class _AppLayout extends State<AppLayout> {
  int _selectedIndex = 0;

  final _appViews = [JobList(), CompanyList(), ChatList(), Text('我的')];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: new Color.fromRGBO(85, 203, 196, 1),
        title: Text(
          'web前端',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            tooltip: '搜索职位',
          ),
          IconButton(
              icon: Icon(Icons.search), onPressed: () {}, tooltip: '求职期望'),
        ],
      ),
      body: Center(
        child: _appViews[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // unselectedItemColor: new Color.fromRGBO(51, 51, 51, 1),
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('职位'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('公司'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('消息'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text('我的'),
          )
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.black87,
        onTap: _onItemTapped,
      ),
    );
  }
}
