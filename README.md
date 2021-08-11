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

Additionally, there was created database file tith the name of examinationDB.db. Yet, haven't finished. It was planned to store data there and make application work and show the last updated data when offline. \

## A short .gif intro to the application


## Screenshots given on this app
![1](https://user-images.githubusercontent.com/87451215/129060007-b91ea0e3-adf8-477a-86a3-e960830ba297.png)
![2](https://user-images.githubusercontent.com/87451215/129060027-5a7c450b-45c7-4b9b-8a33-9ec169159fb2.png)
![3](https://user-images.githubusercontent.com/87451215/129060033-bd8afb70-e604-46d7-b7b8-7f6b05b939ec.png)
![4](https://user-images.githubusercontent.com/87451215/129060112-8c015af5-4c8d-482c-8371-a680aef5e99c.png)
![7](https://user-images.githubusercontent.com/87451215/129060215-ebfca3c5-ae06-445d-81a7-12209938107e.png)
![8](https://user-images.githubusercontent.com/87451215/129060233-560d841a-cce6-44db-99ba-52124486c45c.png)
![9](https://user-images.githubusercontent.com/87451215/129060258-ceb9a507-91a1-4740-875f-74ca2250f298.png)
![12](https://user-images.githubusercontent.com/87451215/129060300-d1229070-0a4e-4529-a800-e3f248e44220.png)
![13](https://user-images.githubusercontent.com/87451215/129060308-1f2eb260-1bc1-4aaf-9952-15a9cd699334.png)
![14](https://user-images.githubusercontent.com/87451215/129060319-1f5b8a32-e482-4871-a7b3-615641523ef4.png)
![15](https://user-images.githubusercontent.com/87451215/129060330-02dacd95-4494-475d-848f-b290bc29ff5f.png)
![16](https://user-images.githubusercontent.com/87451215/129060341-d1a85449-b2e0-43fd-aeb3-7621b782c3f7.png)


## Useful references
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
