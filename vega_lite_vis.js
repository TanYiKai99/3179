var vg_1 = "vg_json/France Michelin Stars/france_michelin_symbol_map.vg.json";
vegaEmbed("#Symbol_map", vg_1).then(function(result) {
// Access the Vega view instance(https://vega.github.io/vega/docs/api/view/) as result.view
}).catch(console.error);

var vg_2 = "vg_json/World Michelin Stars/1star_michelin_choropleth.vg.json";
vegaEmbed("#one_star_choro", vg_2).then(function(result) {
    // Access the Vega view instance(https://vega.github.io/vega/docs/api/view/) as result.view
    }).catch(console.error);

var vg_3 = "vg_json/World Michelin Stars/2star_michelin_choropleth.vg.json";
vegaEmbed("#two_star_choro", vg_3).then(function(result) {
    // Access the Vega view instance(https://vega.github.io/vega/docs/api/view/) as result.view
    }).catch(console.error);
    
var vg_4 = "vg_json/World Michelin Stars/3star_michelin_choropleth.vg.json";
vegaEmbed("#three_star_choro", vg_4).then(function(result) {
    // Access the Vega view instance(https://vega.github.io/vega/docs/api/view/) as result.view
    }).catch(console.error);

var vg_5 = "vg_json/World Michelin Stars/Bib_Gourmand_choropleth.vg.json";
vegaEmbed("#Bib_Gourmand_choro", vg_5).then(function(result) {
    // Access the Vega view instance(https://vega.github.io/vega/docs/api/view/) as result.view
    }).catch(console.error);

var vg_6 = "vg_json/Word Cloud/Wordcloud.vega";
vegaEmbed("#word_cloud", vg_6).then(function(result) {
    // Access the Vega view instance(https://vega.github.io/vega/docs/api/view/) as result.view
    }).catch(console.error);

var vg_7 = "vg_json/Price range/price_range_scatterplot.vg.json";
vegaEmbed("#scatter_plot", vg_7).then(function(result) {
    // Access the Vega view instance(https://vega.github.io/vega/docs/api/view/) as result.view
    }).catch(console.error);