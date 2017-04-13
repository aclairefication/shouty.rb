# Shouty

Shouty is a social networking application for short physical distances.
When someone shouts, only people within 1000m can hear it.

Shouty doesn't exist yet - you will implement it yourself!

That is, if you're attending a BDD/Cucumber course.

## Agenda

### Get the code

Git:

    git clone https://github.com/cucumber-ltd/shouty.rb.git
    cd shouty.rb
    git checkout YYYY-MM-DD

Subversion:

    svn checkout https://github.com/cucumber-ltd/shouty.rb/branches/YYYY-MM-DD shouty.rb
    cd shouty.rb

Or simply [download](https://github.com/cucumber-ltd/shouty.rb/releases) a zip or tarball.

### Install Ruby (Windows)

* Download [Ruby 2.0.0](http://rubyinstaller.org/downloads/) *DO NOT CHOOSE x64*
  * Check "Add to PATH" box during installation (don't check the other boxes)

### Install Ruby (OS X / Linux)

You might already have ruby installed. Check if it's an old one:

    ruby --version

If this is `1.9.3` or more recent you're good to go. If not, install ruby with
[ruby-install](https://github.com/postmodern/ruby-install):

    # OS X
    brew update
    brew install rbenv ruby-install

    # Ubuntu
    apt-get install rbenv ruby-install

    # Install ruby
    rbenv install 2.2.0

In addition to Ruby you'll also need a C compiler to install some of the libraries. Check if you already have one:

    gcc --version

If you don't have `gcc` installed you can install it with the following command:

    xcode-select --install

### Install a Text editor

Any text editor will work, but if you don't have one we recommend
[Sublime](http://www.sublimetext.com/3) (Works on Windows/Mac/Linux).

### Set up environment

The steps below might fail if you're behind a proxy. See the HTTP_PROXY section
for details and try again when you have set the proxy.

* `gem install bundler`
* `bundle` - this will install cucumber
* `cucumber` - this runs cucumber!

You should see:

    1 scenario (1 passed)

#### Windows troubleshooting

If you get an error installing gems,
create a file in `C:\Users\YOURNAME\.gemrc` with:

```yaml
# Download gems with http instead of https
:sources:
- http://rubygems.org
```

You'll also need to change your `Gemfile` to use `http` if you have this problem.

### HTTP_PROXY

Your IT department should be able to tell you what the proxy URL is.

#### Windows

* Right-click My Computer, and then click Properties
* Click the Advanced tab
* Click Environment variables
  * Click New to add a new user variable
  * Name: `HTTP_PROXY`
  * Value: What the IT department told you

On OS X / Linux:

    export HTTP_PROXY=<What the IT department told you>

## Brainstorm capabilities

* Who are the main stakeholders?
* What can people do with the app?
* What are the main differentiators from other apps?

### Pick one capability

* Define rules
* Create high level examples (Friends episodes)

Then do this for each example to discover more examples:

* Can you think of a context where the outcome would be different?
* Are there any other outcomes we haven't thought about?

### Implement one capability. Text UI only.

* Write a Cucumber Scenario for one of the examples
* Make it pass!
