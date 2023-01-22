# ARM Template Test Toolkit as a Docker image

[Azure Resource Manager Template Toolkit (arm-ttk)](https://github.com/Azure/arm-ttk) is a set of PowerShell scripts
to validate ARM templates as well as related resources (e.g. `createUiDefinition.json`). In order to make it more
convenient to use, especially in the context of CI/CD, this repo creates a Docker image that contains the scripts.

Integrating the validation process in your CI/CD process is especially useful when you are creating Managed Applications
for the Azure Marketplace. Before your submission is approved, it will be evaluated against best practices and 
recommendations. If you add arm-ttk validation to the CI/CD pipeline of your Managed Application, submissions will go through
much more smoothly, saving you from time-consuming back-and-forth between you and the Microsoft staff that validate
your application.
