resource "aws_kms_key" "default" {
  description             = "Ganesh KMS Key for EBS "
  policy = "${data.aws_iam_policy_document.default.json}"
  deletion_window_in_days = 10
}

resource "aws_kms_alias" "ebs" {
  name = "alias/aws/ebs"
  target_key_id = "${aws_kms_key.default.key_id}"
}

data "aws_iam_policy_document" "default" {
  statement {
    sid = "Enable IAM User Permission"
    principals { 
      type = "AWS"
      identifiers = [
        "arn:aws:iam::293710235542:root"
       ]
     }
    actions = [
      "kms:*"
    ]

    resources = [
      "*"
    ]
}
}



