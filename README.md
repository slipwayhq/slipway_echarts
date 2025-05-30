# `slipwayhq.echarts`

A [Slipway](https://slipway.co/) Component which takes an [ECharts definition](https://echarts.apache.org/examples/en/index.html)
as an input and returns a rendered chart as an output.

Although you can't directly set functions in the chart definition (for example as formatters), due to the chart definition
needing to be JSON, you can supply an `apply` argument which should be valid javascript which will be executed
within the component and can modify the chart definition. Because this is executed inside the component it can attach functions.
See the example below.

## Suggested Permissions

### `--allow-registry-components`

This component is a Fragment Component that internally uses `slipwayhq.echarts_svg` to produce
an SVG of the chart, and `slipwayhq.svg` to render the SVG to [a canvas](https://slipway.co/docs/guides/canvases).

### `--allow-fonts`

This component may need to access fonts from the local system.

## Example Usage

Test the component by running the following command and pasting in the input when prompted:
```
slipway run-component "slipwayhq.echarts.0.5.1" --allow-fonts --allow-registry-components
```

Input:
```json
{  
  "width": 400,
  "height": 300,
  "chart": {
    "grid": { "top": 30, "bottom": 40, "right": 30 },
    "xAxis": {
      "type": "category",
      "data": [
        "Mon",
        "Tue",
        "Wed",
        "Thu",
        "Fri",
        "Sat",
        "Sun"
      ]
    },
    "yAxis": {
      "type": "value"
    },
    "series": [
      {
        "data": [
          150,
          230,
          224,
          218,
          135,
          147,
          260
        ],
        "type": "line"
      }
    ]
  },
  "theme": {
    "backgroundColor": "#FFF"
  },
  "apply": "chart.yAxis.axisLabel = { formatter: (value) => value % 100 ? '' : value  };"
}
```

Output:
```json
{
  "canvas": {
    "data": "<encoded_rgba_bytes_omitted>",
    "width": 400,
    "height": 300
  }
}
```

![Example Chart Output](example.png)


# `slipwayhq.echarts__svg`

A [Slipway](https://slipway.co/) Component which takes an [ECharts definition](https://echarts.apache.org/examples/en/index.html)
as an input and returns a rendered SVG chart.

## Suggested Permissions

### `--allow-fonts`

This component may need to access fonts from the local system.

## Example Usage

Test the component by running the following command and pasting in the input when prompted:
```
slipway run-component "slipwayhq.echarts_svg.0.5.0" --allow-fonts
```

Input:
```json
{
  "width": 400,
  "height": 300,
  "chart": {
    "xAxis": {
      "type": "category",
      "data": [
        "Mon",
        "Tue",
        "Wed",
        "Thu",
        "Fri",
        "Sat",
        "Sun"
      ]
    },
    "yAxis": {
      "type": "value"
    },
    "series": [
      {
        "data": [
          150,
          230,
          224,
          218,
          135,
          147,
          260
        ],
        "type": "line"
      }
    ]
  },
  "theme": {
    "backgroundColor": "#FFF"
  }
}
```

Output:
```json
{
  "svg": "<svg width=\"400\" height=\"300\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" baseProfile=\"full\" viewBox=\"0 0 400 300\">\n<rect width=\"400\" height=\"300\" x=\"0\" y=\"0\" fill=\"#FFF\"></rect>\n<path d=\"M40 230.5L360 230.5\" fill=\"transparent\" stroke=\"#E0E6F1\" class=\"zr0-cls-0\"></path>\n<path d=\"M40 201.5L360 201.5\" fill=\"transparent\" stroke=\"#E0E6F1\" class=\"zr0-cls-0\"></path>\n<path d=\"M40 173.5L360 173.5\" fill=\"transparent\" stroke=\"#E0E6F1\" class=\"zr0-cls-0\"></path>\n<path d=\"M40 145.5L360 145.5\" fill=\"transparent\" stroke=\"#E0E6F1\" class=\"zr0-cls-0\"></path>\n<path d=\"M40 116.5L360 116.5\" fill=\"transparent\" stroke=\"#E0E6F1\" class=\"zr0-cls-0\"></path>\n<path d=\"M40 88.5L360 88.5\" fill=\"transparent\" stroke=\"#E0E6F1\" class=\"zr0-cls-0\"></path>\n<path d=\"M40 60.5L360 60.5\" fill=\"transparent\" stroke=\"#E0E6F1\" class=\"zr0-cls-0\"></path>\n<path d=\"M40 230.5L360 230.5\" fill=\"transparent\" stroke=\"#6E7079\" stroke-linecap=\"round\" class=\"zr0-cls-0\"></path>\n<path d=\"M40.5 230L40.5 235\" fill=\"transparent\" stroke=\"#6E7079\" class=\"zr0-cls-0\"></path>\n<path d=\"M85.5 230L85.5 235\" fill=\"transparent\" stroke=\"#6E7079\" class=\"zr0-cls-0\"></path>\n<path d=\"M131.5 230L131.5 235\" fill=\"transparent\" stroke=\"#6E7079\" class=\"zr0-cls-0\"></path>\n<path d=\"M177.5 230L177.5 235\" fill=\"transparent\" stroke=\"#6E7079\" class=\"zr0-cls-0\"></path>\n<path d=\"M223.5 230L223.5 235\" fill=\"transparent\" stroke=\"#6E7079\" class=\"zr0-cls-0\"></path>\n<path d=\"M268.5 230L268.5 235\" fill=\"transparent\" stroke=\"#6E7079\" class=\"zr0-cls-0\"></path>\n<path d=\"M314.5 230L314.5 235\" fill=\"transparent\" stroke=\"#6E7079\" class=\"zr0-cls-0\"></path>\n<path d=\"M360.5 230L360.5 235\" fill=\"transparent\" stroke=\"#6E7079\" class=\"zr0-cls-0\"></path>\n<text dominant-baseline=\"central\" text-anchor=\"end\" style=\"font-size:12px;font-family:sans-serif;\" transform=\"translate(32 230)\" fill=\"#6E7079\">0</text>\n<text dominant-baseline=\"central\" text-anchor=\"end\" style=\"font-size:12px;font-family:sans-serif;\" transform=\"translate(32 201.6667)\" fill=\"#6E7079\">50</text>\n<text dominant-baseline=\"central\" text-anchor=\"end\" style=\"font-size:12px;font-family:sans-serif;\" transform=\"translate(32 173.3333)\" fill=\"#6E7079\">100</text>\n<text dominant-baseline=\"central\" text-anchor=\"end\" style=\"font-size:12px;font-family:sans-serif;\" transform=\"translate(32 145)\" fill=\"#6E7079\">150</text>\n<text dominant-baseline=\"central\" text-anchor=\"end\" style=\"font-size:12px;font-family:sans-serif;\" transform=\"translate(32 116.6667)\" fill=\"#6E7079\">200</text>\n<text dominant-baseline=\"central\" text-anchor=\"end\" style=\"font-size:12px;font-family:sans-serif;\" transform=\"translate(32 88.3333)\" fill=\"#6E7079\">250</text>\n<text dominant-baseline=\"central\" text-anchor=\"end\" style=\"font-size:12px;font-family:sans-serif;\" transform=\"translate(32 60)\" fill=\"#6E7079\">300</text>\n<text dominant-baseline=\"central\" text-anchor=\"middle\" style=\"font-size:12px;font-family:sans-serif;\" y=\"6\" transform=\"translate(62.8571 238)\" fill=\"#6E7079\">Mon</text>\n<text dominant-baseline=\"central\" text-anchor=\"middle\" style=\"font-size:12px;font-family:sans-serif;\" y=\"6\" transform=\"translate(108.5714 238)\" fill=\"#6E7079\">Tue</text>\n<text dominant-baseline=\"central\" text-anchor=\"middle\" style=\"font-size:12px;font-family:sans-serif;\" y=\"6\" transform=\"translate(154.2857 238)\" fill=\"#6E7079\">Wed</text>\n<text dominant-baseline=\"central\" text-anchor=\"middle\" style=\"font-size:12px;font-family:sans-serif;\" y=\"6\" transform=\"translate(200 238)\" fill=\"#6E7079\">Thu</text>\n<text dominant-baseline=\"central\" text-anchor=\"middle\" style=\"font-size:12px;font-family:sans-serif;\" y=\"6\" transform=\"translate(245.7143 238)\" fill=\"#6E7079\">Fri</text>\n<text dominant-baseline=\"central\" text-anchor=\"middle\" style=\"font-size:12px;font-family:sans-serif;\" y=\"6\" transform=\"translate(291.4286 238)\" fill=\"#6E7079\">Sat</text>\n<text dominant-baseline=\"central\" text-anchor=\"middle\" style=\"font-size:12px;font-family:sans-serif;\" y=\"6\" transform=\"translate(337.1429 238)\" fill=\"#6E7079\">Sun</text>\n<g clip-path=\"url(#zr0-c0)\">\n<path d=\"M62.9 145L108.6 99.7L154.3 103.1L200 106.5L245.7 153.5L291.4 146.7L337.1 82.7\" fill=\"transparent\" stroke=\"#5470c6\" stroke-width=\"2\" stroke-linejoin=\"bevel\" class=\"zr0-cls-2\"></path>\n</g>\n<path d=\"M1 0A1 1 0 1 1 1 -0.1A1 1 0 0 1 1 0\" transform=\"matrix(2,0,0,2,62.8571,145)\" fill=\"#fff\" stroke=\"#5470c6\" ecmeta_series_index=\"0\" ecmeta_data_index=\"0\" ecmeta_ssr_type=\"chart\" class=\"zr0-cls-3\"></path>\n<path d=\"M1 0A1 1 0 1 1 1 -0.1A1 1 0 0 1 1 0\" transform=\"matrix(2,0,0,2,108.5714,99.6667)\" fill=\"#fff\" stroke=\"#5470c6\" ecmeta_series_index=\"0\" ecmeta_data_index=\"1\" ecmeta_ssr_type=\"chart\" class=\"zr0-cls-3\"></path>\n<path d=\"M1 0A1 1 0 1 1 1 -0.1A1 1 0 0 1 1 0\" transform=\"matrix(2,0,0,2,154.2857,103.0667)\" fill=\"#fff\" stroke=\"#5470c6\" ecmeta_series_index=\"0\" ecmeta_data_index=\"2\" ecmeta_ssr_type=\"chart\" class=\"zr0-cls-3\"></path>\n<path d=\"M1 0A1 1 0 1 1 1 -0.1A1 1 0 0 1 1 0\" transform=\"matrix(2,0,0,2,200,106.4667)\" fill=\"#fff\" stroke=\"#5470c6\" ecmeta_series_index=\"0\" ecmeta_data_index=\"3\" ecmeta_ssr_type=\"chart\" class=\"zr0-cls-3\"></path>\n<path d=\"M1 0A1 1 0 1 1 1 -0.1A1 1 0 0 1 1 0\" transform=\"matrix(2,0,0,2,245.7143,153.5)\" fill=\"#fff\" stroke=\"#5470c6\" ecmeta_series_index=\"0\" ecmeta_data_index=\"4\" ecmeta_ssr_type=\"chart\" class=\"zr0-cls-3\"></path>\n<path d=\"M1 0A1 1 0 1 1 1 -0.1A1 1 0 0 1 1 0\" transform=\"matrix(2,0,0,2,291.4286,146.7)\" fill=\"#fff\" stroke=\"#5470c6\" ecmeta_series_index=\"0\" ecmeta_data_index=\"5\" ecmeta_ssr_type=\"chart\" class=\"zr0-cls-3\"></path>\n<path d=\"M1 0A1 1 0 1 1 1 -0.1A1 1 0 0 1 1 0\" transform=\"matrix(2,0,0,2,337.1429,82.6667)\" fill=\"#fff\" stroke=\"#5470c6\" ecmeta_series_index=\"0\" ecmeta_data_index=\"6\" ecmeta_ssr_type=\"chart\" class=\"zr0-cls-3\"></path>\n<defs >\n<clipPath id=\"zr0-c0\">\n<path d=\"M39 59l322 0l0 172l-322 0Z\" fill=\"#000\" class=\"zr0-cls-1\"></path>\n</clipPath>\n</defs>\n<style ><![CDATA[\n.zr0-cls-0:hover {\npointer-events:none;\n}\n.zr0-cls-1:hover {\ncursor:pointer;\nfill:rgba(0,0,0,1);\n}\n.zr0-cls-2:hover {\ncursor:pointer;\n}\n.zr0-cls-3:hover {\ncursor:pointer;\nfill:rgba(255,255,255,1);\n}\n\n]]>\n\n</style>\n</svg>"
}
```