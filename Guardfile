interactor :off
notification :off

guard :shell do
  watch(%r{^test/(.+)_test\.rb$}) { task }
  watch(%r{^lib/(.+)\.rb$}) { task }
  watch('Guardfile') { task }
end

def task
  `clear && testrb test/`
end
