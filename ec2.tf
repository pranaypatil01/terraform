resource "aws_instance" "new_instance" {
    
    ami  = var.ec2_AMI
  instance_type = var.ec2_type
  key_name = var.key_name
  associate_public_ip_address = true
  security_groups = var.ec2_sg
  subnet_id = var.vpc_subnet_1
    user_data = <<EOF
#!/bin/bash
sudo -i
apt update
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform -y
apt-get install apache2 -y
apt install unzip -y
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip
unzip little-fashion.zip
cd 2127_little_fashion
mv * /var/www/html/
apt install openjdk-11-jre-headless  -y
wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.zip
unzip apache-tomcat-8.5.100.zip
mv apache-tomcat-8.5.100 /opt/
sudo apt-get update
sudo apt-get install jenkins -y
EOF

  tags={
   Name = var.ec2_name
  }

}
