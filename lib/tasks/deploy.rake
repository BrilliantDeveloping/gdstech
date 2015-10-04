task :deploy do
  tag = "deploy-#{Time.now.strftime('%Y-%m-%d@%H-%M%z')}"
  Bundler.with_clean_env {
    sh 'git checkout -b '+tag
    sh 'git add -u .'
    sh 'rm -rf mobile'
    sh 'git add -A'
    sh 'git commit -am "commit for '+tag+'"'
    sh 'git push -f heroku '+tag+':master'
    sh 'git checkout master'
    sh 'git branch -D '+tag
    sh 'heroku run rake db:migrate db:seed'
    sh 'heroku open'
  }
end