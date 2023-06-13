import 'package:flutter/material.dart';
import 'package:w3school_clone/pages/bookmarks.dart';
import 'package:w3school_clone/pages/home.dart';
import 'package:w3school_clone/pages/search.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({super.key});

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  final List<Widget> screens = const [
    HomeScreen(),
    SearchScreen(),
    QuizGrid(),
    BookmarksScreen()
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_rounded), label: "Test"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), label: "Bookmarks"),
          ]),
      body: screens[index],
    );
  }
}

class QuizApp extends StatefulWidget {
  final String title;
  const QuizApp({super.key, required this.title});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<String> questions = [];

  List<List<String>> options = [[]];
  List<int> correctAnswers = [];

  List<int> answers = [];
  int currentQuestionIndex = 0;
  int? selectedOptionIndex;

  List<List<String>> shuffledOptions = [];

  static const htmlOptions = [
    [
      "Hyper Text Markup Language",
      "Hyperlink Text Markup Language",
      "Home Tool Markup Language",
      "Hyper Technical Markup Language"
    ],
    ["<h1>", "<head>", "<header>", "<heading>"],
    ["<ul>", "<li>", "<ol>", "<ulist>"],
    ["<a>", "<link>", "<hyperlink>", "<href>"],
    ["<img>", "<picture>", "<image>", "<photo>"],
    ["<br>", "<break>", "<lb>", "<linebreak>"],
    ["<table>", "<tb>", "<tr>", "<tab>"],
    ["<th>", "<td>", "<trh>", "<tableheader>"],
    ["<tr>", "<tb>", "<table>", "<row>"],
    ["<td>", "<tr>", "<tab>", "<tabledata>"],
    ["<p>", "<para>", "<pg>", "<paragraph>"],
    ["<hr>", "<rule>", "<horizontal>", "<break>"],
    ["<form>", "<input>", "<button>", "<field>"],
    [
      "<input type='text'>",
      "<input type='textbox'>",
      "<textfield>",
      "<textinput>"
    ],
    ["<input type='checkbox'>", "<input type='check'>", "<box>", "<checkbox>"],
    [
      "<input type='radio'>",
      "<radio button>",
      "<button type='radio'>",
      "<radio>"
    ],
    ["<select>", "<dropdown>", "<list>", "<option>"],
    ["<input type='submit'>", "<button type='submit'>", "<submit>", "<send>"],
    ["<input type='reset'>", "<reset>", "<button type='reset'>", "<clear>"],
    ["<!-- -->", "<!DOCTYPE>", "<comment>", "<!-->"]
  ];

  static const cssOptions = [
    [
      "Cascading Style Sheets",
      "Creative Style Sheets",
      "Colorful Style Sheets",
      "Customizable Style Sheets"
    ],
    ["background-color", "color", "font-color", "text-color"],
    ["color", "font-color", "text-color", "background-color"],
    ["font-size", "size", "text-size", "text-font"],
    ["width", "size", "height", "length"],
    ["height", "size", "width", "length"],
    ["margin", "padding", "spacing", "border-spacing"],
    ["padding", "margin", "border", "border-width"],
    ["border", "margin", "padding", "outline"],
    ["font-family", "font-type", "text-family", "typeface"],
    ["font-weight", "weight", "text-weight", "bold"],
    ["font-style", "italic", "text-style", "style"],
    ["text-decoration", "underline", "decoration", "text-underline"],
    ["text-shadow", "shadow", "text-effect", "effect"],
    ["text-align", "alignment", "align", "position"],
    ["display", "type", "visibility", "show"],
    ["display", "type", "visibility", "hide"],
    ["display", "type", "visibility", "block"],
    ["position", "place", "set", "arrange"],
    ["visibility", "display", "show", "hide"]
  ];

