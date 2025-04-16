import 'package:flutter_bloc/flutter_bloc.dart';

enum BottomNav { home, category, search, user }

class BottomNaveCubit extends Cubit<BottomNav> {
  BottomNaveCubit() : super(BottomNav.home);

  /// emit :  Bloc or Cubic 의 상태를 내보내는 역할.
  void changeIndex(int index) => emit(BottomNav.values[index]);
}
