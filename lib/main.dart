import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/services.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() => {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      )),
      runApp(
        ModularApp(
          module: AppModule(),
          child: AppWidget(),
        ),
      )
    };
