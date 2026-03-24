// ignore_for_file: void_checks

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../config/router/app_router.dart';
import '../../../../core/constants/shared_preference_keys_constants.dart';
import '../../../../core/helper/local_data/storge_local.dart';
import '../../../../di/di.dart';
import '../../domain/usecase/get_slogan_usecase.dart';

import '../../../../app/base/bloc/bloc.dart';
import '../../../../config/router/app_router.gr.dart';

part 'splash_page_bloc.freezed.dart';
part 'splash_page_event.dart';
part 'splash_page_state.dart';

@Injectable()
class SplashPageBloc extends BaseBloc<SplashPageEvent, SplashPageState> {
  SplashPageBloc(this._getSloganUserCase) : super(const _Initial()) {
    on<InitSplashPageEvent>(_initSplash);
  }
  final GetSloganUserCase _getSloganUserCase;
  FutureOr<void> _initSplash(
      InitSplashPageEvent event, Emitter<SplashPageState> emit) async {
    final slogan = LocalStorage.getStringValue(SharedPreferenceKeys.slogan);
    if (slogan == '') {
      LocalStorage.storeData(
        key: SharedPreferenceKeys.slogan,
        value: 'ទឹកឡើងមនុស្សសុីត្រីទឹកស្រកមនុស្សនៅតែសុីត្រីដដែល',
      );
    }
    final localSlogan =
        LocalStorage.getStringValue(SharedPreferenceKeys.slogan);
    emit(state.copyWith(slogan: localSlogan));

    await Future.delayed(const Duration(seconds: 2), () {
      // final lastRoute = getIt.get<AppRouter>();
      getIt.get<AppRouter>().replace(HomeRoute());
      // getIt.get<AppRouter>().replaceAll([HomeRoute()]);

      // appRoute.removeAllRoutesWithName(SplashRoute.name);
      // appRoute.pus(const AppRouteInfo.home());
    });
    _getSlogan(emit);
  }

  FutureOr<void> _getSlogan(Emitter<SplashPageState> emit) async {
    final slogan = await _getSloganUserCase.excecute('');
    if (slogan != '') {
      LocalStorage.storeData(key: SharedPreferenceKeys.slogan, value: slogan);
    }
  }
}
