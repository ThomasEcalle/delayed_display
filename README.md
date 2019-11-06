# delayed_display

A widget that enables you to display a child after a delay and with beautiful fading and sliding animation.

## examples

<p align="center">
<img src="https://raw.githubusercontent.com/ThomasEcalle/delayed_display/master/documentation/horizontal.gif" width="140" height="280" hspace="20"/>
  
<img src="https://raw.githubusercontent.com/ThomasEcalle/delayed_display/master/documentation/vertical.gif" width="140" height="280" hspace="20"/>
</p>

## How does it works

All you have to do is to use the widget `DelayedDisplay` like this for example :

```
DelayedDisplay(
  delay: Duration(seconds: 1),
  child: Text(
    "Hello",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 35.0,
      color: Colors.white,
    ),
  ),
),
```

And ... That's all ! It will automatically handle fading and sliding animation and will make the Text appear after 1 second delay.

## Let's customize it !

Here are the accepted parameters :

| Name  | Type | Usage | Required | Default Value |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| child  | Widget | The Widget that needs to appear | yes | null |
| delay  | Duration | The duration before showing the widget (and animating it) | false | null |
| fadingDuration  | Duration | The duration of the fading animation | false | const Duration(milliseconds: 800)|
| slidingCurve  | Curve | The curve of the sliding animation| false | Curves.decelerate |
| slidingBeginOffset  | Offset | The offset from where the sliding animation will start | false | const Offset(0.0, 0.35) |
