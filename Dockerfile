FROM totobgycs/archjava
MAINTAINER totobgycs

USER build
WORKDIR /home/build
RUN yaourt -Syy ; \
  yaourt -S --noconfirm scala scala-docs firefox sbt ; \
  yaourt -S --aur --noconfirm eclipse-scala-ide typesafe-activator
 
WORKDIR /home/eclipse
USER eclipse
CMD ["eclipse"]
