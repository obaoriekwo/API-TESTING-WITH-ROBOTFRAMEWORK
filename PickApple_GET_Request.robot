*** Settings ***
Library  RequestsLibrary

*** Variables ***
${API_Base_Endpoint}

*** Test Cases ***
TC_001_GET_Request_Fetch_Status-Code

  create session  API_Testing   ${API_Base_Endpoint}
  ${Get_Response}=  GET On session  API_Testing
  log to console  ${Get_Response}













