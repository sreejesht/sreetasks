sudo yum install -y unzip curl
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo yum install ./AWSCLIV2.pkg
aws --version

