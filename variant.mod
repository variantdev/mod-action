provisioners:
  textReplace:
    Dockerfile:
      from: "FROM chatwork/mod:{{ .mod.previousVersion }}"
      to: "FROM chatwork/mod:{{ .mod.version }}"
    README.md:
      from: "chatwork/mod-action@{{ .mod.previousVersion }}"
      to: "chatwork/mod-action@{{ .mod.version }}"

dependencies:
  mod:
    releasesFrom:
      dockerImageTags:
        source: chatwork/mod
      version: "> 0.2.1"
