INTEGRATION_TASKS = %w(
  jumpup:heroku:add_remote
  jumpup:heroku:check
  jumpup:heroku:lock
  jumpup:start
  jumpup:bundle_install
  db:migrate
  spec
  jumpup:coverage_verify
  jumpup:finish
  jumpup:heroku:deploy
  jumpup:heroku:unlock
)