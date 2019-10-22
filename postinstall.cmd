(if not exist \home mkdir \home)
(if not exist \home\nodered mkdir \home\nodered)
(if not exist \home\nodered\.node-red mkdir \home\nodered\.node-red)
move flows*.json \home\nodered\.node-red /y
copy npm_.cmd \home\nodered\.node-red\npm_.cmd /y
pushd \home\nodered\.node-red
npm install node-red-dashboard node-red-contrib-azureiothubnode node-red-contrib-cognitive-services node-red-contrib-azure-blob-storage node-red-contrib-azure-table-storage node-red-contrib-azure-sql node-red-contrib-azure-documentdb node-red-contrib-azureiotc2d @jfdi/node-red-node-swagger
npm install node-red-contrib-filter-else node-red-contrib-frequency-meter node-red-contrib-time-range-switch node-red-contrib-unsafe-function node-red-node-data-generator node-red-node-rbe node-red-node-suncalc node-red-node-openweathermap
copy npm_.cmd npm.cmd /y
popd 
copy npm_.cmd npm.cmd /y
npm install @jfdi/bobb-authorisation-lib json-rules-engine moment get-value azure-storage suncalc arithmetic-js geolib geo-tz lodash
