import bb.cascades 1.0

Page {
    Container {
        layout: StackLayout {
        }
        topPadding: 20
        leftPadding: 20
        rightPadding: 20
        Container {
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight   
            }
            Container {
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }
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
                }
            }
            Container {
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }
                Button {
                    id: stopSlide
                    text: "Stop"
                    horizontalAlignment: HorizontalAlignment.Fill
                    onClicked: {
                        slide.stop();
                        enabled = false;
                        startSlide.enabled = true;
                        stopCallbackSlide.enabled = false;
                    }
                }
                Button {
                    id: stopCallbackSlide
                    text: "Stop Callback"
                    horizontalAlignment: HorizontalAlignment.Fill
                    onClicked: {
                        slide.stopCallback();
                        enabled = false;
                        startSlide.enabled = true;
                        stopSlide.enabled = false;
                    }
                }
                Button {
                    id: startSlide
                    enabled: false
                    text: "Start"
                    horizontalAlignment: HorizontalAlignment.Fill
                    onClicked: {
                        slide.start();
                        enabled = false;
                        stopSlide.enabled = true;
                        stopCallbackSlide.enabled = true;
                    }
                }
            }
        }
        Divider {
            
        }
        Container {
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight   
            }
            Container {
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }
                Tick {
                    id: flip
                    //if you want to autostart the animation (boolean)
                    autostart: true
                    //from which value (int) will start the animation
                    fromValue: 10
                    //value (int) to increment in each iteration
                    incremental: 1
                    //time in ms (int) between each incremental
                    delay: 1000
                    //change animation mode from slide to flip
                    flip: true
                } 
            }
            Container {
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }
                Button {
                    id: stopFlip
                    text: "Stop"
                    horizontalAlignment: HorizontalAlignment.Fill
                    onClicked: {
                        flip.stop();
                        enabled = false;
                        startFlip.enabled = true;
                        stopCallbackFlip.enabled = false;
                    }
                }
                Button {
                    id: stopCallbackFlip
                    text: "Stop Callback"
                    horizontalAlignment: HorizontalAlignment.Fill
                    onClicked: {
                        flip.stopCallback();
                        enabled = false;
                        startFlip.enabled = true;
                        stopFlip.enabled = false;
                    }
                }
                Button {
                    id: startFlip
                    enabled: false
                    text: "Start"
                    horizontalAlignment: HorizontalAlignment.Fill
                    onClicked: {
                        flip.start();
                        enabled = false;
                        stopFlip.enabled = true;
                        stopCallbackFlip.enabled = true;
                    }
                }
            }
        }
    }
}
