<img src="https://drive.google.com/thumbnail?id=10MLLfi0yYpP0EZF3M7xVTN2Byc3pCZAm" alt="Logo" width="120"/>

# Flask-webshop

This was the final group project in the course "DATA2410 Networking and cloud computing" at OsloMet. <br />
The task was to build a simple webshop using Python Flask and a RESTful API. <br />

## How to run:
1. Download **Docker** and **Docker compose** from: https://docs.docker.com/get-docker/
2. Clone or download this project and navigate to the folder with the **docker-compose.yml** file. 
3. In the folder, open up a terminal or command prompt and run the following command:
   ```console
   docker-compose up
   ```
   NB: You need to be sudo to run the command in Linux. <br />
   
### Navigate to the following links after the command is finished:

URL | Description
------------ | -------------
https://localhost:5000 | The webshop
http://localhost:9090  | Prometheus (resource tracking)
http://localhost:3000  | Grafana (graphically displays data from prometheus)

### Important
When accessing https://localhost:5000 you will get a warning in your browser. This happens because the
website uses a self-signed SSL certificate. Allow this in your browser to continue.

## Documentation
In-depth documentation: https://drive.google.com/file/d/1pGqMooQkV7aHccHx2ehbwOMh8TQJfL9l/view?usp=sharing

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

# BreakingBad Graduation Job

- Test out app locally: 'docker-compose up'

- Created helmcharts with software, Kompose, script: kompose convert -f docker-compose.yml

- Pipeline in Github is directed towards 
