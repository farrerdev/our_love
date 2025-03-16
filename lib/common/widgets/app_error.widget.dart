import 'package:flutter/cupertino.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, this.center = true});

  final bool center;

  @override
  Widget build(BuildContext context) {
    return center
        ? const Center(
            child: _Body(),
          )
        : const CupertinoActivityIndicator();
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Text("Error");
  }
}
