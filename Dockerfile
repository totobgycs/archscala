FROM totobgycs/archjava
MAINTAINER totobgycs

USER build
WORKDIR /home/build
RUN yaourt -Syy ; \
  yaourt -S --noconfirm scala scala-docs firefox sbt ; \
  yaourt -S --aur --noconfirm typesafe-activator
RUN eclipse -nosplash -consoleLog \
  -application org.eclipse.equinox.p2.director \
  -repository http://download.scala-ide.org/sdk/lithium/e44/scala211/stable/site/ \
  -installIU org.scala-ide.sdt.feature.feature.group

WORKDIR /home/eclipse
USER eclipse
RUN activator list--templates ; \
  sbt

CMD ["eclipse"]
