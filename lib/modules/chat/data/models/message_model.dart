import 'package:iteru_app/modules/chat/domain/entity/message_entity.dart';

class MessageModel extends MessageEntity {
  MessageModel({
    required super.id,
    required super.userId,
    required super.content,
    required super.aiReply,
    required super.createdAt,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      id: json['_id'] ?? '',
      userId: json['userId'] ?? '',
      content: json['content'] ?? '',
      aiReply: json['aiReply'] ?? '',
      createdAt: DateTime.tryParse(json['createdAt'] ?? ''),
    );
  }

  @override
  String toString() {
    return 'User: $userId\nContent: $content\nAI Reply: $aiReply\nCreated At: $createdAt';
  }
}
