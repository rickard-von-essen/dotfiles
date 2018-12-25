function java11 -d "Use JDK 11"
  set -g JAVA_HOME /Library/Java/JavaVirtualMachines/openjdk-11.0.1.jdk/Contents/Home
  set -g fish_user_path $JAVA_HOME/bin $fish_user_path
end

