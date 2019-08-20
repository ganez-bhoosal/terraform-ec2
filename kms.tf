resource "aws_kms_key" "default" {
  description             = "Ganesh KMS Key for EBS "
  policy = "${data.aws_iam_policy_document.default.json}"
  enable_key_rotation = true
}

resource "aws_kms_alias" "ebs_custom" {
  name = "alias/ganesh"
  target_key_id = "${aws_kms_key.default.key_id}"
}

data "aws_iam_policy_document" "default" {
  statement {
    sid = "Enable IAM Root Permission"
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
  statement {
    sid = "Enable IAM User Permission"
    principals {
      type = "AWS"
      identifiers = [
        "arn:aws:iam::293710235542:user/iam-user"
       ]
     }
    actions = [
                "kms:Create*",
                "kms:Describe*",
                "kms:Enable*",
                "kms:List*",
                "kms:Put*",
                "kms:Update*",
                "kms:Revoke*",
                "kms:Disable*",
                "kms:Get*",
                "kms:Delete*",
                "kms:TagResource",
                "kms:UntagResource",
                "kms:ScheduleKeyDeletion",
                "kms:CancelKeyDeletion" 
    ]
}
}


