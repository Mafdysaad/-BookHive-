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
  Future<Either<failuer, List<BookModle>>> FeatchBooks() async {
    try {
      var data = await apiservices.get('volumes?q=subject:programming');
      List<BookModle> books = [];
      for (var item in data['items']) {
        books.add(BookModle.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      return left(failuer.sucsess);
    }
  }

  @override
  Future<Either<failuer, List<BookModle>>> SearchBook() {
    // TODO: implement SearchBook
    throw UnimplementedError();
  }
}
