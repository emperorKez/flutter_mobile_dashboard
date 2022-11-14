import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
 var  packageInfo;
  Color? tileColor;
  var tileShape =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(0));
  Icon trailingIcon = Icon(CupertinoIcons.chevron_right_circle_fill);
  bool notification = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    tileColor = Theme.of(context).cardColor;
    return SafeArea(
        child: Scaffold(
            // backgroundColor: Color(0xffe5e5e5),
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () =>
                      Navigator.popUntil(context, ModalRoute.withName('/'))),
              title: Text('Settings'),
              centerTitle: true,
            ),
            body: ListView(padding: EdgeInsets.all(10), children: [
              ListTile(
                leading: Icon(Icons.currency_exchange_rounded),
                title: Text('Currency'),
                tileColor: tileColor,
                shape: tileShape,
                trailing: Text('NGN'),
                onTap: () {},
                iconColor: Color(0xff3894d5),
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Language'),
                tileColor: tileColor,
                shape: tileShape,
                trailing: Text('English'),
                onTap: () {},
                iconColor: Color(0xff3894d5),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notification'),
                tileColor: tileColor,
                shape: tileShape,
                trailing: Switch(
                    activeColor: Colors.lightGreenAccent,
                    value: notification,
                    onChanged: (value) {}),
                iconColor: Color(0xff3894d5),
              ),
              ListTile(
                leading: Icon(Icons.dark_mode_rounded),
                title: Text('Dark Mode'),
                tileColor: tileColor,
                shape: tileShape,
                trailing: Switch(
                    activeColor: Colors.lightGreenAccent,
                    value: darkMode,
                    onChanged: (value) {
                      // darkMode = value;
                      // Get.changeTheme(appController.darkMode.value
                      //     ? BuzymartTheme.darkTheme
                      //     : BuzymartTheme.lightTheme);
                      // saveThemeStatus();
                    }),
                iconColor: Color(0xff3894d5),
              ),
              Divider(),
              ListTile(
                title: Text('Version'),
                subtitle: Text(packageInfo?.version ?? '1.0.0'),
                tileColor: tileColor,
                shape: tileShape,
                trailing: TextButton(onPressed: () {}, child: Text('Update')),
                onTap: () {},
              ),
              ListTile(
                title: Text('legal'),
                tileColor: tileColor,
                shape: tileShape,
                onTap: () {},
              ),
              ListTile(
                title: Text('Rate the App'),
                tileColor: tileColor,
                shape: tileShape,
                onTap: () {},
              ),
            ])));
  }
getPackageInfo() async{
  packageInfo = await PackageInfo.fromPlatform();
}
  // saveThemeStatus() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool('theme', appController.darkMode.value);
  // }
}
