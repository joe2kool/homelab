# Homelab Project

This repository contains my personal homelab infrastructure, services, and documentation.

## Goals
- Full-stack development
- Infrastructure as Code (Terraform / HCL)
- Docker & container orchestration
- Cloud parity (AWS / Azure)
- Secure network segmentation

## Current Stack
- TP-Link BE550 (WiFi 7)
- Raspberry Pi (Debian 12)
- 1TB NAS-style storage
- Samba file sharing
- Docker (local + Pi)

ECR repo Url = 487123916271.dkr.ecr.us-east-1.amazonaws.com/lab-api
Tag = v1


$REGION="us-east-1"
$ECR_URL="487123916271.dkr.ecr.us-east-1.amazonaws.com/lab-api"
$IMAGE_NAME="lab-api"
$TAG="v1"
aws ecr get-login-password --region $REGION | docker login -


##ECS Fargate
Access: http://52.86.133.212:3000
Note: public IP can change when task restarts
How to resume: terraform apply -var="desired_count=1"