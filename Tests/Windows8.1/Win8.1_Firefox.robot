*** Settings ***
Resource      	  ../../Resource/openBrowser.robot
Suite Teardown    Close Browser


*** Test Cases ***

Open Rangle.io Website
	Open Browser To Home Page  BROWSER=Firefox  BROWSER VERSION=43.0  OS=Windows  OS VERSION=8.1
	close browser

Verify Inquire Button Is Selectable On Rangle.io Homepage
	Open Browser To Home Page  BROWSER=Firefox  BROWSER VERSION=43.0  OS=Windows  OS VERSION=8.1
	User Selects Inquire
	close browser