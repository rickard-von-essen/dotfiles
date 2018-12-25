function json2yaml
  ruby -ryaml -rjson -e 'puts YAML.dump(JSON.parse(STDIN.read))'
end