  static const javascriptOptions = [
    [
      "Adds interactivity to web pages",
      "Adds style to web pages",
      "Adds structure to web pages",
      "Adds animation to web pages"
    ],
    ["var", "let", "const", "varlet"],
    ["function", "def", "define", "fun"],
    [
      "+",
      "-",
      "*",
      "&",
    ],
    ["==", "=", "===", "!="],
    ["=", "+=", "-=", "*="],
    ["==", "=", "===", "!="],
    ["!==", "==", "=", "==="],
    ["console.log()", "console.debug()", "console.warn()", "console.error()"],
    ["length()", "getLength()", "length", "len()"],
    ["parseInt()", "toInteger()", "convertToInteger()", "int()"],
    ["parseFloat()", "toFloat()", "convertToFloat()", "float()"],
    ["Math.random()", "random()", "randomNumber()", "getRandom()"],
    ["Math.round()", "round()", "roundNumber()", "getRound()"],
    ["new Array()", "createArray()", "generateArray()", "makeArray()"],
    ["push()", "add()", "insert()", "append()"],
    ["pop()", "remove()", "delete()", "subtract()"],
    ["sort()", "order()", "arrange()", "organize()"],
    ["join()", "concat()", "combine()", "merge()"]
  ];

  static const python = [
    [
      "Enables developers to write fast, maintainable, and scalable code",
      "Enables developers to design user interfaces",
      "Enables developers to build databases",
      "Enables developers to create animations"
    ],
    ["var", "let", "const", "None"],
    ["def", "function", "fun", "define"],
    ["import", "include", "load", "use"],
    ["+", "-", "*", "&"],
    ["==", "=", "===", "!="],
    ["=", "+=", "-=", "*="],
    ["print()", "log()", "write()", "output()"],
    ["len()", "getLength()", "length", "size()"],
    ["int()", "toInteger()", "convertToInteger()", "integer()"],
    ["float()", "toFloat()", "convertToFloat()", "floating()"],
    ["random()", "getRandom()", "Math.random()", "generateRandom()"],
    ["round()", "getRound()", "Math.round()", "roundNumber()"],
    ["[]", "{}", "()", "<>"],
    ["append()", "add()", "insert()", "push()"],
    ["pop()", "remove()", "delete()", "subtract()"],
    ["sort()", "order()", "arrange()", "organize()"],
    ["join()", "concat()", "combine()", "merge()"],
    ["for", "while", "do-while", "loop"],
    ["break", "continue", "return", "exit"]
  ];

