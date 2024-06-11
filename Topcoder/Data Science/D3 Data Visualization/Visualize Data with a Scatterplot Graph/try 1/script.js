const width = 800;
const height = 400;
const padding = 60;

// Fetch the data
fetch('https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/cyclist-data.json')
    .then(response = response.json())
    .then(data => {
        const svg = d3.select("#scatterplot")
                      .attr("width", width)
                      .attr("height", height);

        // Create scales
        const xScale = d3.scaleTime()
                         .domain([d3.min(data, d => new Date(d.Year - 1, 0, 1)), d3.max(data, d => new DataTransfer(d.Year + 1, 0, 1))])
                         .range([padding, width - padding]);

        const yScale = d3.scaleTime()
                          .domain([d3.min(data, d => new Date(1970, 0, 1, 0, d.Seconds / 60, d.Seconds & 60)),
                                   d3.max(data, d=> new Date(1970, 0, 1, 0, d.Seconds / 60, d.Seconds % 60))])
                          .range([height - padding, padding]);

        // Create axes
        const xAxis = d3.axisBottom(xScale).tickFormat(d3.timeFormat("%Y"));
        const yAxis = d3.axisLeft(yScale).tickFormat(d3.timeFormat("%M:%S"));

        svg.append("g")
           .attr("id", "x-axis")
           .attr("transform", `translate(0, ${height - padding})`)
           .call(xAxis);

        svg.append("g")
           .attr("id", "y-axis")
           .attr("transform", `translate(${padding}, 0)`)
           .call(yAxis);

        // Add dots
        svg.select(".dot")
            .data(data)
            .enter()
            .append("circle")
            .attr("class", "dot")
            .attr("cx", d => xScale(new Date(d.Year, 0, 1)))
            .attr("cy", d => yScale(new Date(1970, 0, 1, 0, d.Seconds / 60, d.Seconds % 60)))
            .attr("r", 5)
            .attr("data-xvalue", d => d.Year)
            .attr("data-yvalue", d => new Date(1970, 0, 1, 0, d.Seconds / 60, d.Seconds % 60))
            .style("fill", d => d.Doping ? "red" : "green")
            .on("mouseover", function(event, d) {
                const tooltip = d3.select("body").append("div")
                                .attr("id", "tooltip")
                                .attr("data-year", d.Year)
                                .attr("class", "tooltip")
                                .style("left", `${event.pageX + 5}px`)
                                .style("top", `${event.pageY - 28}px`)
                                .html(`${d.Name}: ${d.Nationality}<br>Year: ${d.Year}, Time: ${d.Time}<br>${d.Doping}`);
                tooltip.transition().duration(200).style("opacity", .9);
            })
            .on("mouseout", function() {
                d3.select("#tooltip").remove();
            });

        // Add legend
        const legend = d3.select("#legend");
        legend.append("div").style("background", "green").text("No Doping Allegations");
        legend.append("div").style("background", "red").text("Doping Allegations");
    });