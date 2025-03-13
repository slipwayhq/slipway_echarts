publisher := "slipwayhq"
name := "echarts"

build:
  rm -rf components
  mkdir -p components/{{publisher}}.{{name}}
  cp -r src/* components/{{publisher}}.{{name}}
  slipway package components/{{publisher}}.{{name}}

