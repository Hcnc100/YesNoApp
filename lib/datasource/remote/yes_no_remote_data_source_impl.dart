import 'package:yes_no_app/datasource/remote/yes_no_remote_data_source.dart';
import 'package:yes_no_app/models/yes_no_data.dart';

import '../../data/remote/yes_no_services.dart';

class YesNoRemoteDataSourceImpl implements YesNoRemoteDataSource {
  final YesNoServices _yesNoServices;

  YesNoRemoteDataSourceImpl(this._yesNoServices);

  @override
  Future<YesNoData> getYesNoResponse() async {
    final response = await _yesNoServices.getYesNoResponse();
    return YesNoData.fromYesNoResponse(response!);
  }
}
