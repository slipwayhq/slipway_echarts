export function run(input) {

  let definition = getFinalChart(input.chart, input.apply);

  let chart = echarts.init(
    null,
    input.theme,
    {
      renderer: 'svg',
      ssr: true,
      width: input.width,
      height: input.height
    });
  chart.setOption({ animation: false, progressive: 0 });
  chart.setOption(definition);

  let svg = chart.renderToSVGString();

  return {
    svg: svg
  };
}

function getFinalChart(chart, apply){
  if (apply) {
    eval(apply);
  }

  return chart;
}