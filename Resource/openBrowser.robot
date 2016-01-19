*** Settings ***
Library           Selenium2Library



*** Variables ***
${URL}            http://www.rangle.io
${BROWSER LOCAL}  chrome
${DELAY}          0
${INQUIRE}        css=a.header__menu-item--always-show
${CONTACT}        css=div.hs_phone

*** Keywords ***


Open Browser To Home Page(Local)
	Open Browser  ${URL}  ${BROWSER LOCAL}

Open Browser To Home Page
	[Arguments]  ${BROWSER}  ${BROWSER VERSION}  ${OS}  ${OS VERSION}
	Open Browser  url=${URL}  browser=chrome  alias=None  remote_url=http://rehanarajwani1:bwrxEqELu83iJs4DsBws@hub.browserstack.com:80/wd/hub  desired_capabilities=browser:${BROWSER},browser_version:${BROWSER VERSION},os:${OS}, os_version:${OS VERSION},resolution:1024x768
	#Title Should Be  Home | Rangle.io

User Selects Inquire
	Element Should Be Visible  ${INQUIRE}
	Click Element  ${INQUIRE}
	Wait Until Page Contains Element  ${CONTACT}




