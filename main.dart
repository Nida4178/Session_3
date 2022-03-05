import 'package:sessionthree/data.dart';
import 'package:flutter/material.dart';

void main() => runApp(const StudentDetails());

class StudentDetails extends StatefulWidget{
  const StudentDetails({Key? key}) : super(key: key);

  @override
  _StudentDetailsState createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails>{
    String input = "";
    final myController = TextEditingController();
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 145, 198, 233),
          appBar: AppBar(title: const Text("Student Details"),
          ),
          body: Column(
            children: [
              Image.asset("Banasthali.jpg", height:300, width: 300),
              const SizedBox(width: 60),
               Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                controller: myController,
                decoration: const InputDecoration(labelText: "Enter the Roll Number"),
              ),
            ),
            ElevatedButton(
              child: const Text("Reveal us the details!"), 
              onPressed: () {
                setState(() {
                  input = myController.text;
                });
                myController.clear();
              },
            ),
            const SizedBox(height: 20),
            Text(studentDetails[input]!),
          ],
        ),
      ),
    );
  }
}
  