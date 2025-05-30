publisher := "slipwayhq"

build: clean && (package "echarts") (package "echarts__svg")
build-ci: clean && (package-ci "echarts") (package-ci "echarts__svg")

clean:
  rm -f components/*.tar

package name:
  slipway package components/{{publisher}}.{{name}}

package-ci name:
  docker run --rm -v "$(pwd)/components":/workspace -w /workspace slipwayhq/slipway:latest slipway package {{publisher}}.{{name}}

release version:
  git tag -a "{{version}}" -m "Release {{version}}"
  git push origin "{{version}}"
