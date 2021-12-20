*** Settings ***
Library  AppiumLibrary

#*** variables ***

*** Test Cases ***
Open_Application
  open application  http://127.0.0.1:4723/wd/hub  platformName=Android  DeviceName=52006c3658926559  appPackage=ai.medris  appActivity=activity.ScreenSplashActivity app=Medris_v_1.5.apk automationName=Uiautomator2