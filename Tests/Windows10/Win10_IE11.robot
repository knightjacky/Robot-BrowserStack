*** Settings ***
Resource      	  ../../Resource/openBrowser.robot
Suite Teardown    Close Browser


*** Test Cases ***

Open Rangle.io Website
	Open Browser To Home Page  BROWSER=IE  BROWSER VERSION=11.0  OS=Windows  OS VERSION=10
	close browser

Verify Inquire Button Is Selectable On Rangle.io Homepage
	Open Browser To Home Page  BROWSER=IE  BROWSER VERSION=11.0  OS=Windows  OS VERSION=10
	User Selects Inquire
	close browser