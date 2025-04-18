import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto/display/menu/menu.dto.dart';

part 'display.api.g.dart';

@RestApi()
abstract class DisplayApi {
  factory DisplayApi(Dio dio, {String? baseUrl}) = _DisplayApi;

  @GET('/api/menus/{mall_type}')
  Future<List<MenuDto>> getMenusByMallType(@Path('mall_type') String mallType);
}
