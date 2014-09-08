TrafficLink Project
==============

Notes
--------------
This is a TrafficLink Project where live feeds will be used for keeping the user updated. 
The latest measured data of coordinates, speeds and traveltime will be updated automatically within Drupal.



**Installation Notes**
1. Clone repository:
*From GitHub*
git clone https://github.com/infinitydeveloper/TrafficProject.git

2. Create a database:
*You can create a database in PhpMyAdmin or create one from the commandline*
mysql -u username -p -e "create database trafficlink_d7;"

3. Import the database:
*You can import the database in PhpMyAdmin or through the commandline:*
mysql -u username -p trafficlink_d7 < trafficlink_d7.sql

4. Setup Cron
*If you want to update the nodes with drush cron each (x) minutes, add a cronjob to your server in crontab -e*
*Drush cron will import data from GeoJSON and will update coordinates, velocity and speed for example*

5. Setup Solr
- Edit sites/all/modules/apachesolr/solr-conf/solr-4.x line 1113 the port of your Solr Configuration
- Create a core in Solr
- Copy the folder sites/all/modules/apachesolr/solr-conf/solr-4.x to your Solr Configuration
- Go to /admin/config/search/apachesolr/settings/solr/edit
- Enter your Solr server URL and core ( for example:  http://127.0.0.1:8099/solr/core0  )

6. Login Credentials
After setting your vhost/dns, visit the website. 
To Login go to http://*domain.com*/user credentials are user: infinity and password: trafficlink
After logging in you will get more options like a JSON feed or to Update nodes manually 


Bugs
--------------
- Openlayers - Projection EPSG-28992 is not working correctly.
