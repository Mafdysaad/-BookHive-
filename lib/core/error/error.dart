import 'package:dio/dio.dart';

abstract class failuer {
  final String errormessage;
  const failuer(this.errormessage);
}

class serverfailuer extends failuer {
  serverfailuer(super.errormassage);
  factory serverfailuer.ForDioExcption(DioException dioexcption) {
    switch (dioexcption.type) {
      case DioExceptionType.connectionTimeout:
        return serverfailuer('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return serverfailuer('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return serverfailuer('Receive Timeout');
      case DioExceptionType.badCertificate:
        return serverfailuer('Bad Certificate');
      case DioExceptionType.badResponse:
        return serverfailuer.BadRespons(
            dioexcption.response!.statusCode!, dioexcption.response!.data!);
      case DioExceptionType.cancel:
        return serverfailuer('Request to ApiServer was Canceld');
      case DioExceptionType.connectionError:
        return serverfailuer('No Internet connection');
      case DioExceptionType.unknown:
        return serverfailuer('Unexpected Error,please try again!');
    }
  }
  factory serverfailuer.BadRespons(int StatusCode, dynamic respons) {
    if (StatusCode == 400 || StatusCode == 401 || StatusCode == 403) {
      return serverfailuer(respons['error']['message']);
    } else if (StatusCode == 404) {
      return serverfailuer('Your request not found,plase try later!');
    } else if (StatusCode == 500) {
      return serverfailuer('Internal Server error,plase try later!');
    } else {
      return serverfailuer('Opps There was an Error,plase try again!');
    }
  }
}
