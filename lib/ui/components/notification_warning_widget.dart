import 'package:ente_auth/ente_theme_data.dart';
import 'package:ente_auth/theme/colors.dart';
import 'package:ente_auth/theme/text_style.dart';
import 'package:flutter/material.dart';

class NotificationWarningWidget extends StatelessWidget {
  final IconData warningIcon;
  final IconData actionIcon;
  final String text;
  final GestureTapCallback onTap;

  const NotificationWarningWidget({
    Key? key,
    required this.warningIcon,
    required this.actionIcon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              boxShadow: Theme.of(context).colorScheme.enteTheme.shadowMenu,
              color: warning500,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    warningIcon,
                    size: 36,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 12),
                  Flexible(
                    child: Text(
                      text,
                      style: darkTextTheme.bodyBold,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(width: 12),
                  ClipOval(
                    child: Material(
                      color: fillFaintDark,
                      child: InkWell(
                        splashColor: Colors.red, // Splash color
                        onTap: onTap,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(
                            actionIcon,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
