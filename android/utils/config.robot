*** Settings ***

Resource    ../base.robot

*** Variables ***

${ANDROID_AUTOMATION_NAME}        UiAutomator2
${ANDROID_PLATFORM_NAME}          Android
${ANDROID_APP_ACTIVITY}           .MainActivity
${ANDROID_APP_PACKAGE}            com.ricardodalarme.nubank_clone
${APPIUM_URL}                     http://127.0.0.1:4723

*** Keywords ***

Abrir App
    Open Application   ${APPIUM_URL}    automationName=${ANDROID_AUTOMATION_NAME}    platformName=${ANDROID_PLATFORM_NAME}    
    ...     appActivity=${ANDROID_APP_ACTIVITY}    appPackage=${ANDROID_APP_PACKAGE}

Teardown
    Run Keyword If Test Failed    Capture Page Screenshot
    Close All Applications