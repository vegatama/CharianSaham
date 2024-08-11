import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class mobileHomePage extends StatelessWidget {
  const mobileHomePage({super.key});

  Future<void> goToWebPage(String urlString) async {
    final Uri _url = Uri.parse(urlString);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2.0),
          child: Container(
            height: 2.0,
            color: const Color.fromRGBO(0, 64, 119, 1),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "chariansaham.com",
          style: TextStyle(
              color: Color.fromRGBO(0, 64, 119, 1),
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // landing part
            Container(
              width: double.infinity,
              color: const Color.fromRGBO(249, 234, 213, 1),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      children: [
                        Text(
                            "Belajar Investasi dan Trading Saham Langsung Dari Invesment Specialist",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 64, 119, 1),
                                fontSize: 35,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text(
                            "Dapatkan Informasi Yang Tepat Sebelum Memutuskan Membuka Rekening Saham, Agar Dapat Memulai Dengan Benar.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 64, 119, 1),
                                fontSize: 19))
                      ],
                    ),
                    const SizedBox(height: 5),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromRGBO(245, 130, 32, 1),
                          radius: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Image.asset(
                              'assets/images/fotorian.png',
                              fit: BoxFit.fitHeight,
                              height: 315,
                            ),
                          ),
                        ),
                        const Text("CHARIAN FIRDIADY",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 64, 119, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            ),
            // introduction part
            Container(
              width: double.infinity,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text("Ikuti Langkah Ini Untuk Mulai Sekarang",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(245, 130, 32, 1),
                            fontSize: 35,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    Text(
                        "Anda tidak perlu bingung mulai dari mana, perjalanan investasi dan trading anda dimulai dengan 5 langkah ini",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 64, 119, 1),
                            fontSize: 19)),
                  ],
                ),
              ),
            ),
            // step 1
            Container(
              width: double.infinity,
              color: const Color.fromRGBO(249, 234, 213, 1),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Langkah #1",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color.fromRGBO(245, 130, 32, 1),
                                fontSize: 35,
                                fontWeight: FontWeight.bold)),
                        Text("Ikuti Media Sosial\nCharian Firdiady",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color.fromRGBO(245, 130, 32, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.w400)),
                        SizedBox(height: 20),
                        SizedBox(
                          width: 500,
                          child: Text(
                              "Ikuti Charian Firdiady di media sosial Instagram, Youtube, dan TikTok. Ada banyak konten membahas dunia Investasi dan Trading, baik Saham dan Rekasadana yang bisa Anda nikmati semua secara GRATIS",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 64, 119, 1),
                                  fontSize: 19)),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            await goToWebPage(
                                "https://www.instagram.com/charian.saham");
                          },
                          child: Stack(alignment: Alignment.center, children: [
                            Container(
                              height: 170,
                              width: 150,
                              alignment: Alignment.center,
                              child: Container(
                                height: 155,
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            const Color.fromRGBO(0, 64, 119, 1),
                                        width: 6.0)),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 110,
                                      width: 110,
                                      alignment: Alignment.center,
                                      child: ShaderMask(
                                        blendMode: BlendMode.srcIn,
                                        shaderCallback: (Rect bounds) =>
                                            const LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color.fromRGBO(112, 1, 247, 1),
                                            Color.fromRGBO(248, 139, 14, 1),
                                          ],
                                        ).createShader(bounds),
                                        child: const FaIcon(
                                          FontAwesomeIcons.instagram,
                                          size: 100,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const Text("@charian.saham")
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 50,
                              bottom: 0,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    bottom: 5, top: 5, left: 10, right: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Text(
                                  'Follow',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            )
                          ]),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () async {
                            await goToWebPage(
                                "https://www.instagram.com/charian.saham");
                          },
                          child: Stack(alignment: Alignment.center, children: [
                            Container(
                              height: 170,
                              width: 150,
                              alignment: Alignment.center,
                              child: Container(
                                height: 155,
                                width: 150,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            const Color.fromRGBO(0, 64, 119, 1),
                                        width: 6.0)),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 110,
                                      width: 140,
                                      alignment: Alignment.center,
                                      child: const FaIcon(
                                        FontAwesomeIcons.youtube,
                                        size: 100,
                                        color: Colors.red,
                                      ),
                                    ),
                                    const Text("charian Firdiady")
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              bottom: 0,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    bottom: 5, top: 5, left: 10, right: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Text(
                                  'Subscribe',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () async {
                        await goToWebPage(
                            "https://www.instagram.com/charian.saham");
                      },
                      child: Stack(alignment: Alignment.center, children: [
                        Container(
                          height: 170,
                          width: 150,
                          alignment: Alignment.center,
                          child: Container(
                            height: 155,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromRGBO(0, 64, 119, 1),
                                    width: 6.0)),
                            child: Column(
                              children: [
                                Container(
                                  height: 110,
                                  width: 140,
                                  alignment: Alignment.center,
                                  child: const FaIcon(
                                    FontAwesomeIcons.tiktok,
                                    size: 90,
                                  ),
                                ),
                                const Text("@charian_saham")
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 50,
                          bottom: 0,
                          child: Container(
                            padding: const EdgeInsets.only(
                                bottom: 5, top: 5, left: 10, right: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 130, 32, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Text(
                              'Follow',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            // step 2
            Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Langkah #2",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold)),
                            Text(
                                "Baca E-Book \nStarterpack Investasi\ndan Trading Saham",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(height: 20),
                            SizedBox(
                              width: 500,
                              child: Text(
                                  "E-Book karya Charian Firdiady dapat menjadi pintu masuk anda mengenal dunia Investasi dan Trading Saham. E-book ini berisi materi dasar yang mudah dipahami dan dapat di download secara GRATIS",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 64, 119, 1),
                                      fontSize: 19)),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () async {
                            await goToWebPage(
                                "https://www.instagram.com/charian.saham");
                          },
                          child: Stack(alignment: Alignment.center, children: [
                            Container(
                              height: 310,
                              width: 200,
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 100, bottom: 12),
                                child: Container(
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              0, 64, 119, 1),
                                          width: 6.0)),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 0,
                                child: Container(
                                  width: 155,
                                  child: Image.asset(
                                    'assets/images/ebook_saham.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                )),
                            Positioned(
                                bottom: 35,
                                child: Container(
                                  width: 155,
                                  child: const Text(
                                    "Sebuah fondasi awal Anda sebelum memulai Investasi dan Trading Saham serta bagaimana cara memulainya",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )),
                            Positioned(
                              left: 50,
                              bottom: 0,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    bottom: 5, top: 5, left: 10, right: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Text(
                                  'Download',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ))),
            // step 3
            Container(
                width: double.infinity,
                color: const Color.fromRGBO(249, 234, 213, 1),
                child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Langkah #3",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold)),
                            Text("Buka Rekening\nSaham Mirae\nAsset Sekuritas",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(height: 20),
                            SizedBox(
                              width: 500,
                              child: Text(
                                  "Setelah membaca E-Book karya Charian Firdiady, sudah waktunya Anda mempraktikannya. Anda harus memiliki rekening saham terlebih dahulu untuk bisa membeli saham pertama Anda. Saat ini Mirae Asset Sekuritas merupakan perusahaan sekuritas dengan transrip terbesar di Indonesia dengan fitur yang lengkap",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 64, 119, 1),
                                      fontSize: 19)),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () async {
                            await goToWebPage(
                                "https://www.instagram.com/charian.saham");
                          },
                          child: Stack(alignment: Alignment.center, children: [
                            Container(
                              height: 220,
                              width: 300,
                              alignment: Alignment.center,
                              child: Container(
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color:
                                            const Color.fromRGBO(0, 64, 119, 1),
                                        width: 6.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    'assets/images/mirae.png',
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 80,
                              bottom: 0,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    bottom: 5, top: 5, left: 10, right: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Text(
                                  'Buka Rekening',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ))),
            // step 4
            Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Langkah #4",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold)),
                            Text(
                                "Belajar Sambil Praktek\nLangsung di Edukasi\nSaham Online",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(height: 20),
                            SizedBox(
                              width: 500,
                              child: Text(
                                  "Setelah rekening saham Anda jadi dan sudah mentransfer deposit awal, Anda bisa belajar sambil praktek langsung membeli saham pertama Anda di Edukasi Saham Online bersama Charian Firdiady",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 64, 119, 1),
                                      fontSize: 19)),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () async {
                            await goToWebPage(
                                "https://www.instagram.com/charian.saham");
                          },
                          child: Stack(alignment: Alignment.center, children: [
                            Container(
                              height: 240,
                              width: 300,
                              alignment: Alignment.center,
                              child: Container(
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            const Color.fromRGBO(0, 64, 119, 1),
                                        width: 6.0)),
                              ),
                            ),
                            Positioned(
                                top: 0,
                                child: Container(
                                  height: 240,
                                  width: 320,
                                  child: Image.asset(
                                    'assets/images/edukasi_online.png',
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            Positioned(
                              left: 60,
                              bottom: 7,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    bottom: 5, top: 5, left: 10, right: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Text(
                                  'Cek Jadwal Edukasi',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 30,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    bottom: 5, top: 5, left: 10, right: 10),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(245, 130, 32, 1),
                                ),
                                child: const Column(
                                  children: [
                                    Text(
                                      'Edukasi Saham',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'online via',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          ' ZOOM',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 6, 110, 196),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ))),
            //step 5
            Container(
                width: double.infinity,
                color: const Color.fromRGBO(249, 234, 213, 1),
                child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Langkah #5",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold)),
                            Text("Konsultasi Privat\nOne-on-One",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(height: 20),
                            SizedBox(
                              width: 500,
                              child: Text(
                                  "Saat Anda sudah memulai Investasi dan Trading, mungkin ada banyak hal yang ingin ditanyakan. Anda bisa memanfaatkan layanan konsultasi privat One-on-One dengan Charian Firdiady via WhatsApp, GRATIS jika Anda sudah membuka rekening saham Mirae Asset Sekuritas melalui Charian Firdiady",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 64, 119, 1),
                                      fontSize: 19)),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () async {
                            await goToWebPage(
                                "https://www.instagram.com/charian.saham");
                          },
                          child: Stack(alignment: Alignment.center, children: [
                            Container(
                              height: 220,
                              width: 300,
                              alignment: Alignment.center,
                              child: Container(
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color:
                                            const Color.fromRGBO(0, 64, 119, 1),
                                        width: 6.0)),
                                child: Image.asset(
                                  'assets/images/wa.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60,
                              bottom: 0,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    bottom: 5, top: 5, left: 10, right: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Text(
                                  'Konsultasi Sekarang',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ))),
            // end part
            Container(
              width: double.infinity,
              color: const Color.fromRGBO(245, 130, 32, 1),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text("Charian Firdiady, MM. RSA.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(
                        "Senior Investment Specialist\nPT Mirae Asset Sekuritas Indonesia",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                    SizedBox(height: 10),
                    Text(
                        "Pemegang Lisensi Wakil Perantara Pedagang Efek (WPPE) berdasarkan SK OJK No. KEP-839/PM.212/PJ-WPPE/2020",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
