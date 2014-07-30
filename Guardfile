interactor :off
notification :off

guard :shell do
  watch(%r{^test/(.+)_test\.rb$}) { task }
  watch(%r{^lib/(.+)\.rb$}) { task }
  watch('Guardfile') { task }
  watch('Gemfile') { 'bundle install' }
end

def task
  `clear && testrb test/`
end
