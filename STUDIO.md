## Getting Started with Watson Studio

Watson Studio is IBM's hosted Notebook Service, and is available by obtaining a free account at https://www.ibm.com/cloud/watson-studio.  Once you have created an account and logged in, you can begin by creating a project and notebook.

### Creating a Project and Importing a Notebook

Once you have logged in, you will see *IBM Watson* at the upper left corner.  To create a new Project, click the "*Projects*" tab, and select the "New Project" button.  The page for creating a new project should look like Figure 

should see a browser tab open that looks like this

![ch2NewProjectPage](images/ch2NewProjectPage.png)

You can name the project whatever you like.  Here we named it *DSatEnterpriseScale* because the github repository has the same name.  A project is a place for storing (among other services) notebooks and data.  Once the Project is created, you can go to the *Assets* tab and see what is available to you, as shown in the figure below.  For the purposes of this text, only Data assets and Notebooks will be used. 

![ch2AssetsPage](images/ch2AssetsPage.png)


#### Creating Spark Environments

By default, the Apache Spark environments that we will want to use are not available, so we will need to create these environments.  Some examples will be in scala and some will be in python, so we will create these two environments. 

*Creating an environment definition:*
* From the Environments tab in your project, click _New environment definition_.

* Enter a name and a description.  

* Select the environment type:  either Python 3.5 or Scala.  You will need to create both environments.

* Select at least 3 executors for each environment


#### Creating Your First Notebook

Click the *New notebook* tab from the Project Page  You can import this notebook directly from the github repo, or download the notebook and import it as a file.  You can also create a new notebook from scratch.  If you create it from scratch, you will need to specify the environment (Python 3.5 and Spark 2.3).  If you import the notebook, you may need to manually change the kernel.  If the notebook is imported, a security feature will prevent you from running the notebook until you mark it as a "trusted" notebook.

Once the notebook environment is created, you should be able to run code within the cells.  The first two cells are shown in the figure below.  The second cell will not run correctly if the Spark environment is not set up properly.  It is important to verify that your Spark Context exists in order to run the examples effectively.  A correctly initialized Spark Context will return the output as shown in the figure below.

![ch2WatwonMultinomialFirstTwoCells](images/ch2WatsonMultinomialFirstTwoCells.png)

You can run each cell (including markdown cells) with `Ctrl + Enter` or `Shift Enter` to see the results of each calculation.  





