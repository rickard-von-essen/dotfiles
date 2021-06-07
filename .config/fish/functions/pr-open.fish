# Reuires gh (GitHub CLI), peco, and sed
function pr-open -a pr -d "Open a PR in the browser"
  test -z "$pr" && set -l pr (gh pr list | peco | sed -ne 's/^\([0-9]*\).*/\1/p')

  test -z "$pr" || gh pr view -w $pr
end

