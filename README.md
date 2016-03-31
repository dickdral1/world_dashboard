# Apex World Dashboard
##Introduction
The Apex World Dashboard is a dashboard on statistical data on most countries of the world. You can wander through this data to explore the diversity in the world. Find out unexpected answers to questions like which country has the most medical doctors per capita, or which country is mostly covered with forest. You can drill down in charts and maps. The comparison table enables to see the relative position of a country on a certain aspect. 

##How to use the Apex World Dashboard
When you start the AWD, you are presented with the World data on population. 

The top region contains controls to choose county and subject. 

Directly below is an area that presents the key data for the chosen country and subject in four coloured rectangles. 

Below this the content is different for countries and other areas. 

For countries a comparison table is shown with the data for the chosen subject. The chosen country and four adjacent countries are shown, as are the highest and lowest 3 ranking countries are shown. It is possible to click the headers to sort on that column. You can select another country by clicking on the name in the table. For population and agriculture a bar is in the table with resp. age distribution and land usage. 

Next to this table a map is shown, in which the current country is highlighted in red. 

Below this a line chart shows the most important trends on the current subject over the last ten year. 

For other areas a distribution is shown in the form of a sunburst chart. This chart shows for each area a number and a color. For population for example, the size of the pieces shows the size of the population and the color shows the population growth. 

Next to the sunburst chart a map shows the same data. Both the chart and the map are clickable. 

##Choosing of countries and subjects
A country can be chosen in a number of ways. 
- You can use the select list on top
- You can click on a section of the sunburst chart
- You can click on a country on the map
- You can click on the name of a country in the comparison table

To change the subject the select list can be used. 

##Display of numbers
Some numbers are very large, like the population of China or the area of Russia. These numbers are made more readable by using letters for each power of thousands, the same way in computer memory. So 1K = 1,000 and 1M = 1,000,000. The next levels are G and T. 

#Technical solutions

##Identification of countries and hierarchy
The rules of the Apex Dashboard Competition allowed no DDL and DML, so all additional data are stored in the application itself. 
The additional country information like english country names, ISO codes and hierarchy ( belongs to (sub)continent) are stored in a collection, that is filled at startup. All country data is aggregated to the higher levels. 

##Comparison Table
- The comparison table is a standard Apex report. 
- Columns in the report are conditionally hidden dependant on the chosen subject. 
- All rows are selected, but irrelevant rows are hidden or changed to grey separation bars. A combination of JavaScript and CSS is used. 
- The formatting of the numbers is done after the rendering of the report, otherwise the sorting would be incorrect ( alphnumerically)
- The sorting is always initially descending, so the largest values come first ( the largest country, the largest population etc.)
- The flags are shown using a single image with sprites. 

##Information cards
The information cards are created with Named Column Report templates combined with the appropiate CSS. The query supplies the numbers, text and icons, depending on the subject. 
There are also some media queries in the CSS so the cards react to the width of the window. 

##Sunburst Chart
This chart is an Oracle JET component. The JSON data is collected in an application process that is called with apex.server.process. The correct timing is ensured by using JQuery promises. JavaScript is used to enrich the data ( text for popup) and to implement the click events on the SVG elements for the drilldown. 
The legend is a seperate Oracle JET component.

#Known issues
- Sunburst Chart: sometimes choosing the country by clicking does not work
- Maps: sometimes in Chrome and Safari the maps show an error message. Making the window larger may and reloading may fix this problem.
- Maps: Separate maps for Asia and Australia are not available, so for these area's the World map is shown
- Sometimes specific data are not available for a country. In the table the corresponding cells are left empty. 
- 
