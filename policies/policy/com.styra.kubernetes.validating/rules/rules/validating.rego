package policy["com.styra.kubernetes.validating"].rules.rules

d := data.global.data.required_labels
enforce[decision] {
  parameters := {
    "required": {
      "mylabel": {
        "x"
      }
    }
  }

  data.library.v1.kubernetes.admission.metadata.v1.missing_label[message]
    with data.global.data.required_labels as parameters

  decision := {
    "allowed": false,
    "message": message
  }
}
