import 'package:flutter/widgets.dart';
import 'package:flutter_architecture/services/cat_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final catApiProvider = FutureProvider.autoDispose((_) {
  final catService = CatApiService.instance;
  return catService.getCatImage();
});
