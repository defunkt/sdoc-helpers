require 'rake/rdoctask'

Rake::RDocTask.new do |rdoc|
  rdoc.main = 'README.md'
  rdoc.rdoc_files = %w( README.md LICENSE lib )
  rdoc.rdoc_dir = 'docs'
end

desc "Build and publish documentation using GitHub Pages."
task :pages do
  if !`git status`.include?('nothing to commit')
    abort "dirty index - not publishing!"
  end

  Rake::Task[:rerdoc].invoke
  `git checkout gh-pages`
  `ls -1 | grep -v docs | xargs rm -rf; mv docs/* .; rm -rf docs`
  `git commit -a -m "update docs"; git push origin gh-pages`
  `git checkout master`
end
