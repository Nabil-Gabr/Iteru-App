class MessageEntity {
  final String id;
  final String userId;
  final String content;
  final String aiReply;
  final DateTime? createdAt;

  MessageEntity({
    required this.id,
    required this.userId,
    required this.content,
    required this.aiReply,
    required this.createdAt,
  });

  @override
  String toString() {
    return 'MessageEntity(id: $id, userId: $userId, content: $content, aiReply: $aiReply, createdAt: $createdAt)';
  }
}
