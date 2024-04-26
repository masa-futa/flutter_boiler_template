import 'package:isar/isar.dart';
import 'package:isar_package/src/data/sample_data.dart';
import 'package:isar_package/src/entity/sample_entity.dart';
import 'package:path_provider/path_provider.dart';

class AppDatabase {
  Isar? isar;

  /// 初期化処理
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar ??= await Isar.open(
      [
        // 生成したDataのSchemeをこちらに定義
        SampleDataSchema,
        // Entityも同等にSchemeを定義しないと、Listの追加が実施できないため定義
        SampleEntitySchema,
      ],
      directory: dir.path,
    );
  }

  Future<void> putSampleData(
    SampleData data,
    List<SampleEntity> sampleEntities,
  ) async {
    return isar!.writeTxn(() async {
      await isar!.sampleDatas.put(data);
      await Future.wait(
        sampleEntities.map((e) async {
          await isar!.sampleEntitys.put(e);
          data.sample.add(e);
          await data.sample.save();
        }),
      );
    });
  }

  Future<SampleData?> getSampleData(int id) async {
    // [id]を使用してフィルタリング
    final data =
        await isar!.sampleDatas.where().filter().idEqualTo(id).findFirst();
    if (data == null) {
      return null;
    }
    await data.sample.load();
    return data;
  }
}
