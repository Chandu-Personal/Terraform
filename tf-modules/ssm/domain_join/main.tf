resource "aws_ssm_document" "join_domain" {
    name            = "domain_join"
    document_type   = "Command"
    tags            = "${var.tags}"
    #content         = "${data.template_file.join_domain_template.rendered}"
    document_format = "JSON"
    content         = <<DOC
    {
        "schemaVersion": "2.2",
        "description": "Configuration to join an instance to a domain",
        "mainSteps": {
           "aws:domainJoin": {
               "inputs": {
                  "directoryId": "${var.directoryId}",
                  "directoryName": "${var.directoryName}",
                  "directoryOU": "${var.directoryOU}",
                  "dnsIpAddresses": ["${var.directory_ips[0]}","${var.directory_ips[1]}"]
               }
           }
        }
    }
DOC
}


/*data "template_file" "join_domain_template" {
    template            = "${file("../../../../modules/templates/domain-join.tpl")}"
    vars    {
        directoryId     = "${var.directoryId}"   
        directoryName   = "${var.directoryName}"
        directoryOU     = "${var.directoryOU}"
        dnsIpAddress1   = "${var.directory_ips[0]}"
        dnsIpAddress2   = "${var.directory_ips[1]}"
    }
}*/

resource "aws_ssm_association" "associate_instance" {
    name        = "${aws_ssm_document.join_domain.name}"
    targets     = {
        key     = "InstanceIds"
        values  = ["${var.instance_ids}"]
    }
}