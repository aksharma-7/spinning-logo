# spinning_logo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Approach

I approached the animation by using Flutter's built-in animation and gesture handling features. I used an AnimationController and a Tween to define the animation and its duration, respectively. I also used the SingleTickerProviderStateMixin to handle the animation ticker, and the Transform.rotate widget to perform the rotation animation on the logo.

# Challenges

One of the challenges I faced during the development process was making sure the animation was performant and smooth on all devices, especially older ones. To achieve this, I used the vsync property of the AnimationController and set it to the current state object using the SingleTickerProviderStateMixin. I also used the addListener() method to ensure that the setState() method was only called when the animation value changed, rather than on every frame, which helped to optimize the performance of the animation.

# Demo Video
[TaskVideo.webm](https://user-images.githubusercontent.com/52443790/230787871-a1904e6c-d3cb-47a5-b8c9-bea618fd273d.webm)
