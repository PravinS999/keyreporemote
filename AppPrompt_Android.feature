@AppRatePrompt_Android
Feature: App Rate prompt Validations

Background: 
	And I clean application by name "Virgin Media Connect"
	Given I start application by name "Virgin Media Connect" 
	And I am using an AppiumDriver 

@AppRatingValidationHotspotTab_Android 
Scenario Outline: TS1.9 TC73 TC78
	And I login to the newly installed App using media user on android "<username>" and "<password>"
	Then I validated app rate prompt for hotspot tab
	And I capture a screenshot with name "TS1.9 TC73" to folder "TC73"
	And I click on "apprate.asklater.text.android"
	And I wait for "5" seconds
	And I click on "home.button.android"
	And I wait for "5" seconds
	And I click on "wifihotSpots.button.android"
	And I wait for "3" seconds
	And "apprate.prompt.text.android" should not exist
	And I capture a screenshot with name "TS1.9 TC78" to folder "TC78"
	
Examples: {'datafile' : 'src/main/resources/data/CappTestData.xls';'sheetName' : 'AppRatePrompt'}
	
@AppRatingValidationMobileTab_Android 
Scenario Outline: TS1.9 TC74 TC78
	And I login to the newly installed App using media user on android "<username>" and "<password>"
	Then I validated app rate prompt for mobile tab
	And I capture a screenshot with name "TS1.9 TC74" to folder "TC74"
	And I click on "apprate.asklater.text.android"
	And I wait for "5" seconds
	And I click on "home.button.android"
	And I wait for "5" seconds
	And I click on "usage.button.android"
	And I wait for "3" seconds
	And "apprate.prompt.text.android" should not exist
	And I capture a screenshot with name "TS1.9 TC78" to folder "TC78"
	
Examples: {'datafile' : 'src/main/resources/data/CappTestData.xls';'sheetName' : 'AppRatePrompt'}
	
@AppRatingValidationThumbsUp_Android 
Scenario Outline: TS1.9 T80
	And I login to the newly installed App using media user on android "<username>" and "<password>"
	Then I validated app rate prompt for mobile tab
	And "apprate.thumbsup.icon.android" should exist
	And I capture a screenshot with name "TS1.9 TC80_1" to folder "TC80"
	And I click on "apprate.thumbsup.icon.android"
	And I wait for "5" seconds
	And "mobile.googleplay.android" should exist
	And I capture a screenshot with name "TS1.9 TC80_2" to folder "TC80"
	
Examples: {'datafile' : 'src/main/resources/data/CappTestData.xls';'sheetName' : 'AppRatePrompt'}
	
@AppRatingValidationThumbsDown_Chat_Android 
Scenario Outline: TS1.9 T81
	And I login to the newly installed App using media user on android "<username>" and "<password>"
	Then I validated app rate prompt for mobile tab
	And "apprate.thumbsdown.icon.android" should exist
	And I capture a screenshot with name "TS1.9 TC81" to folder "TC81"
	And I click on "apprate.thumbsdown.icon.android"
	And I wait for "5" seconds	
	And I capture a screenshot with name "TS1.9 TC81" to folder "TC81"
	And "chatWithUs.button.android" must exist
	And I click on "chatWithUs.button.android" 
	And I wait for "5" seconds
	And I capture a screenshot with name "TS1.9 TC81" to folder "TC81"
	And "deletechat.button.android" must exist
	And I press mobile "BACK" key
	And I click on "home.button.android"
	
Examples: {'datafile' : 'src/main/resources/data/CappTestData.xls';'sheetName' : 'AppRatePrompt'}

@AppRatingValidationThumbsDown_Decline_Android 
Scenario Outline: TS1.9 T82
	And I login to the newly installed App using media user on android "<username>" and "<password>"
	Then I validated app rate prompt for mobile tab
	And "apprate.thumbsdown.icon.android" should exist
	And I capture a screenshot with name "TS1.9 TC82" to folder "TC82"
	And I click on "apprate.thumbsdown.icon.android"
	And I wait for "5" seconds
	And I capture a screenshot with name "TS1.9 TC82" to folder "TC82"
	And "feedbackChat.asklater.text.android" must exist
	And I click on "feedbackChat.asklater.text.android" 
	And I wait for "5" seconds
	And I capture a screenshot with name "TS1.9 TC82" to folder "TC82"
	And I click on "home.button.android"	
	
Examples: {'datafile' : 'src/main/resources/data/CappTestData.xls';'sheetName' : 'AppRatePrompt'}



