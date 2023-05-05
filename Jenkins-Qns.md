Jenkins:
````````
1. What is pre-requisite for installing jenkins ? - Java & plugins (pipeline) to install after jenkins
2. What authentication method used in jenkins ?
  - Store user data and Credentials in an internal database.
  - Use the Authentication Mechanism defined by the application server on which it is deployed.
  - Authenticate against LDAP server.
3. How to integrate jenkins ui with oidc ?
4. How do u authenticate Git from jenkins to scan the branches/other related repos ?
5. Have you ever setup a build job ? Explain steps.
6. Declerative Jenkins Pipelines ?
7. Parameter based pipelines 

8. Jenkins File Structure
	Properties:
		parameters: Define Functions
	node{
		def variables
		stage('prepare')
		
		stage('checkout')
		stage('build')
		stage('deploy')
		stage('postdeploy')
	}

	* Jobs: Install plugins & write job. Define jenkins flow (Declarative/Script)
9. Multi-Branch Pipeline
10. How to set Env variable while installing Jenkins ?
11. How to pass Variables like - Max memory allocation for Jenkins instance ?
12. How to set user input in a pipeline ?
13. Difference between Declerative & scripted pipelines ?
14. How do I copy the jenkins Jobs from 1 jenkins server to another jenkins server ?
15. How do we change the port on which jenkins is running ?


 
Goovy:
``````
o Explain how to run groovy script ?
o Why you need groovy script ?
o How to include a groovy script in another groovy script ?
