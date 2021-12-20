*** Settings ***
Library  AppiumLibrary

*** Variables ***
${permission-BUTTON}    id=com.android.permissioncontroller:id/permission_allow_button
${permission1-BUTTON}   id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
${Login-BUTTON}         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.Button[2]
${Register-Button}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[6]/android.widget.TextView[2]
${back-Button}          id=ai.medris:id/backbtn


*** Test Cases ***
Register
    open application  http://127.0.0.1:4723/wd/hub  platformName=Android  DeviceName=52006c3658926559  appPackage=ai.medris  appActivity=activity.ScreenSplashActivity app=Medris_v_1.5.apk automationName=Uiautomator2
    wait until element is visible  ${permission-BUTTON}
    click element  ${permission-BUTTON}
    click element  ${permission-BUTTON}
    click element  ${permission-BUTTON}
    click element  ${permission1-BUTTON}
    click element  ${permission-BUTTON}
    click element  ${permission-BUTTON}
    click element  ${permission-BUTTON}
    wait until element is visible  ${Login-BUTTON}
    click element  ${Login-BUTTON}
    wait until element is visible  ${Register-Button}
    click element  ${Register-Button}
    wait until element is visible  ${back-Button}
    click element  ${back-Button}

*** Variables ***
${Login-BUTTON}         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.Button[2]
${USER-Detalis-email}         narensai0320@gmail.com
${User-Detalis-passwrod}      Nissi@1234
${Login-email}          id=ai.medris:id/firstname
${Login-password}       id=ai.medris:id/password
${Login1-Button}        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button

*** Test Cases ***
Login
    wait until element is visible  ${Login-BUTTON}
    click element  ${Login-BUTTON}
    wait until element is visible  ${Login-email}
    input text     ${Login-email}    ${USER-Detalis-email}
    input text     ${Login-password}    ${User-Detalis-passwrod}
    click element  ${Login1-Button}
