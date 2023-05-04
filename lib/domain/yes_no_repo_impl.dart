

import 'package:yes_no_app/domain/yes_no_repository.dart';
import 'package:yes_no_app/models/yes_no_data.dart';

import '../datasource/remote/yes_no_remote_data_source.dart';

class YesNoRepoImpl implements YesNoRepository {
  final YesNoRemoteDataSource _remoteDataSource;

  YesNoRepoImpl(this._remoteDataSource);
  
  @override
  Future<YesNoData> getYesNoResponse()  => _remoteDataSource.getYesNoResponse();


}