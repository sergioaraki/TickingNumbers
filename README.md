TickingNumbers
===============

Ticking numbers in Cascades

This example is based in Tick (https://github.com/harvesthq/tick) that is a JavaScript plugin that makes visualizing dynamically changing numbers a breeze.

You can import this example in Momentics and run to see the demo.

If you want to add this animation to your project, you need to copy the folder webview that is inside assets and Tick.qml

Then in your qml just use:

```js
Tick {
    id: slide
    //if you want to autostart the animation (boolean)
    autostart: true
    //from (int) which value will start the animation
    fromValue: 100
    //value (int) to increment in each iteration
    incremental: 2
    //time in ms (int) between each incremental
    delay: 500
    //change animation mode from slide to flip
    flip: false
}
```

And you can stop:

```js
	slide.stop();
```

stop with callback:

```js
	slide.stopCallback();
```

start:

```js
	slide.start();
```