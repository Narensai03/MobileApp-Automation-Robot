*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
Register
    open application  http://127.0.0.1:4723/wd/hub  platformName=Android  DeviceName=52006c3658926559  appPackage=ai.medris  appActivity=activity.ScreenSplashActivity app=Medris_v_1.5.apk automationName=Uiautomator2
    sleep  3
    click element  id=com.android.permissioncontroller:id/permission_allow_button
    click element  id=com.android.permissioncontroller:id/permission_allow_button
    click element  id=com.android.permissioncontroller:id/permission_allow_button
    click element  id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
    click element  id=com.android.permissioncontroller:id/permission_allow_button
    click element  id=com.android.permissioncontroller:id/permission_allow_button
    click element  id=com.android.permissioncontroller:id/permission_allow_button
    sleep  3
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.Button[2]
    sleep  3
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[6]/android.widget.TextView[2]
    sleep  3
    click element  id=ai.medris:id/backbtn
    Login

*** Keywords ***
Login
    sleep  3
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.Button[2]
    sleep  3
    input text     id=ai.medris:id/firstname    narensai0320@gmail.com
    input text     $id=ai.medris:id/password    Nissi@1234
    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button
