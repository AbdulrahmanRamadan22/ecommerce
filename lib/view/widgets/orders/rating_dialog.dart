import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

import '../../../shared/constants/image_assets.dart';



final _dialog = RatingDialog(
  initialRating: 1.0,
  // your app's name?
  title: const Text(
    'Rating Dialog',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  ),
  // encourage your user to leave a high rating?
  message: const Text(
    'Tap a star to set your rating. Add more description here if you want.',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 15),
  ),
  // your app's logo?
  image: Image.asset(AppImageAsset.logo,width: 150,height: 150),
  submitButtonText: 'Submit',
  submitButtonTextStyle: const TextStyle(fontWeight: FontWeight.bold),

  commentHint: 'Set your custom comment hint',
  onCancelled: () => print('cancelled'),
  onSubmitted: (response) {
    print('rating: ${response.rating}, comment: ${response.comment}');

    // TODO: add your own logic

  },
);

void showDialogRating(BuildContext context ){

  showDialog(
    context: context,
    barrierDismissible: true, // set to false if you want to force a rating
    builder: (context) => _dialog,
  );


}
// show the dialog
