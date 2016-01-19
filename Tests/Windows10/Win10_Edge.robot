*** Settings ***
Resource      	  ../../Resource/openBrowser.robot
Suite Teardown    Close Browser
Force Tags  BrowserStack


*** Test Cases ***

Open Rangle.io Website
	Open Browser To Home Page  BROWSER=Edge  BROWSER VERSION=12.0  OS=Windows  OS VERSION=10
	close browser

Verify Inquire Button Is Selectable On Rangle.io Homepage
	Open Browser To Home Page  BROWSER=Edge  BROWSER VERSION=12.0  OS=Windows  OS VERSION=10
	User Selects Inquire
	close browser