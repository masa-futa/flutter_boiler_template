import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flavor.g.dart';

@Riverpod(keepAlive: true)
Flavor flavor(FlavorRef ref) => throw UnimplementedError();

enum Flavor {
  dev('dev'),
  stg('stg'),
  prod('prd');

  const Flavor(this.flavor);

  factory Flavor._from(String flavor) =>
      values.firstWhere((element) => element.flavor == flavor);

  final String flavor;

  ///
  /// Flavor Initialize
  ///
  static Flavor initialize() =>
      Flavor._from(const String.fromEnvironment('flavor'));

  bool get isDebug => this == Flavor.dev || this == Flavor.stg;
}
