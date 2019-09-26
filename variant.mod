provisioners:
  textReplace:
    Dockerfile:
      from: "FROM variantdev/mod:{{ .mod.previousVersion }}"
      to: "FROM variantdev/mod:{{ .mod.version }}"
    README.md:
      from: "variantdev/mod-action@v{{ .mod.previousVersion }}"
      to: "variantdev/mod-action@v{{ .mod.version }}"

dependencies:
  mod:
    releasesFrom:
      dockerImageTags:
        source: variantdev/mod
      version: "> 0.2.1"
