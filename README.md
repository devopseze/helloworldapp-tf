# Terraform

## propose
The propose of this repository is to create an small environment in AWS to deploy an Flask aaplication over ECS.
For this project I used as base the examples shared by (Edward Viaene)[https://github.com/wardviaene/terraform-course]

## Decisions:
Docker image: why "python:3.7.2-alpine3.7"?
> It is an updated and it is an official docker image by Docker hub, (link)[https://hub.docker.com/_/python]. The Version based on Alpine brings an reduced basic image size to 80MB. It was almost 900MB on basic one.

Why create VPC/SUBNETS/Cluster/IAM and rest of infrastructure Terraform.
> Infra as Code, as much we can it must to be incentivated.
> To guarantee the minimal infrastructure was used for this project.
> Maybe a bigger step than the objective requires, but is I think is better try to do the best than just have a permanent `improvised environment`

Why to create public and private subnets:
> Using network layers letting the front applications aparted of back ones expose less the core services and only exposes what must to be shown for the world 0.0.0.0/0.
> Let each layer responsible for its issues, it reducess configuration mess.

## Before execute Terraform:
You should to create the docker image in yout PC or CICD application (such Jenkins), so, please execute the build before. Command:
```bash
docker build --tag helloworldapp .
```

## Next steps
Organization: Review the structure and put apparted the infrastructure from deploy. It should granulate the project and improve the reuse.
Technologies: Even the ECS can be cheapest of Kubernets at the beggining, it should be good move it to Kubernets considering the Kubernets standards are use for different providers besides, since local environment, on-premises (e.g. EKD and OpenShift), and other cloud providers (GCP,Azure,Digital Ocean, etc).
Monitoring: Add a monitoring agent on docker image to, besides keep watching the application health, support future hardening and fine tunnings.

## Notes: 

Note: It was necessary to add the bind information in python to receive requests out of docker environment.
Note 2: I propositally update `terraform.tfvars`, you must to update this file before try to execute it.
Note 3: Repository in constant update(even I recently created it). I just liked Terraform but also intends use some other technologies to improve this case. 

