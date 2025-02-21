import 'package:first_app/src/data/dummy_data.dart';
import 'package:first_app/src/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, index) {
          final user = users[index];
          return ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl)),
            title: Text(user.name),
            subtitle: Text('Last message...'),
            trailing: Text('2 min ago'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen(user: user)),
              );
            },
          );
        },
      ),
    );
  }
}
