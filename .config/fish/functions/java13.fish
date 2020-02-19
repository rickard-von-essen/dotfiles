function java13 --description 'Use JDK 13'
  set -x JAVA_HOME /Library/Java/JavaVirtualMachines/openjdk-13.jdk/Contents/Home
  set -x fish_user_paths $JAVA_HOME/bin $fish_user_paths
end

