output "nag-maste_public_ip" {
  value = [aws_instance.nag-master.public_ip]
}

output "nag-node1_public_ip" {
  value = [aws_instance.nag-node1.public_ip]
}
