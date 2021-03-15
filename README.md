# Robotframework 
---

E2E testing project with Robotframework


### Getting Started

How to install Robot Framework on Mac OS:


- Install python 3

Download python 3 [Click here](https://www.python.org/downloads/)


To verify the successful installation of python 3, Run below command:

```console
$ python3 --version
```


- Install Robot Framework

```console
$ pip3 install robotframework
```


- Install Browser Library - Follow installation instructions [Click here](https://github.com/MarketSquare/robotframework-browser)



### Supported Browsers

- CHROME
- FIREFOX


### Variable Parameters

- Choose browser such as chromium, firefox
```
-v BROWSER:chromium
```

- Set headless mode
```
-v HEADLESS:false
```

- Choose environment such as qa, prod 
```
-v ENV:qa
```


### Running the Tests

- Run all tests

```console
$ robot -d ./logs -v BROWSER:chromium -v HEADLESS:false -v ENV:qa tests/
```


- Run tests by tag

```console
$ robot -d ./logs -i smoke -v BROWSER:chromium -v HEADLESS:false -v ENV:qa tests/
```


### Open Report

```console
$ open logs/report.html
```
