import 'package:bmi_calculator/theme.dart';
import 'package:flutter/material.dart';

import 'bmi_result_page.dart';
import 'custom_card.dart';
import 'custom_floating_button.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _selectedSex = "male";
  int _height = 180;
  int _weight = 60;
  int _age = 25;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title:  Text('BMI CALCULATOR', style: Theme.of(context).textTheme.titleLarge),
        ),
        body: Scaffold(
            body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: CustomCard(
                                color: _selectedSex == "male" ? colors['card-selected'] : null,
                                  onTap: () {
                                    setState(() {
                                      _selectedSex = "male";
                                    });
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.male,
                                        size: 100.0,

                                      ),
                                      Text("Male",
                                          style: Theme.of(context).textTheme.titleSmall),
                                    ],
                                  )),
                            ),
                            Expanded(
                              child: CustomCard(
                                  color: _selectedSex == "female" ? colors['card-selected'] : null,


                                  onTap: () {
                                    setState(() {
                                      _selectedSex = "female";
                                    });
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.female,
                                          size: 100.0,
                                          ),
                                      Text("Female",
                                          style: Theme.of(context).textTheme.titleSmall)
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: CustomCard(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 Text("Height",
                                    style:
                                    Theme.of(context).textTheme.titleMedium),
                                Text("${_height.toString()} cm",
                                    style: Theme.of(context).textTheme.titleSmall),
                                Slider(
                                    value: _height / 300.0,
                                    onChanged: (value) {
                                      setState(() {
                                        _height = (value * 300).round();
                                      });
                                    })
                              ],
                            )),
                      ),
                      Expanded(

                        flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomCard(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                         Text("Weight", style: Theme.of(context).textTheme.titleMedium),
                                        Text("$_weight kg", style: Theme.of(context).textTheme.titleSmall),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomFloatingButton(
                                              onPressed: () {
                                                setState(() {
                                                  _weight++;
                                                });
                                              },
                                              child: const Icon(Icons.add),
                                            ),
                                            CustomFloatingButton(
                                              onPressed: () {
                                                setState(() {
                                                  _weight--;
                                                });
                                              },
                                              child: const Icon(Icons.remove),
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                              Expanded(
                                child: CustomCard(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Age", style: Theme.of(context).textTheme.titleMedium),
                                        Text("$_age years", style: Theme.of(context).textTheme.titleSmall),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomFloatingButton(
                                              onPressed: () {
                                                setState(() {
                                                  _age++;
                                                });
                                              },
                                              child: const Icon(Icons.add),
                                            ),
                                            CustomFloatingButton(
                                              onPressed: () {
                                                setState(() {
                                                  _age--;
                                                });
                                              },
                                              child: const Icon(Icons.remove),
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          )),
                      Expanded(
                        flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        double bmi = _weight / ((_height / 100) * (_height / 100));
                                        Navigator.of(context).push(

                                            MaterialPageRoute(
                                                builder: (context) => BMIResultPage(
                                                  bmi: bmi,
                                                  age: _age,
                                                  gender: _selectedSex,
                                                )));

                                      },
                                      child:
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Text("Check Your BMI", style: Theme.of(context).textTheme.titleSmall,),
                                       )),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ))),
      );

  }
}
