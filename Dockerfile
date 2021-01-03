FROM barichello/godot-ci:mono-3.2.3

LABEL "com.github.actions.name"="Godot build-solutions"
LABEL "com.github.actions.description"="Build a Godot project"
LABEL "com.github.actions.icon"="loader"
LABEL "com.github.actions.color"="blue"

LABEL repository="https://github.com/remi-san/godot-build-solutions"
LABEL maintainer="Remi San <remi.san@gmail.com>"

USER root
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
