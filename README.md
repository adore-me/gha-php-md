# gha-php-md

## Description
Run PHP mess detector with custom PHP image.

## Inputs
| Key                   | Required | Default                       | Description                                                   |
|-----------------------|----------|-------------------------------|---------------------------------------------------------------|
| **php-image**         | **true** | `''`                          | PHP image tag to use                                          |
| **report-path**       | **true** | `./build/reports/php-pmd.xml` | Report file path (where mess detector results will be saved). |

## Outputs
**N/A**

## Notes
ℹ This action doesn't handle docker registry authentication (e.g. for private images).
You can run [docker/login-action@v1](https://github.com/docker/login-action) before this step.

ℹ It uses [pmd-github-action](https://github.com/jwgmeligmeyling/pmd-github-action) for publishing **MD** results.

### Example of step configuration and usage:

```yaml
steps:
  - name: 'Run Mess Detector'
    uses: adore-me/gha-php-md@master
```
