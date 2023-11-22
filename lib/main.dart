// ignore_for_file: unnecessary_this

import 'dart:core';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.amber,
    ),
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String empName, empId, empBranchLocation, empShift, empClient;
  late double empPerformancePercentage;

  getEmployeeName(employeeeName) {
    this.empName = employeeeName;
  }

  getEmployeeId(employeeeId) {
    this.empId = employeeeId;
  }

  getEmployeeBranchLocation(employeeeLocation) {
    this.empBranchLocation = employeeeLocation;
  }

  getEmployeeShift(employeeeShift) {
    this.empShift = employeeeShift;
  }

  getEmployeePerformancePercentage(performancePercentage) {
    this.empPerformancePercentage = double.parse(performancePercentage);
  }

  getEmployeeClient(employeeeClient) {
    this.empClient = employeeeClient;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employess Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Name",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String employeeeName) {
                  getEmployeeName(employeeeName);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Emp Id",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String employeeeId) {
                  getEmployeeId(employeeeId);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Emp Branch Location",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String employeeeLocation) {
                  getEmployeeBranchLocation(employeeeLocation);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Emp Work Shift",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String employeeeShift) {
                  getEmployeeShift(employeeeShift);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Emp performance percentage",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String performancePercentage) {
                  getEmployeePerformancePercentage(performancePercentage);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Emp Client",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String employeeeClient) {
                  getEmployeeClient(employeeeClient);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.black)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Create",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.black)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Read",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.black)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Update",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.black)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Delete",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
