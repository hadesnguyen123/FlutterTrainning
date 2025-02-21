import 'package:first_app/src/data/dummy_data.dart';
import 'package:first_app/src/models/message_model.dart';
import 'package:first_app/src/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final UserModel user;

  const ChatScreen({required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    setState(() {
      messages.add(MessageModel(
          senderId: 'me',
          text: _controller.text,
          time: '09:30 AM',
          isSentByMe: true));
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(widget.user.avatarUrl)),
            SizedBox(width: 10),
            Text(widget.user.name),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.call_outlined), // Icon video call
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.videocam_outlined), // Icon video call
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (ctx, index) {
                  final msg = messages[index];
                  return Align(
                    alignment: msg.isSentByMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      margin:
                          const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: msg.isSentByMe ? Colors.teal : Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(msg.text),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.attach_file_outlined), // Icon video call
                    onPressed: () {},
                  ),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                          hintText: 'Write your message...'),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send_outlined),
                    style: IconButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.teal,
                    ),
                    onPressed: _sendMessage,
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
