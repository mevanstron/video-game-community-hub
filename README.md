# Video Game Community Hub

The Video Game Community Hub allows users to review their favorite video games.  Users will add existing or newly created video game titles to their collection.  Users may review games and add tags to help others find games that share characteristics.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them

```
Ruby Library
```

```
Rails Gem
```

### Installing

A step by step series of examples that tell you have to get a development env running

Clone Video Game Community Hub repository from github.

```
> git clone git@github.com:mevanstron/video-game-community-hub.git
```

Install gems from Gemfile

```
> Bundle Install
```

Create and populate the database.

```
> rake db:migrate db:seed
```

Create .env file in root directory, for OmniAuth facebook login capability.

```
FACEBOOK_KEY=
FACEBOOK_SECRET=
```

Populate FACEBOOK_KEY and FACEBOOK_SECRET using facebook developer tools.

```
https://developers.facebook.com/
```

Launch the application.
```
> rails server
```

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **Michael Evans** - *Initial work* - [mevanstron](https://github.com/mevanstron)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
