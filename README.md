# NCL Technical Assessment

This is my NCL Technical Assessment submission. My focus for this submission was to use very minimal UI so that the focus would be on the code.

I decided to write a less formal "diary-style" documentation so that you can see my thought processes on the decisions I made. There is some overall information here in the README as well as some comments in each file.

This project was written in Flutter 2.10.4 and tested on a Pixel_3a_XL android emulator.

## Project Requirements
The UI should have three buttons:
- SKY
- BLISS
- ESCAPE

When each of the buttons is pressed, retrieve the JSON data from the
corresponding ship URL:
- (GET) https://www.ncl.com/cms-service/cruise-ships/SKY
- (GET) https://www.ncl.com/cms-service/cruise-ships/BLISS
- (GET) https://www.ncl.com/cms-service/cruise-ships/ESCAPE

Parse the JSON response and display the text for these fields:
- "shipName"
- "shipFacts.passengerCapacity"
- "shipFacts.crew"
- “shipFacts.inauguralDate"

## State Management
Although it is excessive for the size of this project, I decided to use BLoC/Rx state management to show my understanding of it. Like we discussed in our interview, BLoC offers various advantages and disadvantages. Some advantages of using BLoC include the separation of UI from logic, writing code that is easily resuable and testable, and code that is well-organized into structured folders. One disadvantage of using BLoC is that there is a lot more boilerplate code, as well as code redundancy when there is not much that needs to happen on the various levels, therefore not making it a very DRY solution. 

Since the description wanted to asses how I structured my classes and folders in a way that is maintanable and scalable, I decided to use BLoC.

## Packages
Two external packages were used:
- [rxdart](https://pub.dev/packages/rxdart) - extends the capabilities of streams, which are used for BLoC.
- [http](https://pub.dev/packages/http) - an easy-to-use library for making HTTP requests.