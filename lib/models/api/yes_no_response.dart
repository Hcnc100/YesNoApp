// To parse this JSON data, do
//
//     final allFilterEventResponse = allFilterEventResponseFromMap(jsonString);

import 'dart:convert';

class YesNoResponse {
    final String? answer;
    final bool? forced;
    final String? image;

    YesNoResponse({
        this.answer,
        this.forced,
        this.image,
    });

    factory YesNoResponse.fromJson(String str) => YesNoResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory YesNoResponse.fromMap(Map<String, dynamic> json) => YesNoResponse(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toMap() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };
}
