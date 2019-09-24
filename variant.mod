provisioners:
  textReplace:
    Dockerfile:
      from: "FROM chatwork/mod:{{ .mod.previousVersion }}"
      to: "FROM chatwork/mod:{{ .mod.version }}"

dependencies:
  mod:
    releasesFrom:
      dockerImageTags:
        source: chatwork/mod
      version: "> 0.2.1"
