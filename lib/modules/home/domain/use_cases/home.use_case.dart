import 'package:our_love/common/configs/usecase.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:our_love/modules/home/domain/entities/vocabulary.entity.dart';
import 'package:our_love/modules/home/domain/repositories/home.repository.dart';


@injectable
class GetVocabulariesUseCase implements UseCase<List<VocabularyEntity>, DateTime> {
  final IHomeRepository repository;

  GetVocabulariesUseCase({required this.repository});

  @override
  Future<Either<Failure, List<VocabularyEntity>>> call(DateTime date) {
    return repository.getVocabularies(date);
  }
}
