import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: deviceWidth / 5,
        title: Padding(
          padding: EdgeInsets.only(left: deviceWidth / 30),
          child: Image.asset(
            'assets/logo_umkt.png',
            scale: 4,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              size: deviceWidth / 13,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_2_outlined,
              size: deviceWidth / 13,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          welcomeWidget(deviceWidth),
          searchBarWidget(deviceWidth),
          kepegawaianWidget(deviceWidth),
          akademikWidget(deviceWidth),
          evaluasiWidget(deviceWidth),
        ],
      ),
    );
  }

  Widget welcomeWidget(deviceWidth) {
    return Padding(
      padding: EdgeInsets.all(deviceWidth / 20),
      child: Container(
        padding: EdgeInsets.fromLTRB(deviceWidth / 20, deviceWidth / 20,
            deviceWidth / 20, deviceWidth / 30),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xff444b8d), Color(0xff5a65be)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(deviceWidth / 30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome, UMKT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: deviceWidth / 25,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: deviceWidth / 35,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.card_giftcard,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: deviceWidth / 40,
                    ),
                    Text(
                      '2011102441082',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth / 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceWidth / 90,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: deviceWidth / 40,
                    ),
                    Text(
                      'irfanabror099@gmail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth / 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceWidth / 90,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.home_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: deviceWidth / 40,
                    ),
                    Text(
                      'Fakultas Sains dan Teknologi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth / 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: deviceWidth / 10,
              height: deviceWidth / 10,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3.0),
                  shape: BoxShape.circle),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBarWidget(deviceWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth / 20),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              spreadRadius: .2,
              blurRadius: 10,
              offset: const Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(deviceWidth / 10)),
        ),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            suffixIcon: Icon(
              Icons.search,
              size: deviceWidth / 20,
              color: Colors.grey.withOpacity(0.5),
            ),
            hintText: 'Search',
            hintStyle: TextStyle(fontSize: deviceWidth / 25),
            contentPadding: EdgeInsets.symmetric(horizontal: deviceWidth / 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(deviceWidth / 10)),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(deviceWidth / 50)),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget card(deviceWidth, text, gambar) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(deviceWidth / 27),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(deviceWidth / 50),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Image.asset(
            gambar,
            width: deviceWidth / 10,
          ),
        ),
        SizedBox(
          height: deviceWidth / 30,
        ),
        Text(
          text,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: deviceWidth / 35, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget kepegawaianWidget(deviceWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: deviceWidth / 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth / 20),
            child: Text(
              'Kepegawaian',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: deviceWidth / 25,
              ),
            ),
          ),
          SizedBox(
            height: deviceWidth / 20,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            mainAxisSpacing: deviceWidth / 9,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              card(deviceWidth, 'SIP-LK', 'assets/coin.png'),
              card(deviceWidth, 'BERKAS', 'assets/folder.png'),
              card(deviceWidth, 'SI HRD', 'assets/hrd.png'),
              card(deviceWidth, 'APPLE', 'assets/apple.png'),
              card(deviceWidth, 'SARPRAS', 'assets/sarpras.png'),
              card(deviceWidth, 'MANAJEMEN SURAT', 'assets/email.png'),
              card(deviceWidth, 'PAPERLESS', 'assets/paperless.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget akademikWidget(deviceWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: deviceWidth / 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth / 20),
            child: Text(
              'Akademik',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: deviceWidth / 25,
              ),
            ),
          ),
          SizedBox(
            height: deviceWidth / 20,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            mainAxisSpacing: deviceWidth / 9,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              card(deviceWidth, 'INSENTIF', 'assets/trophy.jpg'),
              card(deviceWidth, 'SIKAD', 'assets/grad.png'),
              card(deviceWidth, 'SIKEMAS', 'assets/analytic.png'),
              card(deviceWidth, 'SIMPEL', 'assets/microscope.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget evaluasiWidget(deviceWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: deviceWidth / 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth / 20),
            child: Text(
              'Evaluasi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: deviceWidth / 25,
              ),
            ),
          ),
          SizedBox(
            height: deviceWidth / 20,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            mainAxisSpacing: deviceWidth / 9,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              card(deviceWidth, 'LOREM', 'assets/checklist.png'),
              card(deviceWidth, 'LOREM', 'assets/clipboard.png'),
              card(deviceWidth, 'LOREM', 'assets/audit.png'),
            ],
          ),
        ],
      ),
    );
  }
}
