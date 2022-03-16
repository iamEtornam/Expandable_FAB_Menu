# Boom Menu

## Usage

The BoomMenu widget is built to be placed in the `Scaffold.floatingActionButton` argument, replacing the `FloatingActionButton` widget.
It's not possible to set its position with the `Scaffold.floatingActionButtonLocation` argument, but it's possible to set right/bottom margin with the `marginRight` and `marginBottom` arguments (default to 16) to place the button anywhere in the screen.
Using the `Scaffold.bottomNavigationBar` the floating button will be always placed above the bar, so the `BottomAppBar.hasNotch` should be always `false`.

**Title**

Every child button can have a `Icon`,`Title`, `SubTitle` which can be customized providing by yourself. If the `Title` parameter is not provided the title will be not rendered.

The package will handle the animation by itself.

![alt text](https://github.com/RegNex/boom_menu/blob/master/screenshots/boom_menu.gif)

**Example Usage:**

```dart
Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: BoomMenu(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(size: 22.0),
        child: const Icon(Icons.add),
        backgroundColor: Colors.orange,
        onOpen: () => debugPrint('OPENING DIAL'),
        onClose: () => debugPrint('DIAL CLOSED'),
        scrollVisible: scrollVisible, //bool
        overlayColor: Colors.black,
        overlayOpacity: 0.7,
        children: [
          BoomMenuItem(
            child: const Icon(Icons.add, color: Colors.white),
            title: "Create Groups",
            titleColor: Colors.white,
            subtitle: "You Can create a new group",
            subTitleColor: Colors.white,
            backgroundColor: Colors.amber,
            onTap: () => debugPrint('FIRST CHILD'),
          ),
          BoomMenuItem(
            child: const Icon(Icons.visibility, color: Colors.white),
            title: "View Groups",
            titleColor: Colors.white,
            subtitle: "You Can view your groups",
            subTitleColor: Colors.white,
            backgroundColor: Colors.green,
            onTap: () => debugPrint('SECOND CHILD'),
          ),
          BoomMenuItem(
            child: const Icon(Icons.edit, color: Colors.white),
            title: "Edit Groups",
            titleColor: Colors.white,
            subtitle: "You Can edit a group",
            subTitleColor: Colors.white,
            backgroundColor: Colors.blue,
            onTap: () => debugPrint('THIRD CHILD'),
          ),
          BoomMenuItem(
            child: const Icon(Icons.delete, color: Colors.white),
            title: "Delete Groups",
            titleColor: Colors.white,
            subtitle: "You Can delete a group",
            subTitleColor: Colors.white,
            backgroundColor: Colors.indigo,
            onTap: () => debugPrint('FOURTH CHILD'),
          )
        ],
      ),
    );
}
```
## Issues & Feedback

Please file an [issue](https://github.com/RegNex/boom_menu/issues) to send feedback or report a bug. Thank you!

## Contributing

Every pull request is welcome.