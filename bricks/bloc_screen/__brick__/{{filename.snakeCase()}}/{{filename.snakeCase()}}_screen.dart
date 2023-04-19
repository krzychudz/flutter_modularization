import "package:flutter/material.dart";
import "./{{filename.snakeCase()}}_view.dart";

class {{filename.pascalCase()}}Screen extends StatelessWidget {
  const {{filename.pascalCase()}}Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return {{filename.pascalCase()}}View();
  }
}