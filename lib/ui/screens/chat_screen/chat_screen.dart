import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yes_no_app/models/message.dart';
import 'package:yes_no_app/ui/screens/chat_screen/view_model/chat_screen_state.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sister Chat'),
        leading: const _ImageProfile(url: 'https://i.pravatar.cc/150?img=1'),
      ),
      body: Column(
        children: const [Expanded(child: _ListMessages()), _InputMessage()],
      ),
    );
  }
}

class _ListMessages extends ConsumerWidget {
  const _ListMessages({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listMessages = ref.watch(listMessagesProvider);

    if (listMessages.isEmpty) {
      return const Center(
        child: Text('No messages'),
      );
    }

    return ListView.builder(
      controller: ref.read(chatScreenViewModelProvider.notifier).listViewController,
      itemBuilder: (context, index) {
        final message = listMessages[index];
        return _ItemMessage(message: message);
      },
      itemCount: listMessages.length,
    );
  }
}

class _ItemMessage extends StatelessWidget {
  const _ItemMessage({
    super.key,
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment:
          message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!message.isMe) _ImageProfile(url: message.profileImage),
        Column(
          crossAxisAlignment: message.isMe
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [

            if (message.linkImage != null)
              _ImageMessage(url: message.linkImage!),

            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: message.isMe ? colors.primary : colors.secondary,
                ),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  message.message,
                  style: const TextStyle(color: Colors.white),
                )),
          ],
        ),
        if (message.isMe) _ImageProfile(url: message.profileImage),
      ],
    );
  }
}

class _ImageMessage extends StatelessWidget {
  final String url;
  const _ImageMessage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          child: Image.network(
            url,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                color: Colors.grey[200],
                width: size.width * 0.6,
                height: 200,
                child: Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                ),
              );
            },
            width: size.width * 0.6,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}

class _InputMessage extends ConsumerWidget {
  const _InputMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController controller = TextEditingController();
    final FocusNode focusNode = FocusNode();
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextField(
        focusNode: focusNode,
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          hintText: 'Type a message',
          suffixIcon: IconButton(
            onPressed: () {
              if (controller.text.isEmpty) return;

              ref.read(chatScreenViewModelProvider.notifier).addNewMessage(
                    controller.text,
                  );
              controller.clear();
            },
            icon: const Icon(Icons.send),
          ),
        ),
        onSubmitted: (value) {
          focusNode.requestFocus();
          if (value.isEmpty) return;

          ref.read(chatScreenViewModelProvider.notifier).addNewMessage(
                controller.text,
              );
          controller.clear();
        },
      ),
    );
  }
}

class _ImageProfile extends StatelessWidget {
  final String url;
  const _ImageProfile({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(url),
      ),
    );
  }
}
