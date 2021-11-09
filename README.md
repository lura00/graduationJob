# Portfolio-2-nettverk

This was the final group project in the course "DATA2410 Networking and cloud computing" at OsloMet. <br />
The task was to build a simple webshop using a RESTful API and deploy this using Docker.

## How to run
1. Download **Docker** and **Docker compose** from: https://docs.docker.com/get-docker/
2. Clone or download this project and navigate to the folder with the **docker-compose.yml** file. 
3. In the folder, open up a terminal or command prompt and run the following command:
   ```console
   docker-compose up
   ```
   NB: You need to be sudo to run the command in Linux. <br />
   
### When the command is finished. You can navigate to the following URLs:

URL | Description
------------ | -------------
https://localhost:5000 | The webshop
http://localhost:9090  | Prometheus (resource tracking)
http://localhost:3000  | Grafana (graphically displays data from prometheus)

NB: The website uses a self signed SSL certificate, so you must allow this in your web browser.

In-depth documentation can be found here: https://drive.google.com/file/d/1pGqMooQkV7aHccHx2ehbwOMh8TQJfL9l/view?usp=sharing

## Technologies
Front end:
 - HTML, CSS (Bootstrap) and JavaScript (jQuery)
 
Backend:
 - Python, with the Flask framework
 - MySQL (database)
 
 Other features:
  - Resource monitoring with Promethues and Grafana
 
 Deployment
  - Docker and Docker compose
