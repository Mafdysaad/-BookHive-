import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/core/error/error.dart';
import 'package:dartz/dartz.dart';

abstract class repo {
  Future<Either<failuer, List<BookModle>>> FeatchBooks();
  Future<Either<failuer, List<BookModle>>> SearchBook();
}
