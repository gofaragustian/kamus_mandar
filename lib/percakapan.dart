import 'package:flutter/material.dart';

class Percakapan extends StatefulWidget {
  const Percakapan({Key? key}) : super(key: key);

  @override
  State<Percakapan> createState() => _PercakapanState();
}

class _PercakapanState extends State<Percakapan> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocusNode = FocusNode();

  // Contoh percakapan Mandar - Indonesia
  final List<Map<String, String>> _conversationList = [
    {'mandar': 'tiapai karewaqmu?', 'indonesia': 'bagaimana kabarmu?'},
    {'mandar': 'inna namuola?', 'indonesia': 'Mau pergi ke mana?'},
    {
      'mandar': 'pallambiq leqbai iting suraq o!',
      'indonesia': 'sampaikanlah surat itu'
    },
    {
      'mandar': 'pellambamoq o naong dipamboang',
      'indonesia': 'pergilah kamu ke pamboang'
    },
    {
      'mandar': 'masaema dai dimakka tenna sugidaq',
      'indonesia': 'sudah lama saya dimekah seandainya saya kaya'
    },
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
            'Percakapan Mandar - Indonesia',
            style: TextStyle(
              fontSize: 16,
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
                    labelText: 'Cari kalimat',
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
                  itemCount: _conversationList.length,
                  itemBuilder: (context, index) {
                    final conversation = _conversationList[index];
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
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
                              'Mandar:\n${conversation['mandar']}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Indonesia:\n${conversation['indonesia']}',
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
