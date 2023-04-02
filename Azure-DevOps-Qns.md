
#### 1. What is Variable Group ?
##### 1.1 Types of Variables ? [Link](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops&tabs=yaml%2Cbatch#understand-variable-syntax)
   * User-Defined Variable:
   * User-Defined Multiline Variable
   * System variables: Build.Clean | Syste.AccessToken | System.Debug etc. [Link](https://learn.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azure-devops&tabs=yaml) 
   * Environment Variables
##### 1.2 Types of Scope of Bvariable:
   * Global Scope
   * Job lavel Scope
   * Task label Scope
#### 2. How to select Approver & Reviewer dynamically ?
#### 3. How to configure parallel jobs ?
#### 4. How to define dependency of current task on previous task ? ( Sequential Job )
#### 5. What is self-hosted & windows-hosted agent ?
#### 6. What is a deployment group ? [Link](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/deployment-groups/?view=azure-devops)
   * Its a logical set of deplpyment target machines, which represent dev/int/prod env.
   * New Deployment group --> Type (Windows/Linux) --> Run the generated Registration Script on target ==> Registration done 
#### 7. What is an Environment ? [Link](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/environments?view=azure-devops)
   * An environment is a collection of resources that you can target with deployments from a pipeline 
   * Configuring AKS & specific namespavce for Env -> More convenient with `Environment` than `Deployment Group`. 
   * While creating Pipeline select environment & 
#### 8. 
