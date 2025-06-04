import 'dart:io';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:share_plus/share_plus.dart';

import '/AdManager.dart';
import '/BookSection/BookParts.dart';
import '/BookSection/Design.dart';
import '/InkWellDrawer.dart';
import '/books_categories/BooksCategories.dart';
import '/constans.dart';

import 'package:url_launcher/url_launcher.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuHome();
  }
}

MenuHome() {
  return Scaffold(
    drawer: InkWellDrawer(),
    appBar: AppBar(
      backgroundColor: AdManager.getNeumorphicBackgroundColor(),
      title: Center(
        child: Text(
          AdManager.appName,
          style: TextStyle(color: AdManager.getTextColor(), fontSize: 22.0),
        ),
      ),
    ),

    //  bottomNavigationBar: widget.isloaded ? bottomNavigationList() : null,
    backgroundColor: AdManager.getNeumorphicBackgroundColor(),
    body: ListView(
      shrinkWrap: true,
      children: [
        InkWell(
          onTap: () {
            _launchURL();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 20.0, top: 25),
            child: Container(
              height: 90.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AdManager.getNeumorphicBackgroundColor(),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(-3, -3),
                    color: AdManager.getNeumorphicBoxShadowColorLight(),
                  ),
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(3, 3),
                    color: AdManager.getNeumorphicBoxShadowColorDark(),
                  ),
                ],
              ),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: AdManager.getNeumorphicBackgroundColor(),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color:
                                  AdManager.getNeumorphicBoxShadowColorLight(),
                            ),
                            BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color:
                                  AdManager.getNeumorphicBoxShadowColorDark(),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.read_more,
                          color: AdManager.getTextColor(),
                          size: 30.0,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "MORE APPS",
                          style: TextStyle(
                            color: AdManager.getTextColor(),
                            fontFamily: "nunito",
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            final InAppReview inAppReview = InAppReview.instance;

            if (Platform.isAndroid) {
              if (Platform.isAndroid) {
                inAppReview.openStoreListing(
                  appStoreId: "" + AdManager.packageName,
                );
              } else {
                inAppReview.openStoreListing(
                  appStoreId: "" + AdManager.packageName,
                );
              }
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 20.0, top: 25),
            child: Container(
              height: 90.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AdManager.getNeumorphicBackgroundColor(),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(-3, -3),
                    color: AdManager.getNeumorphicBoxShadowColorLight(),
                  ),
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(3, 3),
                    color: AdManager.getNeumorphicBoxShadowColorDark(),
                  ),
                ],
              ),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: AdManager.getNeumorphicBackgroundColor(),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color:
                                  AdManager.getNeumorphicBoxShadowColorLight(),
                            ),
                            BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color:
                                  AdManager.getNeumorphicBoxShadowColorDark(),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.star,
                          color: AdManager.getTextColor(),
                          size: 30.0,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "RATE US",
                          style: TextStyle(
                            color: AdManager.getTextColor(),
                            fontFamily: "nunito",
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            if (Platform.isAndroid) {
              Share.share(
                'Please install this best application from Google Play Store and share it with your friends. Thanks\n ' +
                    AdManager.shareUrl,
                subject: 'Look what I made!',
              );
            } else {
              Share.share(
                'Please install this best application from ios App Store and share it with your friends. Thanks\n ' +
                    AdManager.shareUrl,
                subject: 'Look what I made!',
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 20.0, top: 25),
            child: Container(
              height: 90.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AdManager.getNeumorphicBackgroundColor(),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(-3, -3),
                    color: AdManager.getNeumorphicBoxShadowColorLight(),
                  ),
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(3, 3),
                    color: AdManager.getNeumorphicBoxShadowColorDark(),
                  ),
                ],
              ),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: AdManager.getNeumorphicBackgroundColor(),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color:
                                  AdManager.getNeumorphicBoxShadowColorLight(),
                            ),
                            BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color:
                                  AdManager.getNeumorphicBoxShadowColorDark(),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.share_outlined,
                          color: AdManager.getTextColor(),
                          size: 30.0,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "SHARE",
                          style: TextStyle(
                            color: AdManager.getTextColor(),
                            fontFamily: "nunito",
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            final Email email = Email(
              body: 'Feedback:\n',
              subject: AdManager.appName,
              recipients: [AdManager.emailId],
              isHTML: false,
            );

            await FlutterEmailSender.send(email);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 20.0, top: 25),
            child: Container(
              height: 90.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AdManager.getNeumorphicBackgroundColor(),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(-3, -3),
                    color: AdManager.getNeumorphicBoxShadowColorLight(),
                  ),
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(3, 3),
                    color: AdManager.getNeumorphicBoxShadowColorDark(),
                  ),
                ],
              ),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: AdManager.getNeumorphicBackgroundColor(),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color:
                                  AdManager.getNeumorphicBoxShadowColorLight(),
                            ),
                            BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color:
                                  AdManager.getNeumorphicBoxShadowColorDark(),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.feedback,
                          color: AdManager.getTextColor(),
                          size: 30.0,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "FEEDBACK",
                          style: TextStyle(
                            color: AdManager.getTextColor(),
                            fontFamily: "nunito",
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

_launchURL() async {
  String url =
      'https://apps.apple.com/us/developer/mohammed-alsalak/id1609226760#see-all/i-phonei-pad-apps';
  if (Platform.isAndroid) {
    url = 'https://play.google.com/store/apps/dev?id=6694032292184630684';
  } else {
    url =
        'https://apps.apple.com/us/developer/mohammed-alsalak/id1609226760#see-all/i-phonei-pad-apps';
  }
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
