import 'package:iteru_app/modules/chat/domain/entity/message_entity.dart';

class ImageEntity extends MessageEntity {
  final String imagePath;
  final List<String> detectedClasses;

  ImageEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.imagePath,
    this.detectedClasses = const [],
  }) : super(content: '', aiReply: '');
}

