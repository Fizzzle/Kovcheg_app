import 'package:flutter/material.dart';
import 'package:noy_kovcheg/models/ostrov_ps.dart';
import 'package:noy_kovcheg/models/ostrov_room.dart';
import 'package:noy_kovcheg/screens/ostrov/ostrov_room_detail.dart';

import '../../animations/fade_animation.dart';
import '../../constants/const.dart';
import '../../widgets/discount_card.dart';
import '../../widgets/kovcher_appbar.dart';

class OstrovScreen extends StatefulWidget {
  const OstrovScreen({super.key});

  @override
  State<OstrovScreen> createState() => _OstrovScreenState();
}

class _OstrovScreenState extends State<OstrovScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarKovcheg(
        img: "assets/logo/ostrovlogo.png",
        color: Color.fromARGB(250, 245, 198, 140),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                ),
                child: Discount_Card(
                    borderRadius: 1,
                    radiusEgle: 20,
                    textContainer: false,
                    image: "assets/ostrov/card/showFirst.jpg"),
              ),
              Text(
                "Создаем яркие \n десткие воспоминания",
                textAlign: TextAlign.center,
                style: kH2Text,
              ),
              SizedBox(
                height: 20,
              ),
              Discount_Card(
                  textContainer: false,
                  image: "assets/ostrov/card/showtwo.jpg"),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  _category_list("Детсткие Комнаты", ostrovRoom, true),
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                    indent: 52,
                    endIndent: 52,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Море возможностей \n для маленьких личностей",
                    textAlign: TextAlign.center,
                    style: kH2Text,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Discount_Card(
                      textContainer: false,
                      borderRadius: 2,
                      image: "assets/ostrov/card/psshow.jpg"),
                  SizedBox(
                    height: 20,
                  ),
                  _category_list("Игры на PS5", ostrovPS, false),
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                    indent: 52,
                    endIndent: 52,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Так же у нас можно вкусно \n покушать",
                    textAlign: TextAlign.center,
                    style: kH2Text,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Discount_Card(
                      textContainer: false,
                      borderRadius: 2,
                      image: "assets/ostrov/card/showkyxn.jpg"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Кухня/ Напитки",
                    textAlign: TextAlign.center,
                    style: kH2Text,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  FadeAnimation _category_list(text, listname, room) {
    return FadeAnimation(
      intervalEnd: 0.8,
      child: Column(
        children: [
          Center(
            child: Text(
              text,
              style: kH2Text,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 140,
            child: ListView.builder(
              itemCount: listname.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemExtent: 100,
              itemBuilder: ((context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => OstrovRoomDetail(
                            isRoom: room,
                            name: listname[index].name.toString(),
                            description: listname[index].description.toString(),
                            image: listname[index].imageAssets.toString(),
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 78,
                          width: 78,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              '${listname[index].imageAssets}',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${listname[index].name}",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

// Название комнат

List<OstrovRoom> ostrovRoom = [
  OstrovRoom(
    name: "Барабан",
    description:
        "Добро пожаловать в комнату БАРАБАН, где дети крутятся медленно и весело, словно играют в ритмы счастья! Здесь каждый день — веселый музыкальный карнавал внутри волшебного барабана, где сбываются мечты маленьких мелодистов",
    imageAssets: "assets/ostrov/room/bapaban.jpg",
  ),
  OstrovRoom(
    name: "Кубики",
    description:
        "Добро пожаловать в комнату Кубики, где дети могут прыгать в мир воображения, создавая свои яркие приключения на каждом углу!",
    imageAssets: "assets/ostrov/room/kubiki.jpg",
  ),
  OstrovRoom(
    name: "Канат",
    description:
        "В комнате КАНАТ каждый ребенок - как настоящий тарзан, свободно качается и весело спускается, создавая незабвенные моменты высоты и вдохновения!",
    imageAssets: "assets/ostrov/room/kanat.jpg",
  ),
  OstrovRoom(
    name: "Прожектор",
    description:
        "Добро пожаловать в комнату Прожектор, где каждая ночь — встреча с космической сказкой. Здесь дети могут не только увидеть звезды, но и потрогать их руками, раскрывая тайны бескрайних галактик в своих мечтах.",
    imageAssets: "assets/ostrov/room/projector.jpg",
  ),
  OstrovRoom(
    name: "Шарики",
    description:
        "В комнате Шарики каждый момент наполнен радостью! Дети могут погружаться в море веселья, балуясь в куче ярких шариков, делая каждый миг незабвенным весельем и смехом.",
    imageAssets: "assets/ostrov/room/wapiki.jpg",
  ),
];

// Название игр

List<OstrovPS> ostrovPS = [
  OstrovPS(
    name: "Spider-Man: Miles Morales",
    description:
        "Marvel’s Spider-Man: Miles Morales — игра в жанре приключенческого экшена 2020 года, разработанная Insomniac Games в сотрудничестве с Marvel Games и изданная Sony Interactive Entertainment.",
    imageAssets: "assets/ostrov/ps5game/spiderman.jpg",
  ),
  OstrovPS(
    name: "God of War: Ragnarök",
    description:
        "God of War: Ragnarök — компьютерная игра в жанре action-adventure с элементами hack and slash, разработанная компанией Santa Monica Studio и изданная Sony Interactive Entertainment. Является девятой игрой в серии God of War и прямым сюжетным продолжением игры God of War, вышедшей в 2018 году.",
    imageAssets: "assets/ostrov/ps5game/god.jpg",
  ),
  OstrovPS(
    name: "FIFA 23",
    description:
        "FIFA 23 — компьютерная игра в жанре спортивного симулятора, 30-я в серии FIFA, разработанная компанией EA Vancouver под издательством Electronic Arts. Видеоигра вышла на ПК, PlayStation 4, PlayStation 5, Xbox One, Xbox Series X/S и Nintendo Switch 30 сентября 2022 года",
    imageAssets: "assets/ostrov/ps5game/fifa23.jpg",
  ),
  OstrovPS(
    name: "Assassin’s Creed Mirage",
    description:
        "Assassin’s Creed Mirage — предстоящая компьютерная игра в жанре action-adventure, разрабатываемая студией Ubisoft Bordeaux и изданная Ubisoft. Является тринадцатой крупной частью серии Assassin’s Creed и преемником игры Assassin’s Creed Valhalla.",
    imageAssets: "assets/ostrov/ps5game/assan.jpg",
  ),
];
