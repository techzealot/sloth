![](https://raw.githubusercontent.com/coolcooldee/sloth/master/src/main/resources/static/images/logo.png)

SLOTH 1.0
=========
[![Chrome Web Store](https://img.shields.io/chrome-web-store/stars/nimelepbpejjlbmoobocpfnjhihnpked.svg)]()  [![version](https://img.shields.io/badge/release-v1.0.1-brightgreen.svg)]()  [![issues](https://img.shields.io/badge/issues-2-orange.svg)]()  [![Licence](https://img.shields.io/badge/Licence-Apache-blue.svg)]()  

Sloth is A tool to generate scaffold code from SQL databases.You just need to specify your application database may be used. It allows for rapidly getting started on new projects.
If you know what the code generator does in Ruby on Rails (RoR), Sloth works just like that, and it’s specific to JAVA language now.
Sloth is always the right choice for your scaffolding needs.Sloth can help developers quickly build beautiful web applications.
Read this in other languages: [中文](/README_CN.md)

Features
========
- __Generate Stand-Alone SpringBoot Applications__
- __Rapidly create a new project executable__
- __Generate Model–View–Controller Code__
- __Generate API DOC__
- __Provide Many Kinds Of Data Access With JDBC__　
    * [Spring Data](http://projects.spring.io/spring-data/)
    * [Spring JdbcTemplate](http://docs.spring.io/spring/docs/current/spring-framework-reference/html/jdbc.html)
    * [Mybatis](http://www.mybatis.org/mybatis-3/)
    * [JOOQ](http://www.jooq.org)
- __Reduce repetitive coding__
    * Never copy and paste boilerplate between projects again
- __Generate your code in less time with fewer bugs__ 
- __OTHERS__
    * Target project generated integrate [Springboot](http://projects.spring.io/spring-boot/)、[Guava](https://github.com/google/guava)、[HikariCP](https://github.com/brettwooldridge/HikariCP)、[Apache Commons](http://commons.apache.org)、[fastjson](https://github.com/alibaba/fastjson)、[swagger2](http://swagger.io)、[Flywaydb](https://flywaydb.org)

Prerequisites
=============
Before useing Sloth, you will need the following:
- __JDK__　(Java Development Kit), version 1.7 and above
- __Maven__ (Project Management Tool), version 3.0 and above
- __GIT__ 

Quick Start
===========
- __Step 1: Prepare Your Database And Create Your Database Structure__

      | host      | port | username | password | dbname |
      |-----------|------|----------|----------|--------|
      | 127.0.0.1 | 3306 | root     |  123456  | test   |

### Core Packages
      | Package | Version | Dependencies |
      |--------|-------|------------|
      | [`babel-core`](/packages/babel-core) | [![npm](https://img.shields.io/npm/v/babel-core.svg?maxAge=2592000)](https://www.npmjs.com/package/babel-core) | [![Dependency Status](https://david-dm.org/babel/babel.svg?path=packages/babel-core)](https://david-dm.org/babel/babel?path=packages/babel-core) |
      | [`babylon`](https://github.com/babel/babylon) | [![npm](https://img.shields.io/npm/v/babylon.svg?maxAge=2592000)](https://www.npmjs.com/package/babylon) | [![Dependency Status](https://david-dm.org/babel/babylon.svg)](https://david-dm.org/babel/babylon) |
      | [`babel-traverse`](/packages/babel-traverse) | [![npm](https://img.shields.io/npm/v/babel-traverse.svg?maxAge=2592000)](https://www.npmjs.com/package/babel-traverse) | [![Dependency Status](https://david-dm.org/babel/babel.svg?path=packages/babel-traverse)](https://david-dm.org/babel/babel?path=packages/babel-traverse) |
      | [`babel-generator`](/packages/babel-generator) | [![npm](https://img.shields.io/npm/v/babel-generator.svg?maxAge=2592000)](https://www.npmjs.com/package/babel-generator) | [![Dependency Status](https://david-dm.org/babel/babel.svg?path=packages/babel-generator)](https://david-dm.org/babel/babel?path=packages/babel-generator) |
      

- __Step 2: Clone Sloth__
```bash
git clone https://github.com/coolcooldee/sloth.git
```
- __Step 3: Into The Sloth Root Directory__
```bash
cd sloth
```
- __Step 4: Maven Install__
```bash
mvn clean install
```
- __Step 5: Sloth Generating__
```
mvn exec:java -Dexec.args="-path/workspaces/mySlothProject -packagecom.test -h127.0.0.1 -P3306 -uroot -p123456 -dtest -strategyssm"  -Dexec.cleanupDaemonThreads=false -Dexec.mainClass="com.github.coolcooldee.sloth.Application"
```
      generate args             | e.g | description 
      :--------- | ---- | ---- 
      -path |/workspaces/mySlothProject | the path where code generate  
      -projectname | mySlothProject | the target project name  
      -package | com.test | tell sloth to use the package name
      -help | ---- | to see which options are available
      -strategy | ssm | generattion strategy:<br/>ssd=SpringBoot + SpringData<br/>ssm=SpringMVC + Spring+MyBatis<br/>sss=SpringBoot + SpringJDBC<br/>ssj=SpringBoot + JOOQ
      -h | 127.0.0.1 | database host 
      -P | 3306 | database port 
      -u | root | database username 
      -p | 123456 | database password
      -d | test | database name

- __Step 6: Into Sloth Target Project Generated__
```bash
cd /workspaces/mySlothProject
```

- __Step 7: Runngin Sloth Target Project__
```bash
mvn clean install
mvn exec:java -Dexec.mainClass=”com.test.Application” -Dexec.cleanupDaemonThreads=false
```
- __Step 8: Open a new tab in your web browser on__
<http://localhost:8081/apis-docs-by-sloth.html>

Example
=======
- __Database Tables Source__

      TableName |
      --------- |
      game |
      gameRole |
      gameServer |
      
- __Target Project Code__
```java
├── deploy.sh
├── mvn.sh
├── pom.xml
├── src
│   ├── main
│   │   ├── assembly
│   │   │   ├── assembly.xml
│   │   ├── java
│   │   │   ├── com
│   │   │   │   ├── sloth
│   │   │   │   │   ├── aop
│   │   │   │   │   │   ├── LogAspect.java
│   │   │   │   │   ├── Application.java
│   │   │   │   │   ├── common
│   │   │   │   │   │   ├── Page.java
│   │   │   │   │   ├── config
│   │   │   │   │   │   ├── database
│   │   │   │   │   │   │   ├── DB.java
│   │   │   │   │   │   │   ├── DBConfig.java
│   │   │   │   │   │   ├── redis
│   │   │   │   │   │   │   ├── RedisConfig.java
│   │   │   │   │   ├── controller
│   │   │   │   │   │   ├── restfulapi
│   │   │   │   │   │   │   ├── GameController.java
│   │   │   │   │   │   │   ├── GameRoleController.java
│   │   │   │   │   │   │   ├── GameServerController.java
│   │   │   │   │   ├── mapper
│   │   │   │   │   │   ├── GameMapper.java
│   │   │   │   │   │   ├── GameRoleMapper.java
│   │   │   │   │   │   ├── GameServerMapper.java
│   │   │   │   │   ├── model
│   │   │   │   │   │   ├── Game.java
│   │   │   │   │   │   ├── GameRole.java
│   │   │   │   │   │   ├── GameServer.java
│   │   │   │   │   ├── service
│   │   │   │   │   │   ├── GameRoleService.java
│   │   │   │   │   │   ├── GameServerService.java
│   │   │   │   │   │   ├── GameService.java
│   │   │   │   │   │   ├── impl
│   │   │   │   │   │   │   ├── GameRoleServiceImpl.java
│   │   │   │   │   │   │   ├── GameServerServiceImpl.java
│   │   │   │   │   │   │   ├── GameServiceImpl.java
│   │   ├── resources
│   │   │   ├── application.properties
│   │   │   ├── static
│   │   │   │   ├── apis-docs-by-sloth.html
│   │   │   │   ├── css
│   │   │   │   ├── fonts
│   │   │   │   ├── html
│   │   │   │   ├── js
│   │   │   ├── template
├── start.sh
├── stop.sh
```
- __Target Project Api Webpage__

![](https://raw.githubusercontent.com/coolcooldee/sloth/master/src/main/resources/static/images/demo1.png)

- __Demo__
http://www.dee1024.cc/apis-docs-by-sloth.html

Contributing
============
If you want to contribute code, we are waiting for your pull requests !

Author
======
* __Dee Qiu__ <coolcooldee@gmail.com>

Others
======
* __QQ Group__ 570997546

License
=======
Sloth is licensed under the Apache License, Version 2.0 (the "License");




