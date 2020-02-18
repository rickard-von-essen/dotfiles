function pr-open --description "List open PR's and open them in your browser"

  argparse 'h/help' 'c/current' -- $argv

  if set -q _flag_help
    echo 'pr-open       Open a PR in the browser
              If no flag is given a list of open PRs will be shown to choose from.

 -c --current      Open the current branchs PR
 -h --help         Show this help'
    return
  end

  if set -q _flag_current
    set PR_REF (git branch --show-current)
  else
    set PR_LINE (gh pr list | peco)
    if test -z "$PR_LINE"
      return
    end
    set PR_REF (echo "$PR_LINE" | cut -d\t -f1)
  end

  gh pr view $PR_REF
end
