import 'package:flutter/material.dart';

class PantunMandar extends StatelessWidget {
  const PantunMandar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF800000),
          title: const Text(
            'Pantun Mandar(Kalindaqdaq)',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            labelStyle: TextStyle(
              fontFamily: 'Inter',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(text: 'Pendidikan'),
              Tab(text: 'Agama'),
              Tab(text: 'Humor'),
              Tab(text: 'Percintaan'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PendidikanTab(),
            AgamaTab(),
            HumorTab(),
            PercintaanTab(),
          ],
        ),
      ),
    );
  }
}

// Tab untuk kategori Pendidikan
class PendidikanTab extends StatelessWidget {
  const PendidikanTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pantuns = [
      {
        'mandar':
            'Pa’indangngi lao siri\nto andiang siri’na\nMasiri’ ai\nanna mambowe’ lino',
        'arti':
            'Pinjamkan harga diri kepadanya\nBagi mereka yang tak punya\nSemoga ada harga diri\nSebelum meninggal'
      },
      {
        'mandar':
            'Dipameang pai dalle\nDileteangngi pai\nAndiang dalleq\nMambawa alawena',
        'arti':
            'Rezeki harus dicari\nDan dibuatkan titian\nTiada rezeki\nYang datang sendiri'
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: pantuns.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pantuns[index]['mandar']!,
                  style: const TextStyle(
                    fontFamily: 'Crimson Text',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  pantuns[index]['arti']!,
                  style: const TextStyle(
                    fontFamily: 'Crimson Text',
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// Tab untuk kategori Agama
class AgamaTab extends StatelessWidget {
  const AgamaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pantuns = [
      {
        'mandar':
            'Inna sambayang-sambayang\nSambayang tongang-tongang\nMeloq u issang\nMeloq uu ajappui.',
        'arti':
            'Mana sembahyangnya sembahyang\nSembahyang yang sebenar-benarnya\nIngin kutahu\nIngin kuyakini'
      },
      {
        'mandar':
            'Ahera oroang tongan\nLino dindan di tiaq\nBorong to landur\nLeppang dipettullungngi.',
        'arti':
            'ampung akhirat tujuan akhir\nDunia ini hanya pinjaman\nIbarat musyafir\nSekedar singgah untuk berteduh'
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: pantuns.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pantuns[index]['mandar']!,
                  style: const TextStyle(
                    fontFamily: 'Crimson Text',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  pantuns[index]['arti']!,
                  style: const TextStyle(
                    fontFamily: 'Crimson Text',
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// Tab untuk kategori Humor
class HumorTab extends StatelessWidget {
  const HumorTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pantuns = [
      {
        'mandar':
            'Indi tia to muane\nMakko kaiyang sarana\nMeloq si pattombangan di ule-ule bue\nMeloq siruppuang kasippi.',
        'arti':
            'Aku ini pahlawan\n Selalu memperhatikan mangkok besar\nRela sama bergelimang di bubur kacang hijau\nIkhlas lebur bersama kasippi'
      },
      {
        'mandar':
            'Indi tia passikola\nBuku tulis sarana\nMeloq dibaca\nMeloq dipanulissi',
        'arti':
            'Aku ini anak sekolah\nAdalah pencintanya buku tulis\nSiap untuk dibaca\nSedia untuk ditulis'
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: pantuns.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pantuns[index]['mandar']!,
                  style: const TextStyle(
                    fontFamily: 'Crimson Text',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  pantuns[index]['arti']!,
                  style: const TextStyle(
                    fontFamily: 'Crimson Text',
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// Tab untuk kategori Percintaan
class PercintaanTab extends StatelessWidget {
  const PercintaanTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pantuns = [
      {
        'mandar':
            'Pitu buttu mallindungi\nPitu taq-ena ayu\nPurai accur\nNaola saliliq-u.',
        'arti':
            'Tujuh gunung menghalangi\nTujuh dahan kayu\nSemua rata semuanya hancur\nDilanda rinduku'
      },
      {
        'mandar':
            'Batu toyang dilolangan\nPeatallangngoq-o naung\nApaq nanaolai\nLopinna tomasara nyawa',
        'arti':
            'Wahai batu dan karang di tengah samudera\nTenggelam dan karamlah engkau\nKarena akan dilintasi\nPerahunya kelana yang merana'
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: pantuns.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pantuns[index]['mandar']!,
                  style: const TextStyle(
                    fontFamily: 'Crimson Text',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  pantuns[index]['arti']!,
                  style: const TextStyle(
                    fontFamily: 'Crimson Text',
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
