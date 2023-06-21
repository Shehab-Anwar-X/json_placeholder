# Flutter App with JSONPlaceholder API Integration

This Flutter app demonstrates the integration of JSONPlaceholder API endpoints using the Clean Architecture pattern.

## Description

The app allows users to interact with various endpoints provided by the JSONPlaceholder API and retrieve fake JSON data. It follows the principles of Clean Architecture, which promotes separation of concerns and maintainability.

The implemented endpoints in this app include:

- `/posts`: Retrieves a collection of fake blog posts.
- `/comments`: Fetches comments associated with blog posts.
- `/users`: Retrieves a collection of fake user data.
- `/todos`: Fetches a list of to-do items.
- `/albums`: Retrieves a collection of albums.

The app utilizes the following components:

- **Presentation Layer**: Handles the UI components, user interactions, and view models.
- **Domain Layer**: Contains the business logic and use cases of the app.
- **Data Layer**: Manages the data sources, repositories, and API services.

## Features

- Browse and view fake blog posts.
- View comments associated with each blog post.
- Browse and view user profiles.
- View to-do items.
- Browse and view albums.

## Requirements

- Flutter SDK (version 3.10.4 • channel stable)
- Dart SDK (version 3.0.3 • DevTools 2.23.1)
- Android Studio or Visual Studio Code with Flutter plugins for development

## Installation

1. Clone the repository to your local machine.
2. Open the project in Android Studio or Visual Studio Code.
3. Ensure you have the Flutter SDK and Dart SDK installed.
4. Set up an emulator or connect a physical device for testing.
5. Run `flutter pub get` to fetch the project dependencies.
6. Build and run the app using the following command: `flutter run`

## Project Structure

