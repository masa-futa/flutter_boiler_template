import 'package:isar/isar.dart';
import 'package:isar_package/src/entity/sample_entity.dart';

part 'sample_data.g.dart';

@collection
class SampleData {
  late Id id;
  final sample = IsarLinks<SampleEntity>();
}
