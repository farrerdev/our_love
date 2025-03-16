import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_love/modules/root/presentation/widgets/app_bottom_navigation_bar.widget.dart';

part 'root_state.dart';

part 'root_cubit.freezed.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(RootState.initData());

  int currentTab = BottomMenuEnum.home;

  void onPageChanged(int value) {
    onCurrentTabChanged(value);
    emit(state.copyWith(currentTab: currentTab));
  }

  void onCurrentTabChanged(int value) {
    currentTab = value;
  }
}
