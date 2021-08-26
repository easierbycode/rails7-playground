
import * as d3 from 'd3'


var svg = d3.select("#d3_zoom")
    .append('svg')
    .attr("width",  460)
    .attr("height",  460)
    .call(d3.zoom().on("zoom", function (event) {
       svg.attr("transform", event.transform)
    }))
  .append("g")

svg
  .append("circle")
    .attr("cx", 300)
    .attr("cy", 300)
    .attr("r", 40)
    .style("fill", "#68b2a1")