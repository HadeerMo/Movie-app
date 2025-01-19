import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/core/entities/movie_entity.dart';

part 'more_samilar_state.dart';

class MoreSamilarCubit extends Cubit<MoreSamilarState> {
  MoreSamilarCubit() : super(MoreSamilarInitial());
}
