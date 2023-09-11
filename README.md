# Papa Kofi's CV Application

Access my GitHub Profile, Slack Username and other credentials similar to my curriculum vitae.

## Overview

This app displays information about Papa Kofi. It also provides a functionality to edit the information fields. <br>
The home screen of the app features a pencil icon that, when tapped takes a user to a screen in order to edit various fields. A user has to simply make changes, and immediately see those changes upon return to the homepage.

# Screenshot

 <img src="assets/screenshots/home.png" alt="mainscreenshot" width=300 />
 <br>
 <b>Home Screen</b> 
  <br>
 <br>
 <br>
<img src="assets/screenshots/edit.png" alt="mainscreenshot" width=300 />
 <br>
 <b>Edit Screen</b>

# Setup Instructions

- Ensure you have **flutter SDK** installed. Check the official documentation for [system requirements](https://docs.flutter.dev/get-started/install/windows#:~:text=System%20requirements,-To%20install%20and&text=Operating%20Systems%3A%20Windows%2010%20or,being%20available%20in%20your%20environment.&text=Git%20for%20Windows%202.x,the%20Windows%20Command%20Prompt%20option.)
- Clone this repository to your local workstation
- Run <code> flutter pub get </code>
- Issue flutter run in your terminal, making sure to start an android emulator or by connecting to a physical android device. <br>
  or
- Test app on [Appetize.io](https://appetize.io/app/qmyqhnezdyyhcv55fx5pzl5twq?device=pixel4&osVersion=11.0&scale=75)

# Implementing core functionality

[GetX](https://pub.dev/packages/get) is a popular open-source state management and navigation framework for Flutter. GetX provides a set of tools and libraries that help developers manage the state of their Flutter applications and navigate between different screens or pages.

### GetX used to provide state management

GetX is used to store the information or data as states that can be modified. Upon modification, only the widget with the modified data rebuilds to update the UI saving some RAM.

### GetX used to provide navigation

With GetX, navigation is seamlessly without the need to access the context object.

<br>

[online documentation - flutter.dev](https://docs.flutter.dev/)
