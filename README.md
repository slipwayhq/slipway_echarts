# `slipwayhq.echarts`

A [Slipway](https://slipway.co/) Component which takes an [Echarts definition](https://echarts.apache.org/examples/en/index.html)
as an input and returns a rendered chart as an output.

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
  "canvas": {
    "data": "<encoded_rgba_bytes_omitted>",
    "width": 400,
    "height": 300
  }
}
```