  static const cplus = [
    [
      "A programming language",
      "A file format",
      "A markup language",
      "A database"
    ],
    ["++", "+=", "+", "--"],
    ["--", "-=", "-", "++"],
    ["*", "&", "%", "@"],
    ["class", "struct", "object", "instance"],
    ["new", "create", "initialize", "instantiate"],
    ["private", "protected", "public", "hidden"],
    ["public", "protected", "private", "visible"],
    ["protected", "private", "public", "accessible"],
    ["cout()", "print()", "log()", "output()"],
    ["length()", "size()", "len()", "count()"],
    ["atoi()", "toInt()", "convertToInt()", "integer()"],
    ["atof()", "toFloat()", "convertToFloat()", "floating()"],
    ["rand()", "random()", "generateRandom()", "nextRandom()"],
    ["round()", "getRound()", "std::round()", "roundNumber()"],
    ["new[]", "create[]", "initialize[]", "instantiate[]"],
    ["[]", "{}", "()", "<>"],
    ["push_back()", "add()", "insert()", "append()"],
    ["pop_back()", "remove()", "delete()", "subtract()"],
    ["for", "while", "do-while", "loop"]
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      if (widget.title == "HTML") {
        questions = [
          "What does HTML stand for?",
          "What is the correct tag for the largest heading in HTML?",
          "What is the correct tag for creating an unordered list in HTML?",
          "What is the correct tag for creating a hyperlink in HTML?",
          "What is the correct tag for creating an image in HTML?",
          "What is the correct tag for creating a line break in HTML?",
          "What is the correct tag for creating a table in HTML?",
          "What is the correct tag for creating a table header in HTML?",
          "What is the correct tag for creating a table row in HTML?",
          "What is the correct tag for creating a table data cell in HTML?",
          "What is the correct tag for creating a paragraph in HTML?",
          "What is the correct tag for creating a horizontal rule in HTML?",
          "What is the correct tag for creating a form in HTML?",
          "What is the correct tag for creating a text input field in HTML?",
          "What is the correct tag for creating a checkbox input field in HTML?",
          "What is the correct tag for creating a radio button input field in HTML?",
          "What is the correct tag for creating a dropdown list in HTML?",
          "What is the correct tag for creating a submit button in HTML?",
          "What is the correct tag for creating a reset button in HTML?",
          "What is the correct tag for creating a comment in HTML?"
        ];
        options = htmlOptions;
      } else if (widget.title == "CSS") {
        questions = [
          "What does CSS stand for?",
          "Which property is used to change the background color of an element in CSS?",
          "Which property is used to change the text color of an element in CSS?",
          "Which property is used to change the font size of an element in CSS?",
          "Which property is used to set the width of an element in CSS?",
          "Which property is used to set the height of an element in CSS?",
          "Which property is used to set the margin of an element in CSS?",
          "Which property is used to set the padding of an element in CSS?",
          "Which property is used to set the border of an element in CSS?",
          "Which property is used to change the font family of an element in CSS?",
          "Which property is used to make text bold in CSS?",
          "Which property is used to make text italic in CSS?",
          "Which property is used to make text underlined in CSS?",
          "Which property is used to create a shadow effect on text in CSS?",
          "Which property is used to set the alignment of text in CSS?",
          "Which property is used to display an element as a block-level element in CSS?",
          "Which property is used to display an element as an inline-level element in CSS?",
          "Which property is used to display an element as an inline-block element in CSS?",
          "Which property is used to set the position of an element in CSS?",
          "Which property is used to set the visibility of an element in CSS?"
        ];

        options = cssOptions;
      } else if (widget.title == "JavaScript") {
        options = javascriptOptions;
        questions = [
          "What does JavaScript do?",
          "Which keyword is used to declare a variable in JavaScript?",
          "Which keyword is used to define a function in JavaScript?",
          "Which operator is used to concatenate strings in JavaScript?",
          "Which operator is used to compare two values in JavaScript?",
          "Which operator is used to assign a value to a variable in JavaScript?",
          "Which operator is used to check if a value is equal to a specific value in JavaScript?",
          "Which operator is used to check if a value is not equal to a specific value in JavaScript?",
          "Which function is used to output a message to the browser console in JavaScript?",
          "Which function is used to get the length of a string in JavaScript?",
          "Which function is used to convert a string to an integer in JavaScript?",
          "Which function is used to convert a string to a floating-point number in JavaScript?",
          "Which function is used to generate a random number in JavaScript?",
          "Which function is used to round a number to the nearest integer in JavaScript?",
          "Which function is used to create a new array in JavaScript?",
          "Which method is used to add a new element to the end of an array in JavaScript?",
          "Which method is used to remove the last element from an array in JavaScript?",
          "Which method is used to sort the elements of an array in JavaScript?",
          "Which method is used to join the elements of an array into a string in JavaScript?"
        ];
      } else if (widget.title == "Python") {
        questions = [
          "What does Python do?",
          "Which keyword is used to declare a variable in Python?",
          "Which keyword is used to define a function in Python?",
          "Which keyword is used to import a module in Python?",
          "Which operator is used to concatenate strings in Python?",
          "Which operator is used to compare two values in Python?",
          "Which operator is used to assign a value to a variable in Python?",
          "Which function is used to output a message to the console in Python?",
          "Which function is used to get the length of a string in Python?",
          "Which function is used to convert a string to an integer in Python?",
          "Which function is used to convert a string to a floating-point number in Python?",
          "Which function is used to generate a random number in Python?",
          "Which function is used to round a number to the nearest integer in Python?",
          "Which function is used to create a new list in Python?",
          "Which method is used to add a new element to the end of a list in Python?",
          "Which method is used to remove the last element from a list in Python?",
          "Which method is used to sort the elements of a list in Python?",
          "Which method is used to join the elements of a list into a string in Python?",
          "Which statement is used to execute a block of code repeatedly in Python?",
          "Which statement is used to terminate a loop in Python?"
        ];
        options = python;
      } else if (widget.title == "C++") {
        questions = [
          "What is C++?",
          "Which operator is used to increment a variable in C++?",
          "Which operator is used to decrement a variable in C++?",
          "Which operator is used to access the value at a memory address in C++?",
          "Which keyword is used to declare a class in C++?",
          "Which keyword is used to create a new instance of a class in C++?",
          "Which keyword is used to make a member variable or function private in a C++ class?",
          "Which keyword is used to make a member variable or function public in a C++ class?",
          "Which keyword is used to make a member variable or function protected in a C++ class?",
          "Which function is used to output a message to the console in C++?",
          "Which function is used to get the length of a string in C++?",
          "Which function is used to convert a string to an integer in C++?",
          "Which function is used to convert a string to a floating-point number in C++?",
          "Which function is used to generate a random number in C++?",
          "Which function is used to round a number to the nearest integer in C++?",
          "Which function is used to create a new array in C++?",
          "Which operator is used to access an element of an array in C++?",
          "Which function is used to add a new element to the end of a C++ array?",
          "Which function is used to remove the last element from a C++ array?",
          "Which statement is used to execute a block of code repeatedly in C++?"
        ];
        options = cplus;
      }
      for (var i = 0; i < options.length; i++) {
        shuffledOptions.add(options[i].toList()..shuffle());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz ${widget.title}"),
      ),
      body: currentQuestionIndex < questions.length
          ? buildQuizBody()
          : buildResultScreen(),
    );
  }

  Widget buildQuizBody() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(questions[currentQuestionIndex],
              style:
                  const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16.0),
          buildOptionsList(),
          const SizedBox(height: 16.0),
          buildNextButton(),
        ],
      ),
    );
  }

  Widget buildOptionsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: shuffledOptions[currentQuestionIndex]
          .asMap()
          .entries
          .map(
            (entry) => RadioListTile(
              title: Text(entry.value),
              value: entry.key,
              groupValue: selectedOptionIndex,
              onChanged: (value) {
                setState(() {
                  selectedOptionIndex = value;
                });
              },
            ),
          )
          .toList(),
    );
  }

  Widget buildNextButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectedOptionIndex == null
            ? null
            : () {
                setState(() {
                  answers.add(selectedOptionIndex ?? 0);
                  currentQuestionIndex++;
                  selectedOptionIndex = null;
                });
              },
        child: Text(
            currentQuestionIndex == questions.length - 1 ? "Finish" : "Next"),
      ),
    );
  }

  Widget buildResultScreen() {
    int correctAnswers = 0;
    for (int i = 0; i < answers.length; i++) {
      if (shuffledOptions[i][answers[i]] == options[i][0]) {
        correctAnswers++;
      }
    }
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Test result:",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Text(
              "$correctAnswers/${answers.length}",
              style: const TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizGrid extends StatelessWidget {
  const QuizGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = ["HTML", "CSS", "JavaScript", "Python", "C++"];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: GridView.builder(
        itemCount: titles.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          return buildCard(context, titles[index]);
        },
      ),
    );
  }

  Widget buildCard(BuildContext context, String title) {
    return Card(
      // elevation: 8.0,
      margin: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizApp(title: title),
              ));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              child: const Text("Start Test"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizApp(title: title),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
