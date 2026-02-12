Refer to this file for how to setup openwebui locally with agentic fabriq

1. configure your agentic fabriq values
    - go to backend/.oidc
    - enter in the client id & secret you got from registering on agentic fabriq into AF_APP_ID and AF_APP_SECRET
    - make sure the realm is correct for OPENID_PROVIDER_URL 

2. Running openwebui's backend 
    - cd backend
    - pip install -r requirements.txt
    - ./dev.sh 

3. Running openwebui's frontend
    - start from root (openwebui-x-fabriq-public)
    - npm install --legacy-peer-deps
    - npm run dev

4. On localhost link for openwebui
    - login with keycloak

5. configure agentic fabriq as an integration on openwebui's ui
    - click on profile in top right -> "admin panel"
    - go to "external tools" under settings
    - click on "OpenAPI" to switch to "MCP Streamable HTTP"
    - URL: https://dashboard.agenticfabriq.com/mcp
    - Auth: select "Agentic Fabriq" from dropdown 
    - ID: agentic-fabriq
    - Name: agentic-fabriq
    - Description & Visibility are optional
    - click save

6. connecting models (OpenAI API)
    - "admin panel" 
    - go to "connections" under settings
    - click "configure" for https://api.openai.com/v1 or add a new OpenAI API connection
    - URL: https://api.openai.com/v1
    - Auth: add your OpenAI API key
    - click save

7. using openwebui with agentic fabriq
    - start a new chat
    - pick a model (we recommend to use more recent models)
    - click on integrations > tools > agentic-fabriq (switch on)
    - now any prompt you give will be able to access connections & tools you've defined through agentic fabriq!

