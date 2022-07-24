#! /bin/bash
# ^ shebang

# installing apache with yum installer, I could have done sudo su to not have sudo in front of every command
# -y to say yes, httpd.x86_64 is the package name
sudo yum install -y httpd.x86_64
# starting httpd (apache)
systemctl start httpd.service
# enabling the service
systemctl enable httpd.service
# creating the index.html file by giving it a DOM element
echo "<h1>AWS Proficiency Exercise</h1>" > /var/www/html/index.html