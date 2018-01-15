
The Perlan-II stratospheric Glider in FlightGear is ready to bring you up to 90000 ft.


Copy the files and folder in AI to: FG-data/AI
Copy the files in Model-Geometry to FG-data/Models/Geometry

Adjusting the performancedb.xml in the AI/Aircraft folder:
Open the performancedb.xml file and search for this block:

    <!-- catch all for various light aicraft in the traffic DB -->
    <alias>
      <match>CNA</match> <!-- generic Cessna apparently -->
      <match>c172</match>
      <match>c177</match>
      <match>c182</match>
      <match>pa28</match>
      <match>Cub</match>
      <alias>light</alias>
    </alias>
    
    You have to add the line with the "c177" and safe the file. Now the c177 has a FDM. Cool ha!

################################################################################################
    
This will give you 2 new AI-scenarios: "wavelift" and "SAWC-Carlafate towing"

- with the wavelift clouds, up- and down winds
- and a AI Aircraft whitch brings you to 10000 ft with 60 waypoints!

Located in Patagonia near Carlafate (Code SAWC):
Open your internal map, the you see the wave clouds as traffic objects.


x4...............................................32.5nm




.......x1........................................26.5nm

.......................................................................x Carlafate Airfeeld
..x2.............................................30nm




.....x3..........................................27.9nm


################################################################################################

For realistic Weather go to Weather Conditions: Fair weather -- Detailed Weather -- Advanced Settings
Tile Selection Mode: realistic
Terrain Effects and Terrain Presampling: on
Wind Model: aloft interpolated

Check your wind configuration:
FL0 260 12
FL50 262 16
FL100 264 20
FL180 265 28
FL240 269 39
FL300 273 47
FL340 278 54
FL390 271 59
FL450 275 68

#################################################################################################

The towing will start a Cessna 177 with sound at the apron,
it then will go to the startpoint for towing on the east side of the runway.
Use the speedbrakes to compensate for the elastic rope at start-up.

##################################################################################################

Have fun!

For more infos:

http://www.perlanproject.org/


The original 3D model is from Carlos Reynoso.