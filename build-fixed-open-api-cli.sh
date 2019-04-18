#

if [ -d "../openapi-generator" ]; then
  cd ../openapi-generator
  mvn package
  cd -
  cp ../openapi-generator/modules/openapi-generator-cli/target/openapi-generator-cli.jar bin/
  ls -lt bin/
  echo $(date)
else
  echo "Do this first:"
  echo "cd .."
  echo "git clone https://github.com/alenabelium/openapi-generator.git"
  echo "cd openapi-generator"
  echo "git checkout v3.3.4-enum-ref-fix"
fi
