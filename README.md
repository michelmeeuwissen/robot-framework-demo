#Robot framework demo
****

Automated Testing within the Continuous Integration is nowadays a no brainer.
This project shows you examples how Robot Framework can help you with setting up automated test.

Almost all test are setup to test the simple web application Square Roots. Which you can find here:

[Square Roots](http://ict.rocks/squareroots)


####How To Start

To run the test the following steps should be followed:

+   Make sure at least [Python 2.7](https://www.python.org/downloads/release/python-2712/) is installed:
    ```
        $ python -V
        e.g. : Python 2.7.11+
    ```
+   Also make sure Python's [Pip](https://pypi.python.org/pypi/pip) is installed (should be default installed):
    ```
        $ pip -V
        e.g. :  pip 8.1.1 from /usr/lib/python2.7/dist-packages (python 2.7)
    ```
+   Maybe you already did this, but you should also clone this GitHub to your favorite development location

+   Now we know that Pip and Python are installed we can install (or update) all required python packages that are needed to run the Robot tests.
    To install the packages run the following command in the root of the just cloned version of this GitHub:
    ```
        $ pip install -r python-package-requirements
    ```

+   If the installation of all required packages succeed you are good to go:
    ```
        $ python -m robot.run --version
        e.g. : Robot Framework 3.0 (Python 2.7.12 on linux2)
    ```

+   **Help?** Of course there are 1001 options to install or run Robot. See [this](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst) page for more info and please check the [same](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst) page if you are in trouble during the installation.

##### Run the tests

*TODO*






