Welcome to WDI-CONF!
====================

Code climate says our code has this grade: [![Code Climate](https://codeclimate.com/repos/55541b8ae30ba016b90111bd/badges/8f997a923138bd9bfdbe/gpa.svg)](https://codeclimate.com/repos/55541b8ae30ba016b90111bd/feed)

Code climate says out test coverage is: [![Test Coverage](https://codeclimate.com/repos/55541b8ae30ba016b90111bd/badges/8f997a923138bd9bfdbe/coverage.svg)](https://codeclimate.com/repos/55541b8ae30ba016b90111bd/coverage)

Our continuous integration (CI) server that runs tests automatically says: [ ![Codeship Status for wdi-conf/WDIConf2015](https://codeship.com/projects/d6e13420-dc1b-0132-d98c-1e3fe125131b/status?branch=master)](https://codeship.com/projects/79879)

To set up:

1. fork from wdi-conf/WDIConf2015 to your own github repo.
2. clone from your own github to your local computer.

Then set up locally:

1. configure .gitignore
2. configure your database.yml and add to .gitignore
3. bundle install
4. Do whatever mac thing you need to do "start the elephant???".
5. rake db:create
6. rake db:migrate
7. rails server (or rails s)
8. go to localhost:3000 to see if it all worked.

Rspec testing setup (after any migrations):

*rake db:test:prepare*

If there are any errors in the above, try the following:

1. rake db:create RAILS_ENV=test  (may already exist)
2. rake db:migrate RAILS_ENV=test
3. DO NOT need to seed test database at this stage -it will slow things down if you do.

you can drop the test database with: *rake db:drop RAILS_ENV=test*




## About the site:
WDI Conf is a website created for a semi-fictional tech conference. The site was based on current design trends found on many conference websites, namely; a single page application, centre-aligned text, subtle animations to guide you through the site and a simple colour palate.

## Team Roles
Justin: Back end. Deployment
Dominic: Login in authentication, back end
Mike: Git Lord, back end
Aden: CSS master
Matt: Database concepts and design, back end
Jeff: Project manager
Nick: Content manager

## What we used:
- Pivotal tracker for task delegation
- Ruby on Rails
- Javascript Libraries: scrollReveal, smooth-scroll
- CSS
- Postgresql
- Rspec testing
- Code Ship for continuous deployment
- Static code analysis with Code Climate

## What worked 
- Clearly defined roles 
- Opportunities for partner coding
- Deployment for the site from the initial stages of the project
- Clear concept about the back-end logic, revised when needed
- Everyone got to work with their strengths
- Most members took a risk and tried something new
- A relaxed environment

## What didn’t
- Occasional gitHub glitches
- Adapting to a new gitHub workflow (for some)





