## Terrafile
https://github.com/coretech/terrafile

```shell
brew tap coretech/terrafile && brew install terrafile
```
```shell
curl -L https://github.com/coretech/terrafile/releases/download/v{VERSION}/terrafile_{VERSION}_Linux_x86_64.tar.gz | tar xz -C /usr/local/bin
```

## Minikube
```shell
brew install minikube
minikube start --driver=docker --download-only
```

## Pre-commit
```shell
brew install pre-commit
pre-commit installed at .git/hooks/pre-commit
```
```shell
pip install pre-commit
pre-commit installed at .git/hooks/pre-commit
```

## State manipulation
```shell
terraform state list
terraform state rm ${state_item}
```

## Running terraform in automation
```shell
terraform plan -out=tfplan
terraform apply -input=false tfplan
```

## Workspace
Create and use a test workspace and after that make a prod one with differences

## external module
Try to use the external module referenced in the terrafile and get it to work

## external state
Try to install postgres and store your state there
https://artifacthub.io/packages/helm/bitnami/postgresql

## for loop
Create a map and use a for loop to fill a local variable (string)

## import
Manually create a local file and import it into the state