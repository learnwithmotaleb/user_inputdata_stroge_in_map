import 'package:flutter/material.dart';
import 'package:userinputgetmap/stye/styleui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'userinputwithmap',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Map<String, double> formValue = {
    'num1': 0.0,
    'num2': 0.0,
    'num3': 0.0,
    'num4': 0.0,
  };

  double sum = 0;

  @override
  Widget build(BuildContext context) {

    //======================myInputChange===================
    myInputonChange(inputkey, inputvalue) {
    setState(() {
      formValue.update(inputkey, (value) => double.parse(inputvalue));
    });
    }
    print(formValue);

    //======================AddAll================
    addAllNumber(){
    sum = formValue['num1']!+ formValue['num2']!+formValue['num3']!+ formValue['num4']!;
    }


    return Scaffold(
        appBar: AppBar(
          title: Text('Userinput with Map'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sum : ${sum.toString()}',
                  style: headingTextStyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (value) {
                    myInputonChange("num1", value);
                  },
                  decoration: AppInputStyle('FirstNumber'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (value) {
                    myInputonChange("num2", value);
                  },
                  decoration: AppInputStyle('SecondNumber'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (value) {
                    myInputonChange("num3", value);
                  },
                  decoration: AppInputStyle('ThirdNumber'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (value) {
                    myInputonChange("num4", value);
                  },
                  decoration: AppInputStyle('FourNumber'),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {

                     setState(() {
                       addAllNumber();
                     });

                      },
                      child: Text('Add'),
                      style: appButtonStyle(),
                    )),
              ],
            ),
          ),
        ));
  }
}
