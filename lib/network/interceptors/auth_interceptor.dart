import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

FutureOr<Request> authInterceptor(Request request) async => request.copyWith(
      headers: {
        'Accept': "application/json",
        'Content-type': "application/json",
        'Authorization': "Bearer ${dotenv.env['API_TOKEN']}",
      },
    );
