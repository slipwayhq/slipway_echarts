publisher := "slipway"
name := "echarts"

build:
  rm -rf artifacts
  mkdir -p artifacts/{{publisher}}.{{name}}
  cp -r component/* artifacts/{{publisher}}.{{name}}
  slipway package artifacts/{{publisher}}.{{name}}

