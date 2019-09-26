provisioners:
  textReplace:
    Dockerfile:
      from: "FROM variantdev/mod:{{ .mod.previousVersion }}"
      to: "FROM variantdev/mod:{{ .mod.version }}"
    README.md:
      from: "variantdev/mod-action@{{ .mod.previousVersion }}"
      to: "variantdev/mod-action@{{ .mod.version }}"

dependencies:
  mod:
    releasesFrom:
      dockerImageTags:
        source: variantdev/mod
      version: "> 0.2.1"
