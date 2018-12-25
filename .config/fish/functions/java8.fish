function java8 -d "Use JDK 8"
  set -xg JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_192.jdk/Contents/Home
  set -xg fish_user_path $JAVA_HOME/bin $fish_user_path
end

