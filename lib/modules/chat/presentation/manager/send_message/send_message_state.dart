part of 'send_message_cubit.dart';

@immutable
class SendMessageState {
  final List<MessageEntity> messages;
  final bool isLoading;
  final String? errorMessage;

  const SendMessageState({
    required this.messages,
    this.isLoading = false,
    this.errorMessage,
  });

  factory SendMessageState.initial() => const SendMessageState(messages: []);

  SendMessageState copyWith({
    List<MessageEntity>? messages,
    bool? isLoading,
    String? errorMessage,
  }) {
    return SendMessageState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

