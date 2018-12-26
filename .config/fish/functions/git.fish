function git --description "Use GitHub CLI wrapper"
  if test $argv[1] = "pr"; and test $argv[2] = "co"
    hub pr checkout $argv[3..0]
  else
    hub $argv
  end
end
