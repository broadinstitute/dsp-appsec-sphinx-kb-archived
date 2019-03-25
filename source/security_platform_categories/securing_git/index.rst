Securing Git/Github
===================


.. contents::

So you want to make a new service? Great! A few things to get started:

* Make sure you create an initial design document, a template can be found `here <https://docs.google.com/document/d/1DXvkL8NcmIDMAwN1_tB0RgQO6XJr0jf6xKiRXf2I3nQ/edit#heading=h.m9sgzsze7pd7>`__
* Make sure to go through all items in the following questionnaire and have all the necessary documentation before meeting with security/devops
* Make sure to setup a security/devops architecture review session with security and devops
* Make sure



Please make sure you have the following things in your code:

Prevent committing secrets into git repositories - Client-Side
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Do you have a /status endpoint? to prevent any secrets that we might accidentally commit to the GitHub repository, we may want to use the git-secrets developed by
the awslabs for our repository to keep safe during development.



Detecting commited secrets into git repositories - Server-Side
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Multiple instances of your code can be run at one time without conflicts.



Repository Integrity With Signed Commits
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Does your code log out?




References
~~~~~~~~~~
* https://cloudplatform.googleblog.com/2017/07/help-keep-your-Google-Cloud-service-account-keys-safe.html
* https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work

