import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  int score = 0;
  Answers? selectedAnswer;
  bool isLastQuestion = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff27292a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 10),
          Text(
            'Simple Quiz App',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Question ${index + 1}/10',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
                 Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  questions[index].question,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Positioned(
                left: -20,
                child: CircleAvatar(radius: 30, backgroundColor: Colors.black),
              ),
              Positioned(
                right: -20,
                child: CircleAvatar(radius: 30, backgroundColor: Colors.black),
              ),
              Positioned(
                top: -30,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.check, size: 50, color: Colors.green),
                ),
              ),
            ],
          ),
          for (int i = 0; i < questions[index].answers.length; i++)
            answerButton(answer: questions[index].answers[i]),
          nextButton(),
        ],
      ),
    );
  }

  MaterialButton answerButton({required Answers answer}) {
    bool isSelected = selectedAnswer == answer;
    return MaterialButton(
      onPressed: () {
        setState(() {
          selectedAnswer = answer;
        });
      },
      minWidth: 180,
      height: 60,
      color: isSelected ? Colors.orange : Colors.white,
      child: Text(
        answer.answer,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  MaterialButton nextButton() {
    isLastQuestion = index == questions.length - 1;

    return MaterialButton(
      onPressed: () {
        if (selectedAnswer == null) {
          score += 0; 
        } else {
          if (selectedAnswer!.isCorrect) {
            score++;
          }
        }

        if (isLastQuestion) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                "${score >= 5 ? "Passed" : "Failed"} | Score is $score",
              ),
              content: ElevatedButton(
                onPressed: () {
                  setState(() {
                    index = 0;
                    score = 0;
                    selectedAnswer = null;
                  });
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.black),
              ),
                child: Text("Reset", style: TextStyle(color: Colors.green)),
                
              ),
            ),
          );
        } else {
          setState(() {
            index++;
            selectedAnswer = null;  
          });
        }
      },
      minWidth: 350,
      height: 60,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white,
      child: Text(
        isLastQuestion ? "Submit" : "Next",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
