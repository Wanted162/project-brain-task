# Create the setup-cicd.sh file in root directory
cat > setup-cicd.sh << 'EOF'
#!/bin/bash
echo "CI/CD Setup Script for Brain Tasks App"
echo "======================================"

# This script will be used after cluster is ready
echo "Cluster: brain-task-cluster"
echo "Region: ap-south-1" 
echo "ECR: 907969929387.dkr.ecr.ap-south-1.amazonaws.com/brain-tasks-app"

echo ""
echo "Next steps after cluster creation:"
echo "1. Configure kubectl: aws eks update-kubeconfig --region ap-south-1 --name brain-task-cluster"
echo "2. Deploy application: kubectl apply -f k8s/deployment.yaml"
echo "3. Create service: kubectl apply -f k8s/service.yaml"
echo "4. Check deployment: kubectl get all"
echo "5. Get LoadBalancer URL: kubectl get service brain-tasks-service"
EOF