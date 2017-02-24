# docker-opencv-java8

OpenCV for Java8

This docker image generates all the OpenCV Java class files contained in a JAR file as well as the native dynamic library for Java OpenCV. This is a self-contained library that works with JNI and is required to run a Java OpenCV application.

## Usage

```sh
$ docker run --rm -it -v $(pwd):/gen eedkevin/opencv-java8
```

## Copy generated files from container to host

```sh
$ cp /opencv-java-bin/* .
```

The command above copies ```opencv-320.jar``` and ```libopencv_java320.so``` to your current dir, these files are necessary to run OpenCV on Java.

## References

* http://docs.opencv.org/2.4/doc/tutorials/introduction/linux_install/linux_install.html
* http://docs.opencv.org/2.4/doc/tutorials/introduction/desktop_java/java_dev_intro.html
