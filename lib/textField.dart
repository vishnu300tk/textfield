import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text('TextField Example'),
        ),
        
        body: const Padding(
          padding: EdgeInsets.all(26.0),
          child: MyTextFieldWidget(),
        ),
      );
    
  }
}

class MyTextFieldWidget extends StatefulWidget {
  const MyTextFieldWidget({super.key});

  @override
  MyTextFieldWidgetState createState() => MyTextFieldWidgetState();
}

class MyTextFieldWidgetState extends State<MyTextFieldWidget> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Enter your text:'),
        TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: 'Type something...',
           
            
          ),
        ),
        const SizedBox(height: 16.0),
        Text('You entered: ${textController.text}'),
      ],
    );
  }
}