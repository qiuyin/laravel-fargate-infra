- laravel-fargate-infra/envs/prod/app/foobar
- laravel-fargate-infra/envs/prod/cicd/app_footbar
- laravel-fargate-infra/envs/prod/network/main
- laravel-fargate-infra/envs/prod/routing/appfoobar_link

https://docs.aws.amazon.com/ja_jp/systems-manager/latest/userguide/install-plugin-macos-overview.html

curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac_arm64/sessionmanager-bundle.zip" -o "sessionmanager-bundle.zip"

```
 aws ecs execute-command --region ap-northeast-1 --cluster example-prod-foobar --container php --interactive --command "/bin/bash" --task d9b87e2cf8b7456ba4ada4a3f3af57d5
```
