# fasTEST

A *fast* docker-compose open source test environment with:
* Jenkins
* Selenium Grid
* (n) Firefox nodes

## Create a full integrated testing enviroment in five simple steps.

1. Install Docker and Docker Compose
2. Download the project
3. Run ./build-images.sh (first time only)
4. Run ./start-grid.sh [n firefox nodes, default = 5]
5. Be happy \o/

## Useful tips
* Jenkins configuration - http://localhost:8080/
* Selenium grid - http://localhost:4444/
* Stop the grid - docker-compose stop
