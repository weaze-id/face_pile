# face_pile

Displays a stacked list of users. Each circle represents a person and contains their image. This widget is usually used when sharing who has access to a specific view or file, or when assigning tasks to someone in a workflow

![flutter facepile](/screenshots/screenshot_1.jpg)

![flutter facepile](/screenshots/screenshot_2.jpg)

## Usage

```dart
FacePile(
  radius: 32,
  space: 40,
  images: [
    NetworkImage("https://i.pravatar.cc/300?img=1"),
    NetworkImage("https://i.pravatar.cc/300?img=2"),
    NetworkImage("https://i.pravatar.cc/300?img=3"),
    NetworkImage("https://i.pravatar.cc/300?img=4"),
  ],
),
```
