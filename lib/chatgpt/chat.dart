import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import '../apikey/api.dart';
import 'model.dart';

const backgroundColor = Colors.black45;
const botBackgroundColor = Color(0xff444654);

// const backgroundColor = Colors.black45;
// const botBackgroundColor = Color.fromARGB(255, 15, 15, 15)

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

Future<String> generateResponse(String prompt) async {
  var url = Uri.https("api.openai.com", "/v1/completions");
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey'
    },
    body: jsonEncode({
      "model": "text-davinci-003",
      "prompt": prompt,
      'temperature': 0,
      'max_tokens': 2000,
      'top_p': 1,
      'frequency_penalty': 0.0,
      'presence_penalty': 0.0,
    }),
  );

  // Do something with the response
  Map<String, dynamic> newresponse = jsonDecode(response.body);
  return newresponse['choices'][0]['text'];
}

class _ChatPageState extends State<ChatPage> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();
  final List<ChatMessage> _messages = [];
  late bool isLoading;
  late String _copiedText;

  @override
  void initState() {
    super.initState();
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        title: Padding(
          padding: EdgeInsets.only(left: 0),
          child: Image.asset(
            'assets/1024.png',
            height: 50,
          ),
        ),
        backgroundColor: botBackgroundColor,
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: _buildList(),
            ),
            Visibility(
              visible: isLoading,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  _buildInput(),
                  _buildSubmit(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmit() {
    return Visibility(
      visible: !isLoading,
      child: Container(
        color: botBackgroundColor,
        child: IconButton(
          icon: const Icon(
            Icons.send_rounded,
            color: Color.fromRGBO(142, 142, 160, 1),
          ),
          onPressed: () async {
            setState(
              () {
                _messages.add(
                  ChatMessage(
                    text: _textController.text,
                    chatMessageType: ChatMessageType.user,
                  ),
                );
                isLoading = true;
              },
            );
            var input = _textController.text;
            _textController.clear();
            Future.delayed(const Duration(milliseconds: 50))
                .then((_) => _scrollDown());
            generateResponse(input).then((value) {
              setState(() {
                isLoading = false;
                _messages.add(
                  ChatMessage(
                    text: value,
                    chatMessageType: ChatMessageType.bot,
                  ),
                );
              });
            });
            _textController.clear();
            Future.delayed(const Duration(milliseconds: 50))
                .then((_) => _scrollDown());
          },
        ),
      ),
    );
  }

  Expanded _buildInput() {
    return Expanded(
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(color: Colors.white),
        controller: _textController,
        decoration: const InputDecoration(
          fillColor: botBackgroundColor,
          filled: true,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }

  // THE OUTPUT AFTER ASKING A QUESTION IS DISPLAYED HERE
  // THE OUTPUT AFTER ASKING A QUESTION IS DISPLAYED HERE
  // THE OUTPUT AFTER ASKING A QUESTION IS DISPLAYED HERE
  // THE OUTPUT AFTER ASKING A QUESTION IS DISPLAYED HERE
  // THE OUTPUT AFTER ASKING A QUESTION IS DISPLAYED HERE
  // THE OUTPUT AFTER ASKING A QUESTION IS DISPLAYED HERE

  ListView _buildList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _messages.length,
      itemBuilder: (context, index) {
        var message = _messages[index];
        return ChatMessageWidget(
          text: message.text,
          chatMessageType: message.chatMessageType,
          onCopy: () {
            _copiedText = message.text;
            Clipboard.setData(ClipboardData(text: _copiedText));
            // Scaffold.of(context).showSnackBar(SnackBar(
            //   content: Text('Copied to clipboard'),
            //   duration: Duration(seconds: 1),
            // ));
          },
        );
      },
    );
  }

  void _scrollDown() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}

// THE OUTPUT UI WILL LOOK LIKE THIS
// THE OUTPUT UI WILL LOOK LIKE THIS
// THE OUTPUT UI WILL LOOK LIKE THIS

class ChatMessageWidget extends StatelessWidget {
  const ChatMessageWidget(
      {super.key,
      required this.text,
      required this.chatMessageType,
      required this.onCopy});

  final String text;
  final VoidCallback onCopy;
  final ChatMessageType chatMessageType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          padding: const EdgeInsets.all(16),
          color: chatMessageType == ChatMessageType.bot
              ? Colors.black45
              : backgroundColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              chatMessageType == ChatMessageType.bot
                  ? Container(
                      margin: const EdgeInsets.only(right: 16.0),
                      child: CircleAvatar(
                        backgroundColor: const Color.fromRGBO(16, 163, 127, 1),
                        child: Image.asset(
                          'assets/1024.png',
                          scale: 1.5,
                        ),
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.only(right: 16.0),
                      child: const CircleAvatar(
                        child: Icon(
                          Icons.person,
                        ),
                      ),
                    ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Text(
                        text,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    IconButton(
                      icon: chatMessageType == ChatMessageType.bot
                          ? Icon(Icons.content_copy)
                          : Row(),
                      color: Colors.white,
                      onPressed: onCopy,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
