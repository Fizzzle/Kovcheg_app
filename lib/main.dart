import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'screens/favorite_screen.dart';
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
      routes: {
        "/favoritepage": (context) => FavoriteScreens(),
        "/homepage": (context) => HomePage(),
      },
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
                color: Colors.white,
                urlImage: "assets/onboarding_Img/notifi.jpg",
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
                color: Colors.white,
                urlImage: "assets/onboarding_Img/qr-ko.png",
                title: "Будущие возможности \nИспользуй QRCode",
                subtitle:
                    "Сканируй QR за столом раз в сутки и получай бонусные баллы, которые в будущем можно обменять на скидку \n выбор фильма на вечер кино Gorod и многое другое",
              ),
            ),
          ],
        ),
        bottomSheet: isLastPage
            ? Container(
                color: Colors.white,
                height: 80,
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () async {
                          /* 
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);
                */

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 3,
                            ),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 224, 243, 253),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Начать",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.orange[900]))),
                      ),
                    ]))
            : Container(
                color: Colors.white,
                height: 80,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      ),
                      child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 3,
                          ),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 224, 243, 253),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Продолжить",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.orange[900]))),
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        spacing: 16,
                        dotColor: Colors.black,
                        activeDotColor: Colors.grey,
                      ),
                      onDotClicked: (index) => controller.animateToPage(
                        index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      ),
                    ),
                  ],
                ),
              ),
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
          ),
          /* TextButton(
            onPressed: () => functionButton,
            child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 176, 206, 216),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: double.infinity,
                child: Center(
                    child: Text(
                  buttonText,
                  style: TextStyle(
                    color: Colors.orange[900],
                    fontWeight: FontWeight.bold,
                  ),
                ))),
          ), */
        ],
      ),
    );
