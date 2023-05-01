import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '愛情咩合器 Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '愛情咩合器 Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  final _pages = [
    MainPage(),
    Page2(),
    Page3(),
    Page4(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,      // 設置底部導航欄的背景顏色為灰色
        unselectedItemColor: Colors.grey,   // 設置未點擊的顏色效果
        selectedItemColor: Colors.red,      // 設置選中項的顏色為紅色
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'mainPage'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Page2'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Page3'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Page4'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  bool _isExpanded = false;
  final handler = _ListTileTapHandler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('愛情咩和器'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue, width: 5),
                color: Colors.purple,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Jsde',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '#HDEE645545',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.bookmark_border),
              title: const Text('推薦行程',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                handler.handleTap(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.group_outlined),
              title: const Text(
                '戀人綁定',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                handler.handleTap(context);
              },
            ),
            ExpansionTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                '設定',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              tilePadding: EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 25.0),
                      Container(
                        width: 3.0,
                        height: double.infinity,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 25.0),
                      const Icon(Icons.notifications_none_sharp),
                    ],
                  ),
                  title: const Text('通知',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 25.0),
                      Container(
                        width: 3.0,
                        height: double.infinity,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 25.0),
                      const Icon(Icons.manage_accounts_outlined),
                    ],
                  ),
                  title: const Text('帳號設定',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 25.0),
                      Container(
                        width: 3.0,
                        height: double.infinity,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 25.0),
                      const Icon(Icons.help_outline_outlined),
                    ],
                  ),
                  title: const Text('說明',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Text('這是主頁'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面2'),
      ),
      body: Center(
        child: Text('这是页面2'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面3'),
      ),
      body: Center(
        child: Text('这是页面3'),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面4'),
      ),
      body: Center(
        child: Text('这是页面4'),
      ),
    );
  }
}

class _ListTileTapHandler {
  void handleTap(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Dialog Title'),
          content: Text('This is a dialog.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
