interactor :off
notification :off

guard :shell do
  watch(%r{^test/(.+)_test\.rb$}) { tasks }
  watch(%r{^lib/(.+)\.rb$}) { task }
end

guard :test do
  watch(%r{^test/.+_test\.rb$})
end

def tasks
  system 'clear'
end
