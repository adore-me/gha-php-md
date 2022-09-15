# gha-php-md

## Description
Run PHP mess detector with custom PHP image.

## Inputs
| Key                  | Required | Default         | Description                                                                                    |
|----------------------|----------|-----------------|------------------------------------------------------------------------------------------------|
| **php-image**        | **true** | `N/A`           | PHP image to use (fully qualified image address. ex: quay.io/adoreme/nginx-fpm-alpine:v0.0.1). |
| **report-dir**       | **true** | `build/reports` | Report file directory (no trailing `/`).                                                       |
| **report-file-name** | **true** | `php-md.xml`    | Report file name.                                                                              |

## Outputs
**N/A**

## Notes
ℹ This action doesn't handle docker registry authentication (e.g. for private images).
You can run [docker/login-action@v1](https://github.com/docker/login-action) before this step.

ℹ It uses [pmd-github-action](https://github.com/jwgmeligmeyling/pmd-github-action) for publishing **MD** results.

### Example of step configuration and usage:

```yaml
steps:
  - name: 'Run PHP MD'
    uses: adore-me/gha-php-md@master
```
