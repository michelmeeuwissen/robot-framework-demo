#Robot framework demo
****

Automated Testing within the Continuous Integration is nowadays a no brainer.
This project shows you examples how Robot Framework can help you with setting up automated test.

Almost all test are setup to test the simple web application Square Roots. Which you can find here:

[Square Roots](http://squareroots.jdriven.com)


### How To Start

To run the tests the following steps should be followed:

+   Make sure at least [Python 2.7](https://www.python.org/downloads/release/python-2712/) is installed:

    ```
        $ python -V
        e.g. : Python 2.7.11+
    ```
+   Also make sure Python's [Pip](https://pypi.python.org/pypi/pip) is installed (Normally it should be installed when Python is installed):

    ```
        $ pip -V
        e.g. :  pip 8.1.1 from /usr/lib/python2.7/dist-packages (python 2.7)
    ```
+   Maybe you already did this, but you should also clone this GitHub to your favorite development location

+   Now that we know that Pip and Python are installed we can install (or update) all required python packages that are needed to run the Robot tests.
    To install the packages run the following command in the root of the just cloned version of this GitHub:
    ```
        $ pip install -r python-package-requirements
    ```

+   If the installation of all required packages succeed you are good to go:
    ```
        $ python -m robot.run --version
        e.g. : Robot Framework 3.0 (Python 2.7.12 on linux2)
    ```

+   Before we can run the Selenium test suites within this project we need to install Firefox because the tests are setup to run under Firefox. A Selenium Driver for Firefox is not needed.

+   **Help?** Of course there are 1001 options to install or run Robot. See [this](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst) page for more info and please check the [same](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst) page if you are in trouble during the installation.

### Run the tests
Running the tests is very easy:
```
    $ python -m robot.run testsuites
```    
`testsuites` is in this case the folder where the tests are located


To run a part of your test suite you can add a tag name to your command line:
```
    $ python -m robot.run --include behavior-driven testsuites
```    
With the above commands we the test suites , or test cases with the `behavior-driven` tag. To exclude tests you can use the `--exclude` parameter

See `$ python -m robot.run --help` for more information





