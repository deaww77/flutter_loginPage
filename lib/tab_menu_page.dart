import 'package:flutter/material.dart';

class TabMunuPage extends StatefulWidget {
  final String username;
  final String avatarUrl;

  const TabMunuPage({
    super.key,
    required this.username,
    required this.avatarUrl,
  });

  @override
  State<StatefulWidget> createState() {
    return _TabMenuPageState();
  }
}

class _TabMenuPageState extends State<TabMunuPage> {
  late String _username;
  late String _avatarUrl;

  @override
  void initState() {
    super.initState();
    _username = widget.username;
    _avatarUrl = widget.avatarUrl;
  }

  void _logout() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My app'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home', icon: Icon(Icons.home)),
              Tab(text: 'Contact', icon: Icon(Icons.contact_mail)),
              Tab(text: 'Profile', icon: Icon(Icons.person)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Center(child: Text('Home')),
            const Center(child: Text('Contact')),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(_avatarUrl),
                  ),
                  Text(
                    _username,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _logout,
                    child: const Text("Logout"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
