# remindo_v2

## About 
This is a remake of remindo in flutter.  
[Remindo project on github](https://github.com/iamagoodperson-yay/Remindo) (coded in swift)

## Features (in progress ...)
- Homework Tracking! 
    - Track what homework you have and how long it will take 
- Reminders! 
    - Remind yourself of important events through notifications 
- Importance! 
    - Rank homework and reminders based on a scale from red to green 

## Future plans
- Optimisation for webapp
- Firebase integration to sync across devices
- Homework planner

## Changelog

### pre-release v0.1: Basic structure of app
#### Added:
- main.dart
    - homeview, for displaying all other views
- homework_view.dart
    - subview of main.dart, for users to track homework in future
- notifications_view.dart
    - subview of main.dart, for users to add and edit reminders in future
- settings_view.dart
    - subview of main.dart, for users to edit settings in future
- data_model.dart
    - for data handling and persistent storage