import 'package:first_app/src/models/message_model.dart';
import 'package:first_app/src/models/user_model.dart';

List<UserModel> users = [
  UserModel(id: '1', name: 'Nguyen Hoang', avatarUrl: 'https://randomuser.me/api/portraits/men/1.jpg'),
  UserModel(id: '2', name: 'Tommy', avatarUrl: 'https://randomuser.me/api/portraits/men/1.jpg'),
  UserModel(id: '3', name: 'Viet Hung', avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg'),
  UserModel(id: '4', name: 'Trang Trang', avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg'),
  UserModel(id: '5', name: 'Trang Trang2', avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg'),
  UserModel(id: '6', name: 'Trang Trang3', avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg'),
  UserModel(id: '7', name: 'Trang Trang4', avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg'),
  UserModel(id: '8', name: 'Trang Trang5', avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg'),
  UserModel(id: '9', name: 'Trang Trang6', avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg'),
  UserModel(id: '10', name: 'Trang Trang7', avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg'),
  UserModel(id: '11', name: 'Trang Trang8', avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg'),
];

List<MessageModel> messages = [
  MessageModel(senderId: '4', text: 'Hello! How are you?', time: '09:25 AM', isSentByMe: false),
  MessageModel(senderId: 'me', text: 'I am fine', time: '09:26 AM', isSentByMe: true),
  MessageModel(senderId: '4', text: 'What make you happy!', time: '09:25 AM', isSentByMe: false),
  MessageModel(senderId: 'me', text: 'Working at Zen8lab!!', time: '09:26 AM', isSentByMe: true),
  MessageModel(senderId: '4', text: 'Have a great working week!', time: '09:27 AM', isSentByMe: false),
];

