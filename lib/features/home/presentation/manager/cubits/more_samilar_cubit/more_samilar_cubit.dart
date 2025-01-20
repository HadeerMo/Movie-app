import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/domain/use_cases/fetch_more_similar_use_case.dart';

part 'more_samilar_state.dart';

class MoreSamilarCubit extends Cubit<MoreSamilarState> {
  MoreSamilarCubit(this.fetchMoreSimilarUseCase) : super(MoreSamilarInitial());
  final FetchMoreSimilarUseCase fetchMoreSimilarUseCase;
  Future<void> fetchMoreSimilarMovies(
      {int pageNum = 1, required String gener}) async {
    if (pageNum == 1) {
      emit(MoreSamilarLoading());
    } else {
      emit(MoreSamilarPaginationLoading());
    }
    var result = await fetchMoreSimilarUseCase.call(pageNum: pageNum,gener: gener);
    result.fold((failure) {
      if (pageNum == 1) {
        emit(MoreSamilarFailure(errMsg: failure.msg));
      } else {
        emit(MoreSamilarPaginationFailure(errMsg: failure.msg));
      }
    }, (movies) {
      emit(MoreSamilarSuccess(movies: movies));
    });
  }
}
