# Caitlyn's Ricoh Theta Z1 Tester

![](doc/theta_screen_android.png)

![](doc/mac_screen.png)

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

## Planned Features

* New Screen for [_topBottomCorrection](https://api.ricoh/docs/theta-web-api-v2.1/options/_top_bottom_correction/)

  * Enable top/bottom correction for ALL images -  `Apply`
  * For multiple interval shots, use correction from FIRST shot only - `ApplyAuto`
  * Performs top/bottom correction & saves parameters - `ApplySave`
  * Performs top/bottom correction using saved parameters - `ApplyLoad`
  * Disable top/bottom correction - `Disapply`

* New Screen for [_imageStitching](https://api.ricoh/docs/theta-web-api-v2.1/options/_image_stitching/)

  * Automatic stitching - `auto`
  * Static stitching - `static`
  * Dynamic stitching - `dynamicAuto`
  * Dynamic stitching and save - `dynamicSave`
  * Dynamic Stitching and load - `dyanmicLoad`
  * Disable stitching and take dual fish-eye image - `none`

For Normal shooting, performs dynamic stitching, for Interval shooting, saves dynamic distortion correction parameters for the first image and then uses them for the 2nd and subsequent images
