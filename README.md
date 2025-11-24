# clean_archi

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


**My Notes:**
why we need getit?
It is service locator

⦁	suppose there is one repo which is being used by multiple cubit
then you need to pass that repo to each cubit manually
(we may mistakenly provide wrong repo)
⦁	so getIt handles this automatically
⦁	we just need to register classes in getIt
⦁	getIt looks in the cubit parameter that which repo is required- if required repo
   was already registered then it simply passes it to cubit



Note:
cubit will use abstract class not the main implementation
(from main function we will provide which implementation it should use)


Either:
left for failure
right for success

⦁	we create a folder failure under domain where all the failure pages are kept


Equatable:
helps to compare obj based on their parameter(that we pass on overrided function called props )
