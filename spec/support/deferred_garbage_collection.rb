# Joe Van Dyk discovered that running the Ruby garbage collector only every X seconds can speed up your tests.
# I found that deferring garbage collection would speed up my RSpec examples by about 15%,
# but it probably depends on the nature of your tests.
# https://makandracards.com/makandra/950-speed-up-rspec-by-deferring-garbage-collection

class DeferredGarbageCollection
  DEFERRED_GC_THRESHOLD = (ENV['DEFER_GC'] || 10.0).to_f
  @@last_gc_run = Time.now
  def self.start
    GC.disable if DEFERRED_GC_THRESHOLD > 0
  end
  def self.reconsider
    if DEFERRED_GC_THRESHOLD > 0 && Time.now - @@last_gc_run >= DEFERRED_GC_THRESHOLD
      GC.enable
      GC.start
      GC.disable
      @@last_gc_run = Time.now
    end
  end
end

RSpec.configure do |config|
  config.before(:all) do
    DeferredGarbageCollection.start
  end

  config.after(:all) do
    DeferredGarbageCollection.reconsider
  end
end
