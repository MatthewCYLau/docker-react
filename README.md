# React, Docker, Travis CI, AWS CI/CD Boilerplate

This is boilderplate reference project which uses Docker and Travis CI, to automationally build and deploy a React app onto AWS Elastic Beanstalk

Inspired by [this](https://www.udemy.com/course/docker-and-kubernetes-the-complete-guide/) Udemy course by Stephen Grider

## Build/Run Locally

To build the Docker image , run the following command:

```bash
docker-compose up --build
```

To run the app locally , run the following command:

```bash
docker-compose up # app runs unit tests, before starting at http://localhost:3000/
```

## Deployment

- To deploy app onto AWS Elastic Beanstalk, do the following:

1. Create an application on [AWS Elastic Beanstalk](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/GettingStarted.CreateApp.html). Choose Docker as the platform
2. Update `.travis.yml` Travis CI config file. See annotations on `.travis.yml`
3. On Travis CI, define [environemnt variables](https://docs.travis-ci.com/user/environment-variables/)

## FAQ

- If AWS Elastic Beanstalk deployment fails, this could be due to an issue on AWS. See this [post](https://stackoverflow.com/questions/61518512/aws-elastic-beanstalk-docker-does-not-support-multi-stage-build) on a workaround which uses un-named builder for the Dockerfile

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
