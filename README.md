# Tour Agency App (Examination project)

A new Flutter project of tour agency providing various tour services.
There are used account verification with mobile messaging in application, in addition to data storing in local Database, which can provide usage of the application while offline.

## Overview of the project

This project is a starting point for a Flutter application. 

First of all, I want to share with references of tools and packages used in this app.
- in a pubspec.yaml, at the dependencies section there were added and pub got the following packages:
  cupertino_icons: ^1.0.2
  introduction_screen: ^2.1.0
  firebase_auth: ^3.0.1
  firebase_core: ^1.4.0
  
 - at the asset section it was added Gilroy font, as the UI of the app is designed using this font:
  fonts:
    - family: Gilroy
      fonts:
        - asset: assets/fonts/Gilroy-Black.ttf
        - asset: assets/fonts/Gilroy-Bold.ttf
        - asset: assets/fonts/Gilroy-Light.ttf
As it is known from given paths, thes .ttf files were downloaded first, and placed in assets/fonts folder of the flutter project.

Additionally, there was created database file tith the name of examinationDB.db. Yet, haven't finished. It was planned to store data there and make application work and show the last updated data when offline. 

## Screenshots given on this app


## Useful references
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
