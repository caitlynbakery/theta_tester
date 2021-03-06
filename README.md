# Caitlyn's Ricoh Theta Z1 Tester
![iphone 7 home screen](doc/iphone_7_home.png)

![app screen](doc/iphone_7_main_app_screen.png)


This is a simple app to test the Z1 functionality. 

The app was tested on BOTH android and iOS physical devices. On android it was tested on Google Pixel 2 running android 10. For iOS it was tested on iPhone 7.

It has these features.

## App Features

* Take Picture Button
* Disable Timer Button
* Set Timer (3 seconds) Button
* Disable Sleep Button
* Set Sleep (every 180 seconds) Button
* RESET button
* Automatic stitching - `auto`
* Disable stitching and take dual fish-eye image - `none`

## Image Stitching


![stitched photo](doc/stitched_photo.png)
This is a photo of a dual fish-eye image. I disabled the stitching with a button and took the photo. 

  * Static stitching - `static`
  * Dynamic stitching - `dynamicAuto`
  * Dynamic stitching and save - `dynamicSave`
  * Dynamic Stitching and load - `dyanmicLoad`

  API:  [_imageStitching](https://api.ricoh/docs/theta-web-api-v2.1/options/_image_stitching/)


## Orientation and Top/Bottom Correction


![orientation](doc/orientation.png)

  * Enable top/bottom correction for ALL images -  `Apply`
  * For multiple interval shots, use correction from FIRST shot only - `ApplyAuto`
  * Performs top/bottom correction & saves parameters - `ApplySave`
  * Performs top/bottom correction using saved parameters - `ApplyLoad`
  * Disable top/bottom correction - `Disapply`



For Normal shooting, performs dynamic stitching, for Interval shooting, saves dynamic distortion correction parameters for the first image and then uses them for the 2nd and subsequent images


API [_topBottomCorrection](https://api.ricoh/docs/theta-web-api-v2.1/options/_top_bottom_correction/)

## Image View Screen

![](doc/image_view.png)

I made a separate screen to view the latest image that was taken on my app.


## Testing on Physical Devices

### Android Google Pixel 2

![Android icon](doc/android_icon.jpeg)

![Android main](doc/android_main.png)

## Screen Details

![main screen details](doc/theta_screen_android.png)

Stitching screen. 


![stitching button](doc/stitching_screen.png)


Orientation screen.

![orientation button](doc/orientation-screen.png)


## To Do

* Image View Screen
  * change color for image view screen
  * build loading screen while image loads
* make reset screen
* improve image GPS accuracy. [API to insert GPS](https://api.ricoh/docs/theta-web-api-v2.1/options/gps_info/) information from mobile phone.
* [microphone gain](https://api.ricoh/docs/theta-web-api-v2.1/options/_gain/)