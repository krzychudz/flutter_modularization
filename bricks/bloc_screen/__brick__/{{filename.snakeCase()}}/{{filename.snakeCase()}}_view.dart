import "package:flutter/material.dart";

class {{filename.pascalCase()}}View extends StatelessWidget {
  const {{filename.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("{{filename}}",),),
      body: Center(child: Text("{{filename}}",)),
    );
  }
}