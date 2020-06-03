// Tip: Centralize providers at top level, not in individual modules. Otherwise renaming modules is cumbersome. Renaming
//      a module means destroying and recreating all resources in it. But if this includes the provider that is doing
//      the destroying, this requires a complex and manuel 2-step (first the resources, then the provider).
provider "aws" {
  region = "us-east-1"
}
