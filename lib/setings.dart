import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_volume_controller/flutter_volume_controller.dart';
import 'package:masyu_app/widgets/core.dart';
import 'package:masyu_app/widgets/tile.dart';
import 'main.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  bool? sound = true;
  bool vibrate = true;
  String _selectedOption = 'Français';
  List<String> _options = ['Français', 'Deutch', 'English', 'Español', '日本'];

  @override
  void initState() {
    super.initState();
    getMuteState();
  }

  void seeHomePage() {
    Navigator.pushReplacement<void, void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const MenuPage(),
      ),
    );
  }

  Future<void> getMuteState() async {
    bool? muted = await FlutterVolumeController.getMute();
    setState(() {
      sound = !muted!;
    });
  }

  Future<void> onSoundChanged(bool value) async {
    await FlutterVolumeController.setMute(!value);
    setState(() {
      sound = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CoreWidget(
        child: Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
                onPressed: seeHomePage,
                icon: Icon(
                  BootstrapIcons.arrow_left,
                  color: Colors.white,
                  size: 25,
                )),
            const SizedBox(width: 15),
            const Text("MASYU",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 10,
                    fontSize: 40,
                    fontWeight: FontWeight.w600))
          ]),
          const SizedBox(height: 80),
          Container(
            width: 125,
            height: 48,
            decoration: BoxDecoration(
                color: Color.fromARGB(50, 217, 217, 217),
                border: Border.all(
                  color: Color.fromARGB(50, 217, 217, 217),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  BootstrapIcons.volume_up_fill,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(width: 15),
                Switch(
                  value: sound ?? true,
                  onChanged: onSoundChanged,
                  activeColor: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            width: 125,
            height: 48,
            decoration: BoxDecoration(
                color: Color.fromARGB(50, 217, 217, 217),
                border: Border.all(
                  color: Color.fromARGB(50, 217, 217, 217),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  BootstrapIcons.phone_vibrate,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(width: 15),
                Switch(
                  value: vibrate,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      vibrate = value;
                    });
                  },
                  activeColor: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            width: 220,
            height: 49,
            decoration: BoxDecoration(
              color: Color(0xff373855),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Theme(
                data: ThemeData(
                  canvasColor: Color(0xff373855),
                ),
                child: DropdownButton<String>(
                  underline: SizedBox(),
                  value: _selectedOption,
                  iconEnabledColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                  items: _options.map((String option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: SizedBox(
                        width: 220 - 24,
                        child: Text(
                          option,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Crédits :\n\nProjet Réalisé par :\nUnboring Company\n\nUne équipe composée de :\nLéo WADIN\nAurélien HOUDART\nDamien COLLOT\nElena BEYLAT",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
    ));
  }
}
