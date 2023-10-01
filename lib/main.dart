import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kovcheg',
      theme: ThemeData.dark(),
      home: OnBoarding(), // HomePage(),
    );
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              setState(() => isLastPage = index == 2);
            });
          },
          children: [
            GestureDetector(
              onTap: () => controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              ),
              child: buildPage(
                color: Colors.white,
                urlImage: "assets/onboarding_Img/Kovcheg_logo_1.jpg",
                title: "Получай максимальные возможности",
                subtitle:
                    "Узнавай первым про бонусы, скидки, новинки, специальные предложения и праздничные мероприятия",
              ),
            ),
            GestureDetector(
              onTap: () => controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              ),
              child: buildPage(
                color: Color.fromARGB(255, 240, 255, 127),
                urlImage: "assets/onboarding_Img/pushNotifice.png",
                title: "Получай уведомления",
                subtitle:
                    "Про новые блюда, скидки, о вечере кино и о живой музыке и о твоих возможностях за бонусы",
              ),
            ),
            GestureDetector(
              onTap: () async {
                /* 
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);
                */

                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: buildPage(
                black: false,
                color: Color.fromARGB(255, 12, 37, 68),
                urlImage: "assets/onboarding_Img/qqr.jpg",
                title: "Будущие возможности \nИспользуй QRCode",
                subtitle:
                    "Сканируй QR за столом раз в сутки и получай бонусные баллы, которые в будущем можно обменять на скидку \n выбор фильма на вечер кино Gorod и многое другое",
              ),
            ),
          ],
        ),
        /*
        bottomSheet: isLastPage
            ? TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
                onPressed: () {},
                child: Text("Старт", style: TextStyle(fontSize: 30)),
              )
            : Container(
                color: Colors.white.withOpacity(0.5),
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        spacing: 16,
                        dotColor: Colors.black,
                        activeDotColor: Colors.white,
                      ),
                      onDotClicked: (index) => controller.animateToPage(
                        index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      ),
                    ),
                  ],
                ),
              ), */
      );
}

Widget buildPage({
  required Color color,
  required String urlImage,
  required String title,
  required String subtitle,
  bool black = true,
}) =>
    Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            urlImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          SizedBox(
            height: 65,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: black ? Colors.black : Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: black ? Colors.black54 : Colors.white60,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
