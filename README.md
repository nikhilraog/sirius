# Sirius


An online student management system designed to ease the management of course and registration process of a university.
Main motivation behind the project is to increase accountability and maintainability of student's courses data data.

This project was done as a part of [Database Design](http://go.utdallas.edu/cs6360.501.12f) course that I took
in UT Dallas in Fall 2012. [Here is the report](http://www.shaon.org/file/cs-6360-database-design-report.pdf) of this project
with screenshots and Entity Relationship Diagram (ERD).


## Features Implemented

- Personalized Dashboard for Student and Instructor
- Instructor can give grades to students in batch
- Individual students only able to see his own grade


# Libraries Used

- Spring Framework - web frontend
- Spring Security  - access control
- Hibernate        - database access
- Unitils          - testing hibernate generated queries.

**This project could be very good starting point for those who wanted to start using these libraries.**

# Database configuration

Rename `src/main/resources/db.properties.sample` to `src/main/resources/db.properties`
and set proper database credentials.

**Note**

I admin this not a good way to keep database configurations. Production ready application
should ideally read database configuration from servlet container. But given my short
time this quick dirty method worked. However if really thinking about extending this application
to a production ready application please give more thought into how you are going to handle
database configurations.

# Deploy

## Local Tomcat

Tomcat plugin is added into `pom.xml`. To use it 4 environment variables must be set,
which can be set using a bash script like the following.

    #!/bin/bash

    # Helping script to deploy in local tomcat

    export TOMCAT_USERNAME=..
    export TOMCAT_PASSWORD=..
    export TOMCAT_PORT=..

    # Tomcat 6
    #export TOMCAT_MANAGER_URL=http://hostname:port/manager

    # Tomcat 7
    export TOMCAT_MANAGER_URL=http://hostname:port/manager/text

    mvn "$@"

Assume it is saved as `tomcat.sh`, then to deploy run

    tomcat.sh tomcat:deploy

To redeploy

    tomcat.sh tomcat:redeploy

# License


The MIT License (MIT)

Copyright (c) 2014, Fahad Shaon <fahad.shaon@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.