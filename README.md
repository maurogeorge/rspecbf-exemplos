rspecbf-exemplos
=======

## How to run this project?

1. ```git clone REPO_URL```
2. ```cd rspecbf-exemplos```
3. ```bundle```
4. ```rake db:setup```
5. ```rake db:seed```
6. ```foreman start```
7. Go to http://localhost:3000

## Sanity check!

Is your first time here? Ok, so you should check some stuff. If some of the checks fails, ask any of the contributors.

Checks you have to do:

1. Do ```bundle``` works and install all gems accordingly?
2. Do ```rake db:setup``` works?
3. Do ```rake db:seed``` works?
4. After run ```foreman start``` if you go to ```http://localhost:3000``` you see something that shows the project is working?
5. Is code coverage 100%?
6. Do ```rake integrate``` works and deploys to production?
7. Do the project have Rollbar or Airbrake configured in production environment?

## Create remote git repository

1. Create git repo.
2. Add remote ```$ git remote add origin REPO_URL```.
3. Push to repo ```$ git push --set-upstream origin```.


## Run specs

```$ rspec .```

## Run rake integrate

The project requires 100% of test coverage.

When you finish an implementation, run:

```$ rake integrate```

This task will run all tasks described on 'jumpup.rake' file, check the file and verify the steps.

## Configuring domain on Heroku

Check out this [wiki](https://github.com/Helabs/pah/wiki/Configuring-domain-on-Heroku) with detailed instruction of how to use the canonical_host to redirect your naked domain to your real app.