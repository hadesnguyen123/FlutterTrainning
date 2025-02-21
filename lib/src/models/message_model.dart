class MessageModel {
  final String senderId;
  final String text;
  final String time;
  final bool isSentByMe;

  MessageModel({required this.senderId, required this.text, required this.time, this.isSentByMe = false});

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      senderId: map['senderId'],
      text: map['text'],
      time: map['time'],
      isSentByMe: map['isSentByMe'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'senderId': senderId,
      'text': text,
      'time': time,
      'isSentByMe': isSentByMe,
    };
  }
}