```
lib
├── main.dart
└── module/
    ├── album/
    │   ├── data/
    │   │   ├── data_source/
    │   │   │   ├── base/
    │   │   │   │   └── base_data_source.dart
    │   │   │   └── remote_data_source.dart
    │   │   ├── model/
    │   │   │   ├── album.dart
    │   │   │   ├── album_creation_data.dart
    │   │   │   └── models_keys/
    │   │   │       ├── album.dart
    │   │   │       └── album_creation_data.dart
    │   │   └── repository/
    │   │       └── album_repository.dart
    │   ├── domain/
    │   │   ├── entities/
    │   │   │   ├── album.dart
    │   │   │   └── album_creation_data.dart
    │   │   ├── repository/
    │   │   │   └── album_repository.dart
    │   │   └── use_cases/
    │   │       ├── album_create_use_case.dart
    │   │       ├── album_delete_use_case.dart
    │   │       ├── album_list_use_case.dart
    │   │       ├── album_read_use_case.dart
    │   │       └── album_update_use_case.dart
    │   └── presentation/
    │       ├── view/
    │       │   ├── album_list_view.dart
    │       │   ├── album_view.dart
    │       │   ├── component/
    │       │   ├── create_album_view.dart
    │       │   ├── delete_album_view.dart
    │       │   ├── update_album_view.dart
    │       │   └── widget/
    │       └── view_model/
    │           ├── album/
    │           │   ├── base_album/
    │           │   │   └── i_album_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── album_view_model.dart
    │           ├── album_list/
    │           │   ├── base_album_list/
    │           │   │   └── i_album_list_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── album_list_view_model.dart
    │           ├── create_album/
    │           │   ├── base_create_album/
    │           │   │   └── i_create_album_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── create_album_view_model.dart
    │           ├── delete_album/
    │           │   ├── base_delete_album/
    │           │   │   └── i_delete_album_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── delete_album_view_model.dart
    │           └── update_album/
    │               ├── base_update_album/
    │               │   └── i_update_album_view_model.dart
    │               └── concrete_classes/
    │                   └── update_album_view_model.dart
    ├── comment/
    │   ├── data/
    │   │   ├── data_source/
    │   │   │   ├── base/
    │   │   │   │   └── base_data_source.dart
    │   │   │   └── remote_data_source.dart
    │   │   ├── model/
    │   │   │   ├── comment.dart
    │   │   │   ├── comment_creation_data.dart
    │   │   │   └── models_keys/
    │   │   │       ├── comment.dart
    │   │   │       └── comment_creation_data.dart
    │   │   └── repository/
    │   │       └── comment_repository.dart
    │   ├── domain/
    │   │   ├── entities/
    │   │   │   ├── comment.dart
    │   │   │   └── comment_creation_data.dart
    │   │   ├── repository/
    │   │   │   └── comment_repository.dart
    │   │   └── use_cases/
    │   │       ├── comment_create_use_case.dart
    │   │       ├── comment_delete_use_case.dart
    │   │       ├── comment_list_use_case.dart
    │   │       ├── comment_read_use_case.dart
    │   │       └── comment_update_use_case.dart
    │   └── presentation/
    │       ├── view/
    │       │   ├── comment_list_view.dart
    │       │   ├── comment_view.dart
    │       │   ├── component/
    │       │   ├── create_comment_view.dart
    │       │   ├── delete_comment_view.dart
    │       │   ├── update_comment_view.dart
    │       │   └── widget/
    │       └── view_model/
    │           ├── comment/
    │           │   ├── base_comment/
    │           │   │   └── i_comment_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── comment_view_model.dart
    │           ├── comment_list/
    │           │   ├── base_comment_list/
    │           │   │   └── i_comment_list_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── comment_list_view_model.dart
    │           ├── create_comment/
    │           │   ├── base_create_comment/
    │           │   │   └── i_create_comment_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── create_comment_view_model.dart
    │           ├── delete_comment/
    │           │   ├── base_delete_comment/
    │           │   │   └── i_delete_comment_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── delete_comment_view_model.dart
    │           └── update_comment/
    │               ├── base_update_comment/
    │               │   └── i_update_comment_view_model.dart
    │               └── concrete_classes/
    │                   └── update_comment_view_model.dart
    ├── photo/
    │   ├── data/
    │   │   ├── data_source/
    │   │   │   ├── base/
    │   │   │   │   └── base_data_source.dart
    │   │   │   └── remote_data_source.dart
    │   │   ├── model/
    │   │   │   ├── models_keys/
    │   │   │   │   ├── photo.dart
    │   │   │   │   └── photo_creation_data.dart
    │   │   │   ├── photo.dart
    │   │   │   └── photo_creation_data.dart
    │   │   └── repository/
    │   │       └── photo_repository.dart
    │   ├── domain/
    │   │   ├── entities/
    │   │   │   ├── photo.dart
    │   │   │   └── photo_creation_data.dart
    │   │   ├── repository/
    │   │   │   └── photo_repository.dart
    │   │   └── use_cases/
    │   │       ├── photo_create_use_case.dart
    │   │       ├── photo_delete_use_case.dart
    │   │       ├── photo_list_use_case.dart
    │   │       ├── photo_read_use_case.dart
    │   │       └── photo_update_use_case.dart
    │   └── presentation/
    │       ├── view/
    │       │   ├── component/
    │       │   ├── create_photo_view.dart
    │       │   ├── delete_photo_view.dart
    │       │   ├── photo_list_view.dart
    │       │   ├── photo_view.dart
    │       │   ├── update_photo_view.dart
    │       │   └── widget/
    │       └── view_model/
    │           ├── create_photo/
    │           │   ├── base_create_photo/
    │           │   │   └── i_create_photo_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── create_photo_view_model.dart
    │           ├── delete_photo/
    │           │   ├── base_delete_photo/
    │           │   │   └── i_delete_photo_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── delete_photo_view_model.dart
    │           ├── photo/
    │           │   ├── base_photo/
    │           │   │   └── i_photo_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── photo_view_model.dart
    │           ├── photo_list/
    │           │   ├── base_photo_list/
    │           │   │   └── i_photo_list_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── photo_list_view_model.dart
    │           └── update_photo/
    │               ├── base_update_photo/
    │               │   └── i_update_photo_view_model.dart
    │               └── concrete_classes/
    │                   └── update_photo_view_model.dart
    ├── post/
    │   ├── data/
    │   │   ├── data_source/
    │   │   │   ├── base/
    │   │   │   │   └── base_data_source.dart
    │   │   │   └── remote_data_source.dart
    │   │   ├── model/
    │   │   │   ├── models_keys/
    │   │   │   │   ├── post.dart
    │   │   │   │   └── post_creation_data.dart
    │   │   │   ├── post.dart
    │   │   │   └── post_creation_data.dart
    │   │   └── repository/
    │   │       └── post_repository.dart
    │   ├── domain/
    │   │   ├── entities/
    │   │   │   ├── post.dart
    │   │   │   └── post_creation_data.dart
    │   │   ├── repository/
    │   │   │   └── post_repository.dart
    │   │   └── use_cases/
    │   │       ├── post_create_use_case.dart
    │   │       ├── post_delete_use_case.dart
    │   │       ├── post_list_use_case.dart
    │   │       ├── post_read_use_case.dart
    │   │       └── post_update_use_case.dart
    │   └── presentation/
    │       ├── view/
    │       │   ├── component/
    │       │   ├── create_post_view.dart
    │       │   ├── delete_post_view.dart
    │       │   ├── post_list_view.dart
    │       │   ├── post_view.dart
    │       │   ├── update_post_view.dart
    │       │   └── widget/
    │       └── view_model/
    │           ├── create_post/
    │           │   ├── base_create_post/
    │           │   │   └── i_create_post_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── create_post_view_model.dart
    │           ├── delete_post/
    │           │   ├── base_delete_post/
    │           │   │   └── i_delete_post_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── delete_post_view_model.dart
    │           ├── post/
    │           │   ├── base_post/
    │           │   │   └── i_post_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── post_view_model.dart
    │           ├── post_list/
    │           │   ├── base_post_list/
    │           │   │   └── i_post_list_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── post_list_view_model.dart
    │           └── update_post/
    │               ├── base_update_post/
    │               │   └── i_update_post_view_model.dart
    │               └── concrete_classes/
    │                   └── update_post_view_model.dart
    ├── todo/
    │   ├── data/
    │   │   ├── data_source/
    │   │   │   ├── base/
    │   │   │   │   └── base_data_source.dart
    │   │   │   └── remote_data_source.dart
    │   │   ├── model/
    │   │   │   ├── models_keys/
    │   │   │   │   ├── todo.dart
    │   │   │   │   └── todo_creation_data.dart
    │   │   │   ├── todo.dart
    │   │   │   └── todo_creation_data.dart
    │   │   └── repository/
    │   │       └── todo_repository.dart
    │   ├── domain/
    │   │   ├── entities/
    │   │   │   ├── todo.dart
    │   │   │   └── todo_creation_data.dart
    │   │   ├── repository/
    │   │   │   └── todo_repository.dart
    │   │   └── use_cases/
    │   │       ├── todo_create_use_case.dart
    │   │       ├── todo_delete_use_case.dart
    │   │       ├── todo_list_use_case.dart
    │   │       ├── todo_read_use_case.dart
    │   │       └── todo_update_use_case.dart
    │   └── presentation/
    │       ├── view/
    │       │   ├── component/
    │       │   ├── create_todo_view.dart
    │       │   ├── delete_todo_view.dart
    │       │   ├── todo_list_view.dart
    │       │   ├── todo_view.dart
    │       │   ├── update_todo_view.dart
    │       │   └── widget/
    │       └── view_model/
    │           ├── create_todo/
    │           │   ├── base_create_todo/
    │           │   │   └── i_create_todo_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── create_todo_view_model.dart
    │           ├── delete_todo/
    │           │   ├── base_delete_todo/
    │           │   │   └── i_delete_todo_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── delete_todo_view_model.dart
    │           ├── todo/
    │           │   ├── base_todo/
    │           │   │   └── i_todo_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── todo_view_model.dart
    │           ├── todo_list/
    │           │   ├── base_todo_list/
    │           │   │   └── i_todo_list_view_model.dart
    │           │   └── concrete_classes/
    │           │       └── todo_list_view_model.dart
    │           └── update_todo/
    │               ├── base_update_todo/
    │               │   └── i_update_todo_view_model.dart
    │               └── concrete_classes/
    │                   └── update_todo_view_model.dart
    └── user/
        ├── data/
        │   ├── data_source/
        │   │   ├── base/
        │   │   │   └── base_data_source.dart
        │   │   └── remote_data_source.dart
        │   ├── model/
        │   │   ├── models_keys/
        │   │   │   ├── user.dart
        │   │   │   ├── user_address.dart
        │   │   │   ├── user_address_geo.dart
        │   │   │   ├── user_company.dart
        │   │   │   └── user_creation_data.dart
        │   │   ├── user.dart
        │   │   ├── user_address.dart
        │   │   ├── user_address_geo.dart
        │   │   ├── user_company.dart
        │   │   └── user_creation_data.dart
        │   └── repository/
        │       └── user_repository.dart
        ├── domain/
        │   ├── entities/
        │   │   ├── user.dart
        │   │   ├── user_address.dart
        │   │   ├── user_address_geo.dart
        │   │   ├── user_company.dart
        │   │   └── user_creation_data.dart
        │   ├── repository/
        │   │   └── user_repository.dart
        │   └── use_cases/
        │       ├── user_create_use_case.dart
        │       ├── user_delete_use_case.dart
        │       ├── user_list_use_case.dart
        │       ├── user_read_use_case.dart
        │       └── user_update_use_case.dart
        └── presentation/
            ├── view/
            │   ├── component/
            │   ├── create_user_view.dart
            │   ├── delete_user_view.dart
            │   ├── update_user_view.dart
            │   ├── user_list_view.dart
            │   ├── user_view.dart
            │   └── widget/
            └── view_model/
                ├── create_user/
                │   ├── base_create_user/
                │   │   └── i_create_user_view_model.dart
                │   └── concrete_classes/
                │       └── create_user_view_model.dart
                ├── delete_user/
                │   ├── base_delete_user/
                │   │   └── i_delete_user_view_model.dart
                │   └── concrete_classes/
                │       └── delete_user_view_model.dart
                ├── update_user/
                │   ├── base_update_user/
                │   │   └── i_update_user_view_model.dart
                │   └── concrete_classes/
                │       └── update_user_view_model.dart
                ├── user/
                │   ├── base_user/
                │   │   └── i_user_view_model.dart
                │   └── concrete_classes/
                │       └── user_view_model.dart
                └── user_list/
                    ├── base_user_list/
                    │   └── i_user_list_view_model.dart
                    └── concrete_classes/
                        └── user_list_view_model.dart
```

## Usage

The app provides a simple user interface to navigate through the different features. Each endpoint is accessed through a corresponding UI component. You can explore the various endpoints and view the associated data.

## Contributions

Contributions to this project are welcome. If you find any issues or have suggestions for improvement, please feel free to submit a pull request or open an issue.


## Acknowledgements

- JSONPlaceholder (https://jsonplaceholder.typicode.com/): The fake API service providing JSON data for testing and prototyping.

## Contact

For any inquiries or questions, please contact [Shehab](mailto:shehab.anwar.x@gmail.com).
