# archscala
Archlinux docker image with Scala and Eclipse based on [totobgycs/archjava](https://registry.hub.docker.com/u/totobgycs/archjava/).
It contains Scala, the [Scala Eclipse Plugin](http://scala-ide.org/), [Typesafe Activator](http://typesafe.com/) and Firefox. 


At the first run you get the Scala Setup Diagnostic dialog. After completing it and restarting Eclipse, you can open the Scala perspective.

Usage:

```
$ xhost +si:localuser:eclipse
$ docker run -d -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro totobgycs/archscala eclipse
```

or

```
$ xhost +si:localuser:eclipse
$ docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro totobgycs/archscala /bin/bash
```

and then start eclipse or typesafe from the command prompt.