import 'package:flutter/material.dart';
import 'package:kamus_mandar/IndonesiaMandar.dart';
import 'package:kamus_mandar/pantun.dart';
import 'package:kamus_mandar/percakapan.dart';
import 'MandarIndonesia.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3FDFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF800000),
        automaticallyImplyLeading: true,
        centerTitle: true,
        toolbarHeight: 50,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'KAMUS BAHASA MANDAR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Text(
                      'Selamat datang di aplikasi Kamus Bahasa Mandar, media sederhana untuk melestarikan dan mempelajari bahasa serta budaya Mandar. Semoga bermanfaat dan menginspirasi!',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Crimson Text',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildCategory(
                          context,
                          'Mandar-Indonesia',
                          'assets/images/mandar-indonesia.jpg',
                        ),
                        _buildCategory(
                          context,
                          'Indonesia-Mandar',
                          'assets/images/indonesia-mandar.png',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildCategory(
                          context,
                          'Percakapan sehari-hari',
                          'assets/images/percakapan sehari hari.jpg',
                        ),
                        _buildCategory(
                          context,
                          'Pantun Mandar',
                          'assets/images/pantun mandar.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Spacer memastikan Row berada di bagian bawah
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.home, size: 27),
                  Icon(Icons.info, size: 27),
                  Icon(Icons.chat, size: 26),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(BuildContext context, String label, String imagePath) {
    return CategoryCard(label: label, imagePath: imagePath);
  }
}

class CategoryCard extends StatefulWidget {
  final String label;
  final String imagePath;

  const CategoryCard({required this.label, required this.imagePath, Key? key})
      : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          if (widget.label == 'Mandar-Indonesia') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MandarIndonesia(),
              ),
            );
          }
          if (widget.label == "Indonesia-Mandar") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => IndonesiaMandar()),
            );
          }
          if (widget.label == "Percakapan sehari-hari") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Percakapan()),
            );
          }
          if (widget.label == "Pantun Mandar") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PantunMandar()),
            );
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isHovered ? 110 : 100,
              height: isHovered ? 110 : 100,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
                boxShadow: isHovered
                    ? [
                        const BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ]
                    : [],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.all(1), // Padding 10 di seluruh gambar
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    widget.imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Crimson Text',
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
