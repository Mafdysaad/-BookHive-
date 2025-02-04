import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/Features/home/Data/repo/homerepo.dart';
import 'package:booklyapp/core/error/error.dart';
import 'package:booklyapp/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Homerepoimplmantion extends repo {
  final Apiservices apiservices;

  Homerepoimplmantion(this.apiservices);
  @override
  Future<Either<failuer, List<BookModle>>> featchBooks() async {
    try {
      var data = await apiservices.get('volumes?q=programming');
      List<BookModle> books = [];
      for (var item in data['items']) {
        books.add(BookModle.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(serverfailuer.ForDioExcption(e));
      } else {
        return left(serverfailuer(e.toString()));
      }
    }
  }

  @override
  Future<Either<failuer, List<BookModle>>> searchBook(
      {required String bookName}) async {
    try {
      var respons = await apiservices
          .get('volumes?q=$bookName|"title"=$bookName&filtering=free-ebooks');

      List<BookModle> books = [];
      for (var item in respons['items']) {
        books.add(BookModle.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(serverfailuer.ForDioExcption(e));
      } else {
        return left(serverfailuer(e.toString()));
      }
    }
  }

  @override
  Future<Either<failuer, List<BookModle>>> relatedBook(
      {required String categories}) async {
    try {
      var respons = await apiservices
          .get('volumes?q=$categories&filtering=free-ebooks&Sorting=relevance');

      List<BookModle> books = [];
      for (var item in respons['items']) {
        books.add(BookModle.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(serverfailuer.ForDioExcption(e));
      } else {
        return left(serverfailuer(e.toString()));
      }
    }
  }
}
