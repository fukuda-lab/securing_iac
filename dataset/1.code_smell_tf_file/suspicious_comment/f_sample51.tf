// Next Helm module cause "terraform destroy" timeout, unless helm release would be deleted first.
// Therefore "helm delete --purge agones" should be executed from the CLI before executing "terraform destroy".
