// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:yes_no_app/models/yes_no_data.dart';



class Message {
    final String id;
    final String message;
    final String? linkImage;
    final DateTime createdAt;
    final bool isMe;

    Message({
        required this.id,
        required this.message,
        this.linkImage,
        required this.createdAt,
        required this.isMe,
    });


    String get profileImage{
      if(!isMe){
        return "https://i.pravatar.cc/150?img=1'";
      }else{
        return "https://i.pravatar.cc/150?img=2";
      }
    } 


    factory Message.fromText(String text) => Message(
      id: DateTime.now().toString(),
      message: text,
      createdAt: DateTime.now(),
      isMe: true,
    );

    factory Message.fromYesNoData(YesNoData yesNoData) => Message(
      id: DateTime.now().toString(),
      message: yesNoData.response,
      createdAt: DateTime.now(),
      isMe: false,
      linkImage: yesNoData.image,
    );


}
