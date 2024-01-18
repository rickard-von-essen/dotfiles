function tf-state-mv -a sed_expr -d "Reads stdin with resources that will be moved to <sed_expr>"

  while read -L line
    terraform state mv $line (echo "$line" | sed -e "$sed_expr")
  end
end
