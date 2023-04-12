import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:masyu_app/LocalString.dart';
import 'package:masyu_app/appstate.dart';
import 'package:masyu_app/classement.dart';
import 'package:masyu_app/objects/grille.dart';
import 'package:masyu_app/objects/cell.dart';
import 'package:masyu_app/objects/trait.dart';
import 'package:flutter/services.dart';
import 'package:masyu_app/rule.dart';
import 'package:masyu_app/setings.dart' as setting;
import 'package:masyu_app/solution.dart';
import 'package:masyu_app/widgets/citation.dart';
import 'package:masyu_app/widgets/sizedropdown.dart';
import 'package:masyu_app/widgets/tile.dart';
import 'package:masyu_app/widgets/core.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:get/get.dart';
import 'package:masyu_app/video.dart';
import 'package:confetti/confetti.dart';
import 'package:masyu_app/widgets/tripletap.dart';
import 'package:provider/provider.dart';

import 'game.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => AppState(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return GetMaterialApp(
      translations: LocalString(),
      locale: Locale('fr', 'FR'),
      debugShowCheckedModeBanner: false,
      title: 'MASYU',
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuPage(),
        '/game': (context) => GamePage(),
        '/solution': (context) => SolutionPage(),
        '/video': (context) => Video(),
        '/settings': (context) => setting.Settings(),
        '/rules': (context) => Rule(),
        '/classement': (context) => ClassementPage(),
      },
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MenuState();
}

class _MenuState extends State<MenuPage> {
  String _dropdownValue = '';
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.play();
  }

  void seeSettings() {
    Navigator.of(context).pushNamed('/settings');
  }

  void seeClassement() {
    Navigator.of(context).pushNamed('/classement');
  }

  void seeRules() {
    Navigator.of(context).pushNamed('/rules');
  }

  Future<String?> _getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
      var data = await deviceInfoPlugin.iosInfo;
      var identifier = data.identifierForVendor;
      return identifier;
    } else if (Platform.isAndroid) {
      final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      AndroidDeviceInfo androidInfo;
      try {
        androidInfo = await deviceInfo.androidInfo;
        return androidInfo.serialNumber;
      } catch (e) {
        print('Error: $e');
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String _selectedOption = '6x6';
    List<String> _options = ['6x6', '8x8', '10x10'];

    return CoreWidget(
        child: Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
              TripleTapButton(
                onPressed: _startAnimation,
                child: Text(
                  'title'.tr,
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 10,
                    fontSize: 0.10 * MediaQuery.of(context).size.width,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              CitationWidget(),
              SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Tile(
                    icon: Icon(
                      BootstrapIcons.play,
                      color: Color(0xff3D4AEB),
                      size: 0.20 * MediaQuery.of(context).size.width,
                    ),
                    title: 'resume'.tr,
                    onPressed: () async {
                      print('j ai cliqué');
                      String? id = await _getId();
                      await Firebase.initializeApp();
                      final docRef = FirebaseFirestore.instance
                          .collection('grilles')
                          .doc(id);
                      final docSnapshot = await docRef.get();
                      if (docSnapshot.exists) {
                        print('Le document existe');
                      } else {
                        print('Le document n existe pas');
                      }
                      final data = docSnapshot.data();
                      if (data != null) {
                        Grille grille = Grille.fromJson(data['grille']);
                        print('La grille a été récupéré');
                      }
                    },
                  ),
                  Tile(
                    icon: Icon(
                      BootstrapIcons.watch,
                      color: Color(0xff3D4AEB),
                      size: 0.16 * MediaQuery.of(context).size.width,
                    ),
                    title: 'challenge'.tr,
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
              Container(
                width: 0.85 * MediaQuery.of(context).size.width,
                height: 0.07 * MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color(0xff3D4AEB),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/game",
                      arguments: {'type': 'new', 'size': _dropdownValue},
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                  ),
                  child: Text('new_game'.tr),
                ),
              ),
              SizedBox(height: 0.015 * MediaQuery.of(context).size.height),
              GridSizeMenu(
                onChanged: (newValue) {
                  setState(() {
                    _dropdownValue = newValue;
                  });
                },
              ),
              SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 0.3 * MediaQuery.of(context).size.width,
                    height: 0.05 * MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Color(0xffB15653),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: seeRules,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Text('rules'.tr),
                    ),
                  ),
                  SizedBox(width: 0.001 * MediaQuery.of(context).size.width),
                  Row(
                    children: [
                      IconButton(
                        onPressed: seeClassement,
                        icon: Icon(
                          BootstrapIcons.trophy,
                          color: Colors.white,
                          size: 0.08 * MediaQuery.of(context).size.width,
                        ),
                      ),
                      SizedBox(width: 0.02 * MediaQuery.of(context).size.width),
                      IconButton(
                        onPressed: seeSettings,
                        icon: Icon(
                          BootstrapIcons.gear,
                          color: Colors.white,
                          size: 0.08 * MediaQuery.of(context).size.width,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ConfettiWidget(
            confettiController: _controller,
            blastDirectionality: BlastDirectionality.explosive,
            emissionFrequency: 0.05,
            numberOfParticles: 50,
            shouldLoop: false,
            colors: const [
              Colors.blue,
              Colors.purple,
              Colors.pink,
              Colors.green,
              Colors.yellow,
            ],
          ),
        )
      ],
    ));
  }
}
