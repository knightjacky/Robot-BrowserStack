*** Settings ***
Resource      	  ../../Resource/openBrowser.robot
Suite Teardown    Close Browser


*** Test Cases ***

Open Rangle.io Website
	Open Browser To Home Page(Local)
	close browser

Verify Inquire Button Is Selectable On Rangle.io Homepage
	Open Browser To Home Page(Local)
	User Selects Inquire
	close browser








