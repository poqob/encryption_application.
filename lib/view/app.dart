import 'package:converter_app/view/app_mixin.dart';
import 'package:converter_app/view/constants/c_colours.dart';
import 'package:converter_app/view/constants/c_extension_layout.dart';
import 'package:converter_app/view/constants/c_texts.dart';
import 'package:converter_app/view/widgets/Appbar/w_appbar_action.dart';
import 'package:converter_app/view/widgets/CopyableText/w_copyable_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Converter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AppMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // A text input field that takes plain text from the user
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(),
            ),
            SizedBox(height: context.lowRateWidth),
            // A text widget that displays the binary output under the input field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CopyableTextWidget(result: result),
            ),
          ],
        ),
      ),
    );
  }

  TextField textfield() {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter plain text',
      ),
      // A callback function that is triggered when the text changes
      onChanged: (value) {
        // Convert the text to binary and update the state
        setState(() {
          refleshResult();
        });
      },
    );
  }

  AppBar appbar() {
    return AppBar(
      title: Expanded(
        child: ElevatedButton(
          onPressed: () => switchAlgorithm(),
          child: Container(
            decoration: BoxDecoration(
              color: ConstantColors.appbar1.getColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  ConstantTexts.appbar.get,
                  style: const TextStyle(color: Colors.black),
                )),
          ),
        ),
      ),
      actions: [
        AppBarAction(
          onSelected: (option) {
            setState(() {
              algorithm = option;
              refleshResult();
            });
          },
        ),
      ],
    );
  }
}
