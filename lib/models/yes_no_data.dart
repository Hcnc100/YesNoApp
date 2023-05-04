


import 'api/yes_no_response.dart';

class YesNoData{
      final String response;
      final String image;

      YesNoData({
        required this.response,
        required this.image,
      });

      factory YesNoData.fromMap(Map<String, dynamic> json) => YesNoData(
        response: json["answer"],
        image: json["image"],
      );

      factory YesNoData.fromYesNoResponse(YesNoResponse response) => YesNoData(
        response: response.answer!,
        image: response.image!,
      );
}