import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

part 'featured_movies_state.dart';

class FeaturedMoviesCubit extends Cubit<FeaturedMoviesState> {
  FeaturedMoviesCubit() : super(FeaturedMoviesInitial());
}
