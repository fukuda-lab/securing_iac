locals {
  services         = ["frontend", "accounts/contacts", "accounts/userservice", "ledger/balancereader", "ledger/ledgerwriter", "ledger/transactionhistory"] # List of service paths as string
  application_name = "bank-of-anthos"                                                                                                                      # used for naming of resources
  cluster_names    = toset(["development", "staging", "production"])                                                                                       # used to create network configuration below
  network_name     = "shared-gke"     
}
