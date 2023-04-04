# commons-infra
I've deployed commons infra to one environment. That's production environment for example. This repository contains best practices like main remote state, feature remote states, naming infra and among others.
My friend Andres Ruiz is 

## Best Practices
### Naming Infra
Each infra component has a name with follow IDs structure:

- Cloud provider (az, aws, gcp)
- Project letter (id,fj,ac)
- Environment letter (prd, stg, dev)
- Component (rg,stac,snet)
- Feature (state,common,payments)
- Region (e2 for East US 2)
- Consecutive (000,001,002)

If cloud provider doesn't support middle dash (-), it will be avoided (ie: aztfprdstacstatee2000).

### Cost Tags
All infra component contain Cost Tags. That's a best practice to join and identify components for:

- Company
- Technical unit
- Project
- Environment
- Confidentiality
- Impact
- Owner

It allows to review monthly cost, evaluating and planning from business layer.  There are both general tags (at first line in terraform.tfvars) and component tags (at component vars in terraform.tfvars)

### File Structure
Each feature in terraform project has:

- main.tf: provider, backend, subscription and resourceGroup
- variables.tf: general and feature variables with type and description
- terraform.tfvars: variable values
- output.tf: output to other feature terraform
- remote_states.tf: input from other feature remote states
- {feature}.tf: infrastructure by topic

Each file contains comments for reader's guide.

### Common and Feature Terraform Infra
I have divided Terraform Infrastructure (IaC) into two different approaches:

- Common: state, networking
- Feature: cluster, key_vault, agent, cache, etc

### Split Remote State
Both common and feature Terraform Infra have their own terraform.state. This state is saved in Azure Container in the following tree structure:
-  key = "{project}/{common/feature}/terraform.state"


## Terraform Infra
### Step 1: State Terraform Infra > Remote State {./state}

- [x] Add StorageAccount and StorageContainer
- [x] Create Main RemoteState
- [x] Migrate Main RemoteState

### Step 2: Network Terraform Infra > NSG, DNS_Zone, Protection (Ddos)

- [x] Add Vnet and Subnets
- [x] Add NSG
- [x] Add DNS Zone (privateEndpoints, privateLinks, etc)
- [x] Add Protection like Ddos (optional)

### Step 3: Cluster Terraform Infra

- [x] Add ApplicationGateway
- [x] Add private AKS
- [x] Add ACR
- [x] Add PIP

### Step 4: Service Principal

- [x] Create Service Principal to AzureDevOps

### Step 5: Agent Terraform Infra

- [x] Add Agent to AzureDevOps
- [x] Connect and Config Agent

## Azure DevOps
### Step 1: Add Agent Pool and Agent

- [x] Add Agent Pool
- [x] Add and Config Agent
- [x] Check and Run Agent

### Step 2: Add Service Connection

- [x] Add Service Connection: Azure Resource Manager 

### Step 3: Create Repository

- [x] Add first-filter repository

## Angular, SonarQube, Pipeline, Heml Deployment
### Angular and SonarQube

- [x] Run project: ng s
- [x] Testing: ng test --codeCoverage
- [x] Report to SonarQuebe: sonar-scanner
- [x] Check report

### AzureDevOps Pipeline
- [x] Create pipeline yml
- [x] Create Library with variables in AzureDevOps
- [x] Create Stage to Build Artifact
- [x] Create Stage to ContainerRegistry Image
- [x] Create Stage to Helm Deployment
- [x] Create Stage to Kubernetes Cluster rollout

### Helm charts
- [x] Create deployment
- [x] Create service
- [x] Create ingress
- [x] Create hpa

### Git and Pull Request
- [x] New git branch and commit
- [x] Crate pull request

### Create Pipeline in AzureDevOps
- [x] Create pipeline
- [x] Run pipeline

## Result
- [x] Check result on line (FrontEnd)- ./evidence/Result_Angular_K8S.png
