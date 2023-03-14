# Replace this with your state backend of choice.
terraform {
  backend "s3" {
    # This bucket has been created manually.
    # To use S3 backend, create a bucket on your account and
    # change the bucket name below.
    bucket = "lla-rpa-rc-tf"
    key    = "terraform.tfstate"
    region = "us-east-1"
    access_key = "ASIA5OMRNC2JTIGNVQBH"
    secret_key = "8Xf8Fy7Cl0/d8SQTJTQVq04Xol7SYz2vfnxEWdEQ"
    token = "IQoJb3JpZ2luX2VjEBoaCXVzLWVhc3QtMSJIMEYCIQC6eJyYvXGHGFY65Ghrxx1CinldvqLo8pFkEOl94lCPhgIhAP5+YlmhzqSGl1odI3OEVpE1motRP6gUs/vyRGCmF1ohKqQDCNP//////////wEQABoMOTI0MjU5Nzg0MzM5Igx4ZSOpQq6BIfsMZyEq+AJt0zLF3b5KcF2MTPffM0bZMOfHXsPbatL4xwGrdWW298K41vtWUcipiXDVxPDtfDnd0Xb37LJFSwvIaw1yITfZX3hyZJUTwc8cjNZ238hMw3xo6u0gIZLl2lLcq7LKksDUJoEQmBLmGLS1DeUzzFkjxtpnQIBL2xNAMv3V1vlNDmHssdUaLmKXlnTVvWiAmlmFyMyrlGUOvL78HOQeQDgAB4ck8+MHS8XiRYpDad6qc0AX5vBbrAnCmmRvUGMPD1GVeB6IA21M4+gWD20iHkoRXVDKw5S5pshpH9X/tK2X1us9ERkPk2bghOQHPl/OOCrf2syIte/CUUWxrKGrG5rSvlOxd/FpGut+M70SDuyDIG43C6Vsi3Y/Yjrj070uMD/cP5mypTjIHK2zQIu0N6X3lsaRIQ1e6aKfVpsZvss/ynhJ70YsvOR+vdaPOhlg4DbHOyTt2QTIrFWiADvFNv5OTrI9Oi3GuXX00EbHpElxjrTYaTwsUz5xMKmLwaAGOqUBlipWC6yYR8uZbtEZzsyBCEbWWgH5E5KzkUjdwlAGZm9cTgTMbPed5ntpwGeOtK+cLkV5SKDlxHHVZoDsB8Hg9i3VEE1OSXDCl/W15jmS+j+uJvf3mevjuMYsvaxOWnSiXyZKYtC2gDecBmxqMNHrG4/Ie+1mDk+vjHVbd7xi4yCJTWLXFmrDA5CMegQDYHw0cOZERaPBBLQuppl0Vape4GPA/zxV"


  }
}
