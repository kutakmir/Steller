# Steller

In this branch the Steller demo app is implemented using a Uncle Bob's Clean Architecture principles and heavily inspired by this Medium article by Alexey Naumov:
https://medium.com/swlh/clean-architecture-for-swiftui-6d6c4eb1cf6a

# Discussion

## Key differences between this implementation of Clean Architecture and MVVM
- In Clean Architecture the ViewModel from the MVVM breaks down to: Interactor (business logic), Repository (data requests).
- View breaks down to the View and Router.

For such a small demo the Clean Architecture is a bit of an overkill, especially when implemented from scratch.
In this repo, you can find also a MVVM version, much easier to implement and understand for new developers.

## Benefits over MVVM
So why Clean Architecture?

### Greater separation of concerns
- Almost 100% testability.
- Dependency injection.
- As the project gets bigger, things are easier to find and debug.

### Unidirectional flow of data
- Easier to find bugs.

### Routing
- Unfortunately, SwiftUI doesn't come with a clear way of providing navigation outside of NavigationView which is not very customizable at the moment.
- By introducing a centralized routing system, I attempt to solve the issue, opening the doors to handling URLs for deep linking and a clear testable state-based navigation.
