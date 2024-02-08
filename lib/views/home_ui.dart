// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_element

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    _tabController =
        TabController(length: 7, vsync: this, initialIndex: _currentTabIndex);
    super.initState();
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.pink,
          title: Text(
            'DTI Cake Shop',
            style: GoogleFonts.kanit(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                exit(0);
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.yellow,
            indicatorWeight: 5,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(
                icon: Icon(FontAwesomeIcons.shop),
                text: 'เค้กบ้านสวน',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.shop),
                text: 'เค้กบ้านน่ารัก',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.shop),
                text: 'เค้กบ้านสดใหม่',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.shop),
                text: 'เค้กบ้านหอม',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.shop),
                text: 'เค้กบ้านอร่อย',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.shop),
                text: 'เค้กบ้านครีมข้น',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.shop),
                text: 'เค้กบ้านเสน่ห์',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'SAU Cake Shop',
                  style: GoogleFonts.kanit(),
                ),
                accountEmail: Text(
                  'แอปสำหรับคนชอบกินเค้ก',
                  style: GoogleFonts.kanit(),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/bg_welcome.png',
                      ),
                      fit: BoxFit.cover),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2018/05/01/18/21/eclair-3366430_1280.jpg'),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/09/19/08/52/pancake-2764589_1280.jpg'),
                  )
                ],
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 0;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck01.png'),
                ),
                title: Text(
                  'เค้กบ้านสวน',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 1;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck02.png'),
                ),
                title: Text(
                  'เค้กบ้านน่ารัก',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 2;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck03.png'),
                ),
                title: Text(
                  'เค้กบ้านสดใหม่',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 3;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck04.png'),
                ),
                title: Text(
                  'เค้กบ้านหอม',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 4;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck05.png'),
                ),
                title: Text(
                  'เค้กบ้านอร่อย',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 5;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck06.png'),
                ),
                title: Text(
                  'เค้กบ้านครีมข้น',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 6;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ck07.png'),
                ),
                title: Text(
                  'เค้กบ้านเสน่ห์',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  exit(0);
                },
                leading: Icon(Icons.exit_to_app),
                title: Text(
                  'ออกจากการใช้งาน',
                  style: GoogleFonts.kanit(),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            showShopWidget('เค้กบ้านสวน', 'assets/images/ck01.png', '0123456789',
                'http://www.sau.ac.th', '13.123456,100.23654'),
            showShopWidget('เค้กบ้านน่ารัก', 'assets/images/ck02.png', '0123456789',
                'http://www.sau.ac.th', '13.123456,100.23654'),
            showShopWidget('เค้กบ้านสดใหม่', 'assets/images/ck03.png', '0123456789',
                'http://www.sau.ac.th', '13.123456,100.23654'),
            showShopWidget('เค้กบ้านหอม', 'assets/images/ck04.png', '0123456789',
                'http://www.sau.ac.th', '13.123456,100.23654'),
            showShopWidget('เค้กบ้านอร่อย', 'assets/images/ck05.png', '0123456789',
                'http://www.sau.ac.th', '13.123456,100.23654'),
            showShopWidget('เค้กบ้านครีมข้น', 'assets/images/ck06.png', '0123456789',
                'http://www.sau.ac.th', '13.123456,100.23654'),
            showShopWidget('เค้กบ้านเสน่ห์', 'assets/images/ck07.png', '0123456789',
                'http://www.sau.ac.th', '13.123456,100.23654'),
          ],
        ),
      ),
    );
  }

  Widget showShopWidget(
      String shopName, shopImage, shopPhone, shopWeb, shopMap) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Text(
            shopName,
            style: GoogleFonts.kanit(
              fontSize: MediaQuery.of(context).size.height * 0.035,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Image.asset(
            shopImage,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: ListTile(
              onTap: () {
                _makePhoneCall(shopPhone);
              },
              tileColor: Colors.pink,
              leading: Icon(
                Icons.phone,
              ),
              title: Text(shopPhone),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: ListTile(
              onTap: () {
                _launchInBrowser(Uri.parse(shopWeb));
              },
              tileColor: Colors.pink,
              leading: Icon(
                Icons.web,
              ),
              title: Text(shopWeb),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                    Uri.parse('https://www.google.com/maps/@${shopMap},17z'));
              },
              tileColor: Colors.pink,
              leading: Icon(
                FontAwesomeIcons.mapLocation,
                color: Colors.white,
              ),
              title: Text('นำทางไปร้าน'),
            ),
          )
        ],
      ),
    );
  }
}
