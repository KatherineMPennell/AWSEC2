locals {
  #this_id                           = "${compact(concat(coalescelist(aws_instance.this.*.id, list("")))}"}
  #this_id                           = "${compact(concat(coalescelist(aws_instance.this.*.id, aws_instance.this_t2.*.id), list("")))}"}
}

output "id" {
  description = "List of IDs of instances"
  value       = [aws_instance.this.*.id]
}

