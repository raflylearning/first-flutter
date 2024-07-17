import 'package:flutter/material.dart';

import 'detail-destination.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Ubud",
      "kota": "Bali",
      "image": "https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1200,h_630/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/bcdmsqhbk7ujbfshbyc0/Bedugul%20dan%20Ubud%20Private%20Day%20Tour%20di%20Bali%2C%20Indonesia.jpg",
      "gallery": [
        "https://asset.kompas.com/crops/ffJyln67JC-ao7CbfeulSGxfcB0=/0x0:1080x720/750x500/data/photo/2020/04/16/5e97c509b1314.jpg",
        "https://deih43ym53wif.cloudfront.net/tegenungan-waterfall-on-petanu-river-kemenuh-ubud-bali-shutterstock_2299217401.jpg_ce45150648.jpg",
        "https://media.istockphoto.com/id/515480864/id/foto/sawah-yang-indah-ubud-bali-indonesia.jpg?s=612x612&w=0&k=20&c=_X0d7MMGx7OZw_8n0SYTqXXs81c1NJpNFrdcnqCd8z0="
      ],
      "desc":
          "Ubud adalah sebuah destinasi wisata populer di Bali yang terkenal dengan seni, budaya, dan alam yang indah. Terletak di antara sawah dan jurang yang curam, Ubud menawarkan pengalaman yang tak terlupakan bagi wisatawan.",
    },
    {
      "nama": "Nusa Penida",
      "kota": "Bali",
      "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f5/3e/e5/nusa-penida-island.jpg?w=1200&h=1200&s=1",
      "gallery": [
        "https://id.nusa-penida.info/uploads/s/q/t/7/qt7iugfk1ixz/img/full_59ZrrtR0.jpg",
        "https://torch.id/cdn/shop/articles/Artikel_157_-_Preview.webp?v=1710759080",
        "https://thebalisun.com/wp-content/uploads/2023/08/Proposed-Nusa-Penida-Geopark-Is-Great-News-For-Nature-Loving-Tourists-In-Bali-.jpg"
      ],
      "desc":
          "Nusa Penida adalah sebuah pulau kecil di sebelah tenggara Bali, terkenal dengan pantai yang indah, tebing-tebing yang menakjubkan, dan kehidupan bawah laut yang luar biasa. Tempat ini ideal untuk snorkeling dan diving.",
    },
    {
      "nama": "Raja Ampat",
      "kota": "Sorong",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Raja_Ampat%2C_Mutiara_Indah_di_Timur_Indonesia.jpg/1200px-Raja_Ampat%2C_Mutiara_Indah_di_Timur_Indonesia.jpg",
      "gallery": [
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/d6/a1/76/pemandangan-pulau2-kecil.jpg?w=1200&h=-1&s=1",
        "https://indonesiajuara.asia/wp-content/uploads/2023/11/raja-ampat_11zon.webp",
        "https://cdn.antaranews.com/cache/1200x800/2016/01/20160103420.jpg"
      ],
      "desc":
          "Raja Ampat adalah sebuah pulau kecil di sebelah barat bagian Semenanjung Kepala Burung Pulau Papua, terkenal dengan pepulauan yang indah, tebing-tebing yang menakjubkan, dan kehidupan bawah laut yang luar biasa. Tempat ini ideal untuk snorkeling dan diving.",
    },

    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinasi Wisata'),
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
                      builder: (context) => DetailWisataScreen(
                        nama: wisataData[index]["nama"],
                        kota: wisataData[index]["kota"],
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