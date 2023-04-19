import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "./{{filename.snakeCase()}}_view.dart";
import './bloc/{{filename.snakeCase()}}_screen_cubit.dart';

class {{filename.pascalCase()}}Screen extends StatelessWidget {
  const {{filename.pascalCase()}}Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => {{filename.pascalCase()}}ScreenCubit(), 
    child: {{filename.pascalCase()}}View(),
    );
  }
}