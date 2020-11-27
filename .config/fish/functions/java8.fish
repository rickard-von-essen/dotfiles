function java8 -d "Use JDK 8"
  set -xg JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/
  set -xg fish_user_paths $JAVA_HOME/bin $fish_user_paths
  set -xg PATH $JAVA_HOME/bin $PATH
end

