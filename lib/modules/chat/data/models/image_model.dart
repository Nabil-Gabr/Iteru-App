import 'package:flutter/material.dart';
import 'package:iteru_app/modules/chat/domain/entity/image_entity.dart';

import 'dart:io';

class ImageModel extends ImageEntity {
  ImageModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.imagePath,
    super.detectedClasses = const [],
  });

  /// Factory method to create ImageModel from API response
  factory ImageModel.fromJson({
    required File imageFile,
    required Map<String, dynamic> json,
  }) {
    final detected = List<String>.from(json['detected_classes'] ?? []);
    return ImageModel(
      id: UniqueKey().toString(),
      userId: 'user',
      createdAt: DateTime.now(),
      imagePath: imageFile.path,
      detectedClasses: detected,
    );
  }
}

