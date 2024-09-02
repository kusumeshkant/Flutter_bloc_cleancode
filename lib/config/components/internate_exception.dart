import 'package:flutter/material.dart';

class InternateException extends StatelessWidget {
  final VoidCallback onPress;
  const InternateException({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .25,
        ),
        const Icon(
          Icons.cloud_off,
          color: Colors.red,
          size: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 20),
          child: Center(
            child: Text(
              "We're unable to show results. \nPlease check your data \nconnection",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 20),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: onPress,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, right: 25, bottom: 8, left: 25),
              child: Text(
                "Retry",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ))
      ],
    );
  }
}
