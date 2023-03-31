Jenkins:
````````
Declerative & scripted pipelines
1. What is pre-requisite for installing jenkins ? - Java & plugins (pipeline) to install after jenkins
2. What authentication method used in jenkins ?
  - Store user data and Credentials in an internal database.
  - Use the Authentication Mechanism defined by the application server on which it is deployed.
  - Authenticate against LDAP server.
3. How to integrate jenkins ui with oidc ?
4. How do u authenticate Git from jenkins to scan the branches/other related repos ?
5. Have you ever setup a build job ? Explain steps.
6. Declerative Jenkins 
7. Parameter based pipelines 

7. Jenkins File Structure
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
8. Multi-Branch Pipeline
9. How to set Env variable while installing Jenkins ?
10. How to pass Variables like - Max memory allocation for Jenkins instance ?
11. How to set user input in a pipeline ?
12. 
 
Goovy:
``````
o Explain how to run groovy script ?
o Why you need groovy script ?
o How to include a groovy script in another groovy script ?
