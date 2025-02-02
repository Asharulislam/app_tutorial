# Flutter App Tutorial

<img src="https://raw.githubusercontent.com/aikenahac/tutorial/master/assets/tutorial_demo.gif" alt="roundedRectangle" width="200"/>

## Usage

Import the package into your `pubspec.yaml`

```
dependencies:
  app_tutorial: ^currentVersion
```

View the [example project](https://github.com/aikenahac/app_tutorial/tree/master/example) to see how to use the package.

#### Properties:

**TutorialItem**

| Property | Description | Type | Required | Default value |
| -------- | ----------- | ---- | -------- | ------------- |
| globalKey | The Global Key of the component you want to focus on | `GlobalKey` | `yes` | / |
| children | List of widgets to show on the screen when this item is active | `List<Widget>` | `yes`| / |
| top | Offset from the top | `double` | `no` | `null` |
| left | Offset from the left | `double` | `no` | `null` |
| bottom | Offset from the bottom | `double` | `no` | `null` |
| right | Offset from the right | `double` | `no` | `null` |
| color | Color of the overlay | `Color` | `no` | `Color.fromRGBO(0, 0, 0, 0.6)` |
| borderRadius | Radius of the border of the higlighted item | `Radius` | `no` | `Radius.circular(10.0)` |
| crossAxisAlignment | Alignment on the cross axis | `CrossAxisAlignment` | `no` | `CrossAxisAlignment.center` |
| mainAxisAlignment | Alignment on the main axis | `MainAxisAlignment` | `no` | `MainAxisAlignment.center` |
| shapeFocus | Shape of the focus element | `ShapeFocus.oval`, `ShapeFocus.square`, `ShapeFocus.roundedSquare` | `no` |  `ShapeFocus.roundedSquare` |

**Tutorial.show(context,items)**

show() -   the show () method, receives two parameters, the context and the list of tutorial items you created
Now just run the Tutorial.show(context, items)

```
Tutorial.showTutorial(context, items);
```

###### This package is a separated fork of [this package](https://pub.dev/packages/tutorial).