# TreeSpotter
TreeSpotter application containing the complete code and infrastructure

## Usage
First you need to clone the repository and cd into the corresponding folder `~/TreeSpotter`

To run the complete application, you can choose to do it on dev or on prod.

### Dev
To run the application on dev you need to run the following command:

`docker compose -f docker-compose-dev.yml up --build -d`

Make sure to set appropiate environment variables for the backend and the database in `~/TreeSpotter/env/backend.env` and `~/TreeSpotter/env/database.env`

### Prod
To run the application in production you need to run the following command:

`docker compose -f docker-compose-prod.yml up --build -d`

Make sure to create new environment files as `~/TreeSpotter/env/backend.prod.env` and `~/TreeSpotter/env/database.prod.env` for the backend and database. It is important to keep the database username and password as well as the JWT_SECRET private. Do not push these to your codebase!

## Updating all Submodules
`git submodule foreach git pull origin main`
