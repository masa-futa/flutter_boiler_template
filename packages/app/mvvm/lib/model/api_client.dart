import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_client/sample_client.dart';

part 'api_client.g.dart';

@Riverpod(keepAlive: true)
Client client(ClientRef ref) => Client('http://localhost:8080/');
