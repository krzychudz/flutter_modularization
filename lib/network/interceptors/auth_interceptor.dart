import 'package:chopper/chopper.dart';

authInterceptor(Request request) async => request.copyWith(
      headers: {
        'Accept': "application/json",
        'Content-type': "application/json",
        'Authorization': "Bearer 64451f56-13b8-42fd-bea0-fdea1964151f",
      },
    );
