function tf-import -a tf_opts -d "Reads stdin with resources that will imported"

  while read -L line
    terraform import (string split " " $line)
  end
end
