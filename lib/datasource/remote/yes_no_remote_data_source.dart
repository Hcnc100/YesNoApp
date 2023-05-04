

import 'package:yes_no_app/models/yes_no_data.dart';

abstract class YesNoRemoteDataSource {
      Future<YesNoData>getYesNoResponse(); 
}