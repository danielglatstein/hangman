

# Ruby Final Project - A Command Line Interface Program

Now that you know how to write some pretty advanced ruby, scrape websites, and output to and recieve input from the command line, you're going to make your first project from scratch. You'll be choosing from a list of projects that will:

* Make your application interactive (take user input and display some output)
* Use good object oriented principles 

Be creative and talk to an instructor about your project before you get started. You can do basically whatever you want as long as your project is manageable and an instructor approves it. 

## Setup

You'll need to build this project from scratch, but your project should have a good, clean directory structure and looks similar to other gems. Following the directory structure common in other gems will make it easier for other developers to pick up your code and know where to find things. You're directory/file structure should look something like this:

```bash
├── Gemfile
├── README.md
├── LICENSE
├── .rspec
├── bin
│   └── run
├── lib
│   └── model.rb
|__ controllers
|.. └── application_controller.rb
├── config
│   └── environment.rb
└── spec
    ├── models
    ├── model_spec.rb
    └── spec_helper.rb
```

### `bin/run`
The bin folder will hold your runner file which starts the program and should require only your environment file. You should be able to start your program by running `bin/run` in the command line. Remeber to put `#!/usr/bin/env ruby` at the top of your runner so that the command line knows to run it as a ruby file.

### `config/environment.rb`
The config folder should have your environment file, which should require all the other files that are needed to run your project, and load Bundler to require all of the dependencies listed in your Gemfile

### `spec/`
The spec folder should have all your specs, and should be automatically created by typing `rspec --init` on the command line. It's important to test your code, especially since you'll be distributing your app to the public as a gem.

### `README.md`
The README should be well written and clear. Anyone reading your readme should know exactly what your app/gem does, how to get it running on their computer, and how to contribute to it. 

If your app is something non progammers would use, make sure your readme has a section that explains clearly how non-technical people who have never used the terminal before can install and use your app.

### `LICENSE`
Github will have a bunch of [options for licences](http://choosealicense.com). Pick one you like. 

## Timeframe

We should wrap this project up on Monday afternoon.

## Bonus

Spec it out! Use [Simplecov](https://github.com/colszowka/simplecov) to monitor your test coverage. At this point, you should be familiar with writing some tests and definitely passing them. Use the labs as guides for how to write tests.
