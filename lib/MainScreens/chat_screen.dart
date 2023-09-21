import 'package:flutter/material.dart';
import 'package:pragati/MainScreens/mainPage.dart';
import 'package:pragati/utilities/chat_repository.dart';
import 'package:pragati/utilities/chatmessage.dart';
import 'package:pragati/utilities/model.dart';

//personlization of chat bot

class ChatPage extends StatefulWidget {
  static const String idScreen = "chatscreen";
  ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final _textController = TextEditingController();
  final _scrollController = ScrollController();
  final List<ChatMessage> _messages = [];
  late bool isLoading;

  @override
  void initState() {
    super.initState();
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, MainScreen.idScreen, (route) => false),
          ),
          title: const Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Sakhi - Chat Bot",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )),
          backgroundColor: Color.fromARGB(255, 37, 142, 171),
        ),
        backgroundColor: Color.fromARGB(255, 217, 235, 241),
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
                    color: Color.fromARGB(255, 58, 57, 57),
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
        bottomNavigationBar: SizedBox(
          height: 78,
          child: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 139, 199, 219),
            selectedItemColor: Colors.green,
            items: [
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: const Icon(
                      Icons.home,
                      color: Color(0xFF062833),
                      size: 30,
                    ),
                    onPressed: () => {
                      Navigator.pushNamedAndRemoveUntil(
                          context, MainScreen.idScreen, (route) => false),
                    },
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: const Icon(
                      Icons.graphic_eq_rounded,
                      color: Color(0xFF062833),
                      size: 30,
                    ),
                    onPressed: () => {
                      Navigator.pushNamedAndRemoveUntil(
                          context, ChatPage.idScreen, (route) => false),
                      // scaffoldKey.currentState?.openDrawer(),
                    },
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: const Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                    onPressed: () => {
                      scaffoldKey.currentState?.openDrawer(),
                    },
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: const Icon(
                      Icons.compare_arrows_sharp,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                    onPressed: () => {
                      scaffoldKey.currentState?.openDrawer(),
                    },
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: const Icon(
                      Icons.radio_button_on_rounded,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                    onPressed: () => {
                      scaffoldKey.currentState?.openDrawer(),
                    },
                  ),
                  label: ''),
            ],
          ),
        ));
  }

  Widget _buildSubmit() {
    return Visibility(
      visible: !isLoading,
      child: Container(
        color: const Color.fromARGB(255, 229, 232, 229),
        child: IconButton(
          icon: const Icon(
            Icons.send_rounded,
            color: Color.fromRGBO(0, 0, 0, 1),
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
        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        controller: _textController,
        decoration: const InputDecoration(
          hoverColor: Color.fromARGB(255, 85, 149, 209),
          // fillColor: Color.fromARGB(255, 85, 149, 209),
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

  ListView _buildList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _messages.length,
      itemBuilder: (context, index) {
        var message = _messages[index];
        return ChatMessageWidget(
          text: message.text,
          chatMessageType: message.chatMessageType,
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
