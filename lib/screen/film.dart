import 'package:flutter/material.dart';

import 'detail-film.dart';

class ListFilmScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Peaky Blinders",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4GCP4BKWgUcPPCfQSnNknQPBUAWmWGvRiMw&s",
      "gallery": [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp9etl-jXEizDXjBtJpjL7EvVYH56x8SNEZg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCkMQLTalv8V9mzS7_72EtwoXP9m0RrNlIdQ&s",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a6dc7b88-fcb2-4fc1-97e3-319fe5c364a5/dekqdhf-b9d1f10b-6ed5-41f2-b0cf-56f1ed17d6ba.png/v1/fill/w_1280,h_1280,q_80,strp/peaky_blinders_cover_4_by_theclontoons_dekqdhf-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcL2E2ZGM3Yjg4LWZjYjItNGZjMS05N2UzLTMxOWZlNWMzNjRhNVwvZGVrcWRoZi1iOWQxZjEwYi02ZWQ1LTQxZjItYjBjZi01NmYxZWQxN2Q2YmEucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Hudo-HZOgomuA1fekBOmWwXNQf-hESjAoyNzg5G3lwE"
      ],
      "desc":
          "Peaky Blinders sebuah keluarga mafia pada tahun 1919 di Birmingham, Inggris.",
    },
    {
      "nama": "Wakanda Forever",
      "image":
          "https://asset.kompas.com/crops/UahMqr_9qC0c6F3YWY9M9B0TQm0=/0x114:900x714/750x500/data/photo/2022/10/04/633ba85ce7dae.jpg",
      "gallery": [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvqrypr98WI5cwYCTuLAiydiikzmnL0dnjuA&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI6ddGHsvmJm5lClwD9lm7jU2xtIpGRYUq1Q&s",
        "https://images.thedirect.com/media/article_full/black-panther-2-extended.jpg"
      ],
      "desc":
          "Sebuah rakyat yang bernama Wakanda yang harus berjuang untuk melindungi negrinya dari campur tangan kekuatan dunia setelah kematian sang Raja T'Challa.",
    },
    {
      "nama": "Fetih 1453",
      "image":
          "https://awsimages.detik.net.id/community/media/visual/2023/03/27/fetih-1453-3.jpeg?w=1200",
      "gallery": [
        "https://miro.medium.com/v2/resize:fit:736/1*sJDTpELXHf-dAjacKASudQ.jpeg",
        "https://pbs.twimg.com/media/FQOUOr8aIAcaS2V.jpg",
        "https://i.ebayimg.com/images/g/A1QAAOSwh2xX~nmi/s-l600.jpg"
      ],
      "desc":
          "Mehmed II naik tahta Kekaisaran Ottoman dan berusaha untuk membuktikan ramalan tentang penaklukan Konstantinopel yang dikuasai oleh umat Kristen.",
    },

    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Film Terbaru'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: wisataData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailFilmScreen(
                        nama: wisataData[index]["nama"],
                        image: wisataData[index]["image"],
                        gallery: wisataData[index]["gallery"],
                        desc: wisataData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("${wisataData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
