function java11 -d "Use JDK 11"
  set -x JAVA_HOME /Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home
  set -x fish_user_paths $JAVA_HOME/bin $fish_user_paths
end

