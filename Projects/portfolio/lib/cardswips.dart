import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class CardSwip extends StatefulWidget {
  @override
  State<CardSwip> createState() => _CardSwipState();
}

class _CardSwipState extends State<CardSwip> {
  final CardSwiperController controller = CardSwiperController();

  final List<String> companyList = [
    "1Team.ai",
    "Salesken.ai",
    "Salesken.ai",
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  late bool reason;

  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CardSwiper(
      controller: controller,
      cardsCount: companyList.length,
      isLoop: false,
      onSwipe: _onSwipe,
      onUndo: _onUndo,
      cardBuilder: (context, index, activeIndex, realIndex) {
        final card = companyList[index];
        Widget cardContent = Align(
          alignment: Alignment.topLeft,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
                children: [
                  Text(
                    card,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  if (index == 0) ...[
                    Text("Designation : Software Developer", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                    Text("\nGurgaon | September 2023 - Present\n", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("1. At 1team, a startup under Automation Simplified, my primary responsibilities revolve around backend development, "
                        "where I build new services as per requirements and create APIs to facilitate task processing and management. "
                        "This involves overseeing the entire task pipeline, ensuring tasks move seamlessly from one stage to another, and using cron to make these tasks visible to end users,"
                        " which allows employers/employees of a company to create/manage tasks of other employees.\n"
                        "\n2. Additionally, I contribute to the Flutter application, handling tasks such as managing and uploading the application to both the Play Store and the App Store."
                        " I also engage in new feature development/Solving Bugs, alongside tasks like managing, reviewing, and cleaning up code, ensuring it meets quality standards.", style: TextStyle(fontSize: 18),),
                    Text("\nSKILLS : ", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("Apache Camel · Apache ActiveMQ · MongoDB · Flutter · Dart · Java · Spring Boot And Spring MVC."
                        "Furthermore, I am adept at working with Xcode, Android Studio, Firebase, Sentry, and various other tools essential to our development process", style: TextStyle(fontSize: 18),),
                    Text("\n3. I also worked on a project for Nehru World School (NWS), where I helped develop a comprehensive School Management System. "
                        "This project provided several functionalities including tracking teacher and student attendance, managing assignments, sending feedback to parents,"
                        " and importing timetables according to teachers' plans. The system was designed to streamline administrative and educational processes, "
                        "thereby enhancing efficiency and communication within the school.", style: TextStyle(fontSize: 18),),
                    Text("\nSKILLS : ", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("MongoDB · Java · Spring Boot And Spring MVC · Apache Cordova(For Android Development).", style: TextStyle(fontSize: 18),),
                  ],
                  if (index == 1) ...[
                    Text("Designation : Software Developer", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                    Text("\nBengaluru | July 2023 - August 2023\n", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("1. Working with the Core Development Team on building the Salesken app, which enables salespeople to call customers, analyze their calls, "
                        "and generate detailed reports for managers. The app integrates advanced analytics and machine learning algorithms to provide real-time feedback and insights, "
                        "helping sales teams improve their performance and strategies.\n"
                        "\n2. Worked with the Integration Team, building projects for importing call records and their metadata. "
                        "This involved developing robust data pipelines and ensuring seamless integration with existing systems. "
                        "Additionally, I collaborated with cross-functional teams to enhance data accuracy, optimize processing eciency, "
                        "and support comprehensive data analysis for better decision-making.", style: TextStyle(fontSize: 18),),
                    Text("\nSKILLS : ", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("PostgreSQL · Git · Elasticsearch · Kibana · Java · Spring Framework · Maven · Agile Methodologies · Oauth2 · Zendesk & Pipedrive Api · CRM", style: TextStyle(fontSize: 18),),
                  ],
                  if (index == 2) ...[
                    Text("Designation : Tech Intern", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                    Text("\nBengaluru | November 22 - July 2023\n", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("Worked with integration team, building backend java services for importing call records and their metadata Hands-on training in Spring MVC framework", style: TextStyle(fontSize: 18),),
                    Text("\nSKILLS : ", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("HTML · JS · JSP · Backend · REST web services & MVC Web Application Development · OAuth2 · Rest API", style: TextStyle(fontSize: 18),),
                  ],
                ],
              ),
            ),
          ),
        );
        return Card(
          elevation: 40,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(child: cardContent),
              ),
              if (index == 1 || index == 2)
                Positioned(
                  right: 10.0,
                  bottom: 10.0,
                  child: FloatingActionButton(
                    onPressed: controller.undo,
                    child: const Icon(Icons.rotate_left),
                    mini: true,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  bool _onSwipe(
      int previousIndex, int? currentIndex, CardSwiperDirection direction) {
    debugPrint(
        'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top');

    // Check if the currentIndex is the last index
    if (currentIndex == null) {
      if (_textFieldController.text.isEmpty) {
        return false;
      } else {
        print('swiped');
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) =>(),
        //   ),
        // );
      }
    }
    return true;
  }

  bool _onUndo(
      int? previousIndex, int currentIndex, CardSwiperDirection direction) {
    debugPrint('The card $currentIndex was undone from the ${direction.name}');
    return true;
  }
}

bool checkInputValue(String inputText) {
  int stringLength = inputText.length;

  int digitSum = 0;
  bool isNumber = true;
  for (int i = 0; i < inputText.length; i++) {
    if (!RegExp(r'\d').hasMatch(inputText[i])) {
      isNumber = false;
      break;
    }
    digitSum += int.parse(inputText[i]);
  }

  // Check if the conditions are met
  if ((stringLength == 7 || digitSum == 7) && isNumber) {
    return true;
  } else if (stringLength == 7 && !isNumber) {
    return true;
  } else {
    return false;
  }
}