New Service Checklist
===================== 


.. contents::

So you want to make a new service? Great! Please make sure you have the following things in your code:

Your microservice and Github
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Do you have a /status endpoint?
	* Does it monitor real things like DB connections and other downstream dependencies?
		* **In Firecloud**: 
			* Deploying artifact: 
				* Your code can be compiled into a Docker. That means having a Dockerfile in your root. OR
				* Your code can be run in Google App Engine or Google Cloud Functions (serverless)
			* Any conf files that need to be used by the Docker at runtime should be in firecloud-develop repo. 
				* No secrets in these files! Use Vault!
				* Use Git-secrets to doublecheck!
				* Docker-compose file should be all set!
			* Put your Secrets in Vault
			* Make sure your application can run in `FIAB – Firecloud-in-a-Box <https://broadinstitute.atlassian.net/wiki/plugins/servlet/mobile?contentId=229212218#content/view/114755655>`__
				* And is in the fiab branch in Github
			* You have defined your necessary cloud resources and your Devops team knows (ie CloudSQL databases, bigquery tables, etc).
				* This is so security and permissions and deployment can be properly set


		*  **Independent of FC:** 
			* `Independent Deployment Services <https://broadinstitute.atlassian.net/wiki/plugins/servlet/mobile?contentId=229212218#content/view/114755655>`__ this is in progress so please consult a devops to see where we are on this.
			* Deploying artifact - you need one
				* Needs to deploy to GAE
				* OR be Dockerized with Dockerfile in Root
			* Confs need to be considered and should be templatized so we can inject secrets at deploytime
				* We prefer consul but will work with any template language (jinja, etc)
				* No secrets and few hardcodes!
			* If not using Docker/Kubernetes, include scripts in a /deploy folder
				* Should also be templatized
			* Use git-secrets in your repo
			* You have defined your necessary cloud resources and your Devops team knows (ie CloudSQL databases, bigquery tables, etc).
				* This is so security and permissions and deployment can be properly set
			* What kind of Test environment does it need? It's own FC? No FC? Make sure you've talked to Devops about how you intend to test against other projects so that can be wrapped.









Scalability
~~~~~~~~~~~


Logging
~~~~~~~



Instrumentation
~~~~~~~~~~~~~~~



Deployment
~~~~~~~~~~



Encryption 
~~~~~~~~~~



Authentication
~~~~~~~~~~~~~~



Authorization
~~~~~~~~~~~~~



Compliance
~~~~~~~~~~



Code Scans
~~~~~~~~~~



Other Security Considerations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
