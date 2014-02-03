# Rails by default logs everything that is happening in your test environment to “log/test.log”.
# By increasing the logger level, you will be able to reduce the IO during your tests.
# The only downside of this approach is that, if a test is failing, you won’t have anything logged.
# In such cases, just comment the configuration option above and run your tests again.
Rails.logger.level = 4 unless ENV['WITH_LOG']
