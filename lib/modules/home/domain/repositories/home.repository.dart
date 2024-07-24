import 'package:our_love/common/configs/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:our_love/modules/home/domain/entities/vocabulary.entity.dart';

abstract class IHomeRepository {
  Future<Either<Failure, List<VocabularyEntity>>> getVocabularies(DateTime date);
}
