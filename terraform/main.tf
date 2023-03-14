terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider aws {
  region = var.aws_region
  access_key = "ASIA5OMRNC2JTIGNVQBH"
  secret_key = "8Xf8Fy7Cl0/d8SQTJTQVq04Xol7SYz2vfnxEWdEQ"
  token = "IQoJb3JpZ2luX2VjEBoaCXVzLWVhc3QtMSJIMEYCIQC6eJyYvXGHGFY65Ghrxx1CinldvqLo8pFkEOl94lCPhgIhAP5+YlmhzqSGl1odI3OEVpE1motRP6gUs/vyRGCmF1ohKqQDCNP//////////wEQABoMOTI0MjU5Nzg0MzM5Igx4ZSOpQq6BIfsMZyEq+AJt0zLF3b5KcF2MTPffM0bZMOfHXsPbatL4xwGrdWW298K41vtWUcipiXDVxPDtfDnd0Xb37LJFSwvIaw1yITfZX3hyZJUTwc8cjNZ238hMw3xo6u0gIZLl2lLcq7LKksDUJoEQmBLmGLS1DeUzzFkjxtpnQIBL2xNAMv3V1vlNDmHssdUaLmKXlnTVvWiAmlmFyMyrlGUOvL78HOQeQDgAB4ck8+MHS8XiRYpDad6qc0AX5vBbrAnCmmRvUGMPD1GVeB6IA21M4+gWD20iHkoRXVDKw5S5pshpH9X/tK2X1us9ERkPk2bghOQHPl/OOCrf2syIte/CUUWxrKGrG5rSvlOxd/FpGut+M70SDuyDIG43C6Vsi3Y/Yjrj070uMD/cP5mypTjIHK2zQIu0N6X3lsaRIQ1e6aKfVpsZvss/ynhJ70YsvOR+vdaPOhlg4DbHOyTt2QTIrFWiADvFNv5OTrI9Oi3GuXX00EbHpElxjrTYaTwsUz5xMKmLwaAGOqUBlipWC6yYR8uZbtEZzsyBCEbWWgH5E5KzkUjdwlAGZm9cTgTMbPed5ntpwGeOtK+cLkV5SKDlxHHVZoDsB8Hg9i3VEE1OSXDCl/W15jmS+j+uJvf3mevjuMYsvaxOWnSiXyZKYtC2gDecBmxqMNHrG4/Ie+1mDk+vjHVbd7xi4yCJTWLXFmrDA5CMegQDYHw0cOZERaPBBLQuppl0Vape4GPA/zxV"


}

module ecs_cluster_1 {
  source = "./modules/ecs-cluster"
  id = "${var.id}-cluster-1"
}

resource "aws_ecr_repository" "worker_images" {
  name                 = "${var.id}-worker-images"
  // For optimum robot start speed we want to cache the images on EC2,
  // machines, immutable tags help avoid invalidation challenges.
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
