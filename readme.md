# Terraform Project: AWS CodePipeline for CDK Deployment

This project provisions an AWS CodePipeline using Terraform to automate the deployment of an AWS CDK application. The pipeline consists of two stages: Source and Build.

## Architecture Diagram

![AWS Architecture Diagram](https://github.com/imshahidmahmood/deploy-backend-cdk-tf-pipeline-/blob/main/AWS%20CodePipeline%20Structure.drawio.png)

## Project Structure
    ├── .terraform
    ├── .gitignore
    ├── terraform.lock.hcl
    ├── codebuild.tf
    ├── codepipeline.tf
    ├── iam_roles.tf
    ├── outputs.tf
    ├── providers.tf
    ├── s3.tf
    ├── terraform.tfstate
    ├── terraform.tfstate.backup
    ├── terraform.tfvars
    └── variables.tf


### Files and Directories

- **`codebuild.tf`**: Configuration for AWS CodeBuild, which installs CDK and project dependencies using npm, and then deploys the CDK application.
- **`codepipeline.tf`**: Configuration for AWS CodePipeline, which manages the CI/CD pipeline.
- **`iam_roles.tf`**: IAM roles and policies required for the pipeline.
- **`outputs.tf`**: Outputs for the Terraform stack.
- **`providers.tf`**: Provider configurations (e.g., AWS).
- **`s3.tf`**: S3 bucket configuration for storing the artifacts.
- **`variables.tf`**: Input variables for the Terraform configuration.
- **`terraform.tfvars`**: Variable values for the Terraform configuration.

## Pipeline Overview

### Source Stage

- **AWS CodeStar Connection**: The pipeline uses AWS CodeStar Connection to link to the GitHub repository.
- **Trigger**: The pipeline is triggered when tags matching the pattern `deploy-*` are pushed to the repository.

### Build Stage

- **AWS CodeBuild**: This stage installs the AWS CDK and project dependencies using npm. After installation, the CDK application is deployed.

## Deployment

To deploy this pipeline, ensure you have the following prerequisites:

1. **AWS Account**: Ensure you have an active AWS account with the necessary permissions.
2. **Terraform**: Install [Terraform](https://www.terraform.io/downloads).
3. **AWS CLI**: Install and configure the [AWS CLI](https://aws.amazon.com/cli/).
4. **AWS CDK**: Install the [AWS CDK](https://docs.aws.amazon.com/cdk/latest/guide/cli.html).

### Steps to Deploy

1. **Initialize Terraform**:
    ```bash
    terraform init
    ```

2. **Review the Plan**:
    ```bash
    terraform plan
    ```

3. **Apply the Terraform Configuration**:
    ```bash
    terraform apply
    ```

4. **Cleanup**:
    To remove all resources created by this project, run:
    ```bash
    terraform destroy
    ```

## Contributing

Feel free to open issues or submit pull requests if you find any mistake or have suggestions for improvements.
