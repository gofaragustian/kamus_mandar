import 'package:flutter/material.dart';

class IndonesiaMandar extends StatefulWidget {
  const IndonesiaMandar({Key? key}) : super(key: key);

  @override
  State<IndonesiaMandar> createState() => _Indonesiamandarstate();
}

class _Indonesiamandarstate extends State<IndonesiaMandar> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocusNode = FocusNode();

  // Contoh data kamus Indonesia ke Mandar
  final List<Map<String, String>> _dictionary = [
    {'indonesia': 'Makan', 'mandar': 'mande'},
    {'indonesia': 'Minum', 'mandar': 'dundu'},
    {'indonesia': 'Tidur', 'mandar': 'tindo'},
    {'indonesia': 'Rumah', 'mandar': 'boyan'},
    {'indonesia': 'mancing', 'mandar': 'mandoang'},
  ];

  @override
  void dispose() {
    _textController.dispose();
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF3FDFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFF800000),
          automaticallyImplyLeading: true,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'INDONESIA - MANDAR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: _textController,
                  focusNode: _textFieldFocusNode,
                  decoration: InputDecoration(
                    labelText: 'Cari kata',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(10.0),
                  itemCount: _dictionary.length,
                  itemBuilder: (context, index) {
                    final entry = _dictionary[index];
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 100,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Indonesia: ${entry['indonesia']}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Mandar: ${entry['mandar']}',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.home, size: 27),
                    Icon(Icons.info, size: 27),
                    Icon(Icons.chat, size: 27),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
