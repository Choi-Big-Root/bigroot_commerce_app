// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bigroot_commerce_app/data/data_source/data_source_module.dart'
    as _i713;
import 'package:bigroot_commerce_app/data/data_source/remote/display.api.dart'
    as _i953;
import 'package:bigroot_commerce_app/data/repository_impl/display.repository_impl.dart'
    as _i196;
import 'package:bigroot_commerce_app/domain/repository/display.repository.dart'
    as _i685;
import 'package:bigroot_commerce_app/domain/usecase/display/display.usecase.dart'
    as _i73;
import 'package:bigroot_commerce_app/presentation/main/bloc/cart_bloc/cart_bloc.dart'
    as _i64;
import 'package:bigroot_commerce_app/presentation/pages/home/bloc/menu_bloc/menu_bloc.dart'
    as _i53;
import 'package:bigroot_commerce_app/presentation/pages/home/bloc/view_module_bloc/view_module_bloc.dart'
    as _i393;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dataSourceModule = _$DataSourceModule();
    gh.factory<_i64.CartBloc>(() => _i64.CartBloc());
    gh.singleton<_i953.DisplayApi>(() => dataSourceModule.displayApi);
    gh.singleton<_i685.DisplayRepository>(
      () => _i196.DisplayRepositoryImpl(gh<_i953.DisplayApi>()),
    );
    gh.singleton<_i73.DisplayUsecase>(
      () => _i73.DisplayUsecase(gh<_i685.DisplayRepository>()),
    );
    gh.factory<_i53.MenuBloc>(() => _i53.MenuBloc(gh<_i73.DisplayUsecase>()));
    gh.factory<_i393.ViewModuleBloc>(
      () => _i393.ViewModuleBloc(gh<_i73.DisplayUsecase>()),
    );
    return this;
  }
}

class _$DataSourceModule extends _i713.DataSourceModule {}
