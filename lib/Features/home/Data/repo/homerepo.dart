import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/core/error/error.dart';
import 'package:dartz/dartz.dart';

abstract class repo {
  Future<Either<failuer, List<BookModle>>> featchBooks();
  Future<Either<failuer, List<BookModle>>> searchBook(
      {required String bookName});
  Future<Either<failuer, List<BookModle>>> relatedBook(
      {required String categories});
}
