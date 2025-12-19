module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "devops-eks"
  cluster_version = "1.29"
  subnet_ids      = [aws_subnet.main_subnet.id]
  vpc_id          = aws_vpc.main_vpc.id

  eks_managed_node_groups = {
    nodegroup = {
      desired_size = 1
      max_size     = 1
      min_size     = 1
      instance_types = ["t3.micro"]
    }
  }
}
