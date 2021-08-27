package policy["com.styra.kubernetes.validating"].rules.rules

not_configured[decision] {
  parameters := {
    "required": {
      "mylabel": {
        "x"
      }
    }
  }

  data.library.v1.kubernetes.admission.metadata.v1.missing_label[message]
    with data.library.parameters as parameters

  decision := {
    "allowed": false,
    "message": message
  }
}
