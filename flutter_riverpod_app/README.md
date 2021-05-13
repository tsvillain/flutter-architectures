# 🔥 Getting Started

## This project shows the demo of `Flutter Riverpod`.

### 📁 File Structure Followed:

    |- 📂 lib
        |- 📂 data
            |- 📂  respository
                |- 📰 task_respository_impl.dart
                |- 📰 task_respository.dart
            |- 📰 temp_database.dart
        |- 📂 domain
            |- 📂 models
                |- 📰 task_model.dart
        |- 📂 presentation
            |- 📂 providers
                |- 📰 task_provider.dart
            |- 📂 screens
                |- 📂 widgets
                    |- 📰 card_layout.dart
                    |- 📰 new_task_textformfield.dart
                |- 📰 home_page.dart
        |- 📰 main.dart

## You will be thinking why I have so many folders for a simple todo app 🤔

I you see them and try to find any pattern you will find that each in 1 level of `lib` folder has there own purpose.

### 🆘 Let me explain:
- 📁 `data` : This folder contain files that direct contact with application data. For e.g. we are using Cloud Firestore, every call for accessing or modifing data will be in data folder. In our case its a temp_database class stores or database value in a variable (We don't do this in real app, I did this so that no one confused if they don't know firebase etc).
- 📁 `domain` : This folder contain our data model as well as third party plugins calls. 
- 📁 `presentaion`: This is the section where user interacts with the Application. This folder contains screen UI's and riverpod files (it can be bloc files too or anyother state management you are using). 
