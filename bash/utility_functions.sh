function remigrate! {
  echo "rake db:drop db:create db:migrate" 
  rake db:drop db:create db:migrate
}

function rs {
  if [ -d "./log" ]; then
    for file in $(find ./log -maxdepth 1 -type f)
    do
      cat /dev/null > $file
    done
  fi

  rm -rf coverage
  rm -f coverage.data

  if [ -e "./Procfile" ]
  then
    foreman start
  else
    bundle exec rails server $1 $2
  fi
}

function rc {
  bundle exec rails console $1 $2
}

bundle_commands=(rspec cucumber guard spork)
for cmd in ${bundle_commands[*]}
do
  alias $cmd="run_bundler_cmd $cmd"
done

# If there is a Gemfile file then execute bundle exec rake
function rake {
  if [ -e Gemfile ]; then
    bundle exec rake $@
  else
    `which rake` $@
  fi
}

