# Changelog

## [1.1.0](https://github.com/Foxon-Consulting/tf-module-aws-vpc/compare/v1.0.0...v1.1.0) (2023-09-20)


### Features

* :sparkles: add arn in output for subnet (public, private and rds) ([#15](https://github.com/Foxon-Consulting/tf-module-aws-vpc/issues/15)) ([9c00fc1](https://github.com/Foxon-Consulting/tf-module-aws-vpc/commit/9c00fc129cd0598caca71b50819dc51b3ffa34fe))


### Bug Fixes

* :pencil2: fix a tabulation into a flag passed in aws_subnet public ([f08386c](https://github.com/Foxon-Consulting/tf-module-aws-vpc/commit/f08386cb18d7c143a4d16e9f6179fb41f2cc553c))

## [1.0.0](https://github.com/Foxon-Consulting/tf-module-aws-vpc/compare/v0.2.1...v1.0.0) (2023-09-17)


### ⚠ BREAKING CHANGES

* :boom: allow vpc to have comon tags. Change variables.tf

### Code Refactoring

* :boom: allow vpc to have comon tags. Change variables.tf ([f130239](https://github.com/Foxon-Consulting/tf-module-aws-vpc/commit/f130239d50728b383ad64efc9ad762802842b65f))

## [0.2.1](https://github.com/Foxon-Consulting/tf-module-aws-vpc/compare/v0.2.0...v0.2.1) (2023-09-11)


### Bug Fixes

* :pencil2: typo in tag name "client" ([635ef3e](https://github.com/Foxon-Consulting/tf-module-aws-vpc/commit/635ef3e931e5e842cef048de431647722cdf04c0))

## [0.2.0](https://github.com/Foxon-Consulting/tf-module-aws-vpc/compare/v0.1.2...v0.2.0) (2023-09-11)


### Features

* :sparkles: add client name as var to put in tag env ([#9](https://github.com/Foxon-Consulting/tf-module-aws-vpc/issues/9)) ([004610b](https://github.com/Foxon-Consulting/tf-module-aws-vpc/commit/004610b0a8b1d5012d38bd86f4c059efb098ff0a))

## [0.1.2](https://github.com/Foxon-Consulting/tf-module-aws-vpc/compare/v0.1.1...v0.1.2) (2023-08-04)


### Bug Fixes

* :sparkles: add rta_id and rta_arn in outputs ([#7](https://github.com/Foxon-Consulting/tf-module-aws-vpc/issues/7)) ([15b86a1](https://github.com/Foxon-Consulting/tf-module-aws-vpc/commit/15b86a1d7fc683c19ef67d1cd3738412616f6570))

## [0.1.1](https://github.com/Foxon-Consulting/tf-module-aws-vpc/compare/v0.1.0...v0.1.1) (2023-07-26)


### Bug Fixes

* :ambulance: remove tags from route table association ([#5](https://github.com/Foxon-Consulting/tf-module-aws-vpc/issues/5)) ([afed0b8](https://github.com/Foxon-Consulting/tf-module-aws-vpc/commit/afed0b8f34dd4d6d405009a5b0fd43f66ab79851))

## 0.1.0 (2023-07-26)


### Features

* :sparkles: first terraform files building a vpc ([#2](https://github.com/Foxon-Consulting/tf-module-aws-vpc/issues/2)) ([8ad09d3](https://github.com/Foxon-Consulting/tf-module-aws-vpc/commit/8ad09d36984b7888997362b23ed9c9896e8f2095))
* :tada: cookiecutter skeleton ([6463056](https://github.com/Foxon-Consulting/tf-module-aws-vpc/commit/6463056b9391902affdadb94bff7437cbfb8286e))
* :tada: Skeleton commit ([fc0396d](https://github.com/Foxon-Consulting/tf-module-aws-vpc/commit/fc0396d1f5a762837efbe76758eb1a42a7157553))


### Bug Fixes

* :art: minor changes ([44927a1](https://github.com/Foxon-Consulting/tf-module-aws-vpc/commit/44927a18421f0a5f9477436b6e30cb542c122d7b))
