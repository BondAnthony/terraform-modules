# terraform-modules

Example Terraform modules monorepo project using [release-please](https://github.com/google-github-actions/release-please-action) to perform individual releases for modules.

## Example

Utilize a tagged version using the github http syntax.

```terraform
module "vpc" {
  source       = "github.com/BondAnthony/terraform-modules//gcp/vpc?ref=gcp.vpc-v0.1.1"
  name         = "test"
  routing_mode = "REGIONAL"
}
```
