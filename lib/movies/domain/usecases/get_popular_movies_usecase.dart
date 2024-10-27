import 'package:dartz/dartz.dart';
import 'package:movie_app_with_clean_arch/core/error/failure.dart';
import 'package:movie_app_with_clean_arch/core/usecase/base_usecase.dart';
import 'package:movie_app_with_clean_arch/movies/domain/entities/movie.dart';
import 'package:movie_app_with_clean_arch/movies/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<Movie>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
