import 'package:isar/isar.dart';

part 'sample_entity.g.dart';

@collection
class SampleEntity {
  late Id messageId;
  late String name;
  late int age;
  late String location;
}
