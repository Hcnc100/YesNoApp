import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:yes_no_app/domain/yes_no_repository.dart';
import 'package:yes_no_app/models/message.dart';

import 'chat_screen_state.dart';

class ChatViewModel extends StateNotifier<ChatScreenState> {
  final YesNoRepository _yesNoRepository;

  final ScrollController _listViewController = ScrollController();
  ScrollController get listViewController => _listViewController;

  ChatViewModel(state, {required YesNoRepository yesNoRepository})
      : _yesNoRepository = yesNoRepository,
        super(state);

  void addNewMessage(String message) {
    state = state.copyWith(
      listMessages: [...state.listMessages, Message.fromText(message)],
    );

     Future.delayed(const Duration(milliseconds: 500), () => _scrollToBottom());

    if (message.endsWith('?')) {
      _getYesNoResponse();
    }
  }

  void _getYesNoResponse() async {
    state = state.copyWith(isLoading: true);

    final yesNoData = await _yesNoRepository.getYesNoResponse();

    state = state.copyWith(
      isLoading: false,
      listMessages: [
        ...state.listMessages,
        Message.fromYesNoData(yesNoData),
      ],
    );
    Future.delayed(const Duration(milliseconds: 300), () => _scrollToBottom());
   
  }
  
  void _scrollToBottom() {
     _listViewController.animateTo(
      _listViewController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
