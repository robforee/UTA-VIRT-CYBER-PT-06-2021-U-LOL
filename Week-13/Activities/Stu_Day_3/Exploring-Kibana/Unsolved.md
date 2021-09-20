## Activity File: Exploring Kibana

* You are a DevOps professional and have set up monitoring for one of your web servers. You are collecting all sorts of web log data and it is your job to review the data regularly to make sure everything is running smoothly. 

* Today, you notice something strange in the logs and you want to take a closer look.

* Your task: Explore the web server logs to see if there's anything unusual. Specifically, you will:

:warning: **Heads Up**: These sample logs are specific to the time you view them. As such, your answers will be different from the answers provided in the solution file. 

---

### Instructions

1. Add the sample web log data to Kibana.

2. Answer the following questions:

    - In the last 7 days, how many unique visitors were located in India?
      - 225 visitors
    - In the last 24 hours, of the visitors from China, how many were using Mac OSX?
      - 8
    - In the last 2 days, what percentage of visitors received 404 errors? How about 503 errors?
      - 1.2% 404 errors 
      - 3.5% 503 errors
    - In the last 7 days, what country produced the majority of the traffic on the website?
      - CN @ 18.6%
    - Of the traffic that's coming from that country, what time of day had the highest amount of activity?
      - 1300
    - List all the types of downloaded files that have been identified for the last 7 days, along with a short description of each file type (use Google if you aren't sure about a particular file type).
      - gz   compressed files
      - css  style sheet files
      - zip   compressed files
      - deb   package files
      - rpm  package files

3. Now that you have a feel for the data, Let's dive a bit deeper. Look at the chart that shows Unique Visitors Vs. Average Bytes.
     - Locate the time frame in the last 7 days with the most amount of bytes (activity).
     - In your own words, is there anything that seems potentially strange about this activity?
       - bytes per visitor is out of balance at times
     
4. Filter the data by this event.
     - What is the timestamp for this event?
       - 9/12 @ 2100
     - What kind of file was downloaded?
       - rpm
     - From what country did this activity originate?
       - IN
     - What HTTP response codes were encountered by this visitor?
       - 200
     
5. Switch to the Kibana Discover page to see more details about this activity.
     - What is the source IP address of this activity?
       - 35.143.166.159
     - What are the geo coordinates of this activity?
       - { "lat": 43.34121, "lon": -73.6103075 }
     - What OS was the source machine running?
       - win 8
     - What is the full URL that was accessed?
       - https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-6.3.2-i686.rpm
     - From what website did the visitor's traffic originate?
       - facebook
     
6. Finish your investigation with a short overview of your insights. 

     - What do you think the user was doing?
       - installing metricbeat
     - Was the file they downloaded malicious? If not, what is the file used for?
       - no elastic stack
     - Is there anything that seems suspicious about this activity?
       - 
     - Is any of the traffic you inspected potentially outside of compliance guidlines?

---
© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.  