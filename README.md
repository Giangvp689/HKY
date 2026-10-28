<!-- <h2 align="center"> Boarding-House Finding Website </h2> -->
<h2 align="center"> Boarding-House Finding Website </h2>
<p align="center">
  <strong align="center"><i>Simple & Easy to find boarding-house!<i></strong>
  <br>
  <a href="http://it4552-group5-trohn.000webhostapp.com/">
     <img alt="Qries" src="https://github.com/manhminno/Tim-Kiem-Nha-Tro/blob/master/images/favicon/favicon.png" width=70" height="70">
  </a>
  <br>
  <strong><a href="http://it4552-group5-trohn.000webhostapp.com/">View Demo</a></strong> |
  <strong><a href="https://github.com/manhminno/Tim-Kiem-Nha-Tro/issues">Report Bug</a></strong>
</p>

## Table of Contents  
#### [1. Introduction](#headers)
#### [2. Getting started](#getting)   
#### [3. Usage](#usage) 
#### [4. Reference](#reference) 
#### [5. Contributors](#contributors)
#### [6. Licence](#licence)
<br>
<a name="headers"/>

### 1. Introduction
#### Finding a boarding-house is not easy for college students. You don't know where to look for boarding-house's information. You worry about the location of boarding-house, you worry about the price of boarding-house, ...
&#8658; Don't worry, come to our website, all problems will be solved!
<br><br>
<a href="http://it4552-group5-trohn.000webhostapp.com/">
   <img alt="Qries" src="https://github.com/manhminno/Tim-Kiem-Nha-Tro/blob/master/images/demo_img.png">
</a>
You can easily find the boarding-house you want. The interface is easy to use, information is very clear. <a href="https://github.com/manhminno/Tim-Kiem-Nha-Tro/issues">Try it now!</a>
> **_NOTE:_** Here I am building a website for finding boarding-house in Hanoi, Vietnam. And website's language is Vietnamese. But you can clone repository and edit the source code and database to match what you want. To do this, go to part 2: getting started.

<a name="getting"/>

### 2. Getting started
* About our project, we use:
  * PHP
  * JavaScript
  * HTML/CSS
  * Bootstrap
  * MySQL
* Installation: XAMPP (7.3.25+)
* How to run:
  * After installing XAMPP, change the port in the apache config file and mysql config file to the port in your computer that is empty. I'm using port 3306.
  * Clone this repository and move it into C:\xampp\htdocs\
  * Run Apache and MySQL in XAMPP
  * Project will run on http://localhost/
<a name="usage"/>

### 3. Usage
* Open phpMyAdmin and access to mysql then import database from */database/id15771106_nha_tro_db*
* Fix database's name in file: */controller/connectToDatabase.php* 
```
$conn = mysqli_connect("localhost", "root", "", "id15771106_nha_tro_db");
```
  - root: if u run on local
  - ""  : password to access your database, here is none password
  - id15771106_nha_tro_db: database's name which you want connect
<a name="reference"/>

### 4. Reference
- <strong><a href="https://www.php.net/docs.php">PHP Documentation</a></strong>
- <strong><a href="https://dev.mysql.com/doc/">MySQL Documentation</a></strong>
- <strong><a href="https://www.000webhost.com/forum?__cf_chl_jschl_tk__=6b2796a0c57ee71b0deb43a53f4b76e7cd3b306e-1609165637-0-AZrHidyVU1yDsgpS_L4Gs6SaDQZCLR3xQfMlG2NRYzRvfJfof9MjPv-P8srLUaHqI8_9rSkjLiuPPAON95_r0a1UdY7r4QUArnPln1mqtzXs-uL2SpBgrzoShdA4rYM5EDLSX3_NXaulHtDA-Sa9Vprz5XHjca6vAd4SwRzfrrc5uprWSp99qP-sQueS7hahWbbhGjHsQI_GPSSnwfnG6sVfOgkTkUSVx9SxqihUfNNBhCdGt1CXhKCjRR0iR8mV0iSxIMOJj_RQpq7Cz0a9gkpj4zp-eO3PeJRXjz0XoVNszoxdLeeDCUZcyM_RufTyWw">Deploy with 000webhost</a></strong>
- <strong><a href="https://www.ionos.com/digitalguide/server/tools/xampp-tutorial-create-your-own-local-test-server/">XAMPP Tutorial</a></strong>
<a name="contributors"/>

### 5. Contributors
<p>
  <a href="https://github.com/manhminno/Tim-Kiem-Nha-Tro/graphs/contributors">
    <img src="https://contrib.rocks/image?repo=manhminno/Tim-Kiem-Nha-Tro" />
  </a>
    <strong><a href="https://github.com/manhminno">NV.Manh</a></strong> 
    <strong><a href="https://github.com/20176787">LN.Huy</a></strong>
    <strong><a href="https://github.com/anhdunyb99">NA.Dung</a></strong>
    <strong><a href="https://github.com/blackman2xxx">BA.Tu</a></strong>
</p>
<a name="licence"/>

### 6. Licence
* <strong><a href="https://opensource.org/licenses/MIT">MIT License</a></strong>

