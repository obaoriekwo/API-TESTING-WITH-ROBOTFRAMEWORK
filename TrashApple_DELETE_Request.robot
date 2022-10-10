*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections

*** Variables ***
${base_url}


*** Test Cases ***
DELETE_Request
  create session  AppAccess  ${base_url}
  ${response}=  delete request  AppAccess
  log to console  ${response.status_code}
  log to console  ${response.content}

