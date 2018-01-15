# position/latitude-deg  -50.3397 -50.3851 -50.4459 -50.2217
# position/longitude-deg -72.7169 -72.8020 -72.7073 -72.8704
# position/ground-elev-ft
# position/altitude-agl-ft
# 
# 
# environment/local-weather-lift-fps
#
#
#
#
#
# ai/models/thermal[0]/radar/range-nm
#
#
#


wave_lift = func {
  
settimer (wave_lift, 25);

var altitude = getprop("position/altitude-ft");
var th1 = getprop("/ai/models/thermal[0]/radar/range-nm");
if ( th1 == nil ) return;
var th2 = getprop("/ai/models/thermal[1]/radar/range-nm");
if ( th2 == nil ) return;
var th3 = getprop("/ai/models/thermal[2]/radar/range-nm");
if ( th3 == nil ) return;
var th4 = getprop("/ai/models/thermal[3]/radar/range-nm");
if ( th4 == nil ) return;


if ((th1 < 3) or (th2 < 3) or (th3 < 3) or (th4 < 3))

  {
  interpolate("/environment/local-weather-lift-fps", 30, 24);
  }
 
else

{   
if ((th1 < 3.5) or (th2 < 3.5) or (th3 < 3.5) or (th4 < 3.5))
  {
  interpolate("/environment/local-weather-lift-fps", -20, 12);
  }
  else
    {
    interpolate("/environment/local-weather-lift-fps", 0, 24);
    }
}   
    
    
};

wave_lift();


########################################################################################################
# Parachutes Door Control
#
#controls/parachutes/signal
#  {


setlistener("controls/parachutes/signal", func(v)

{ 
  if(v.getValue() == 1)
  {  
  setprop("sim/messages/copilot", "Drag Parachute is deploying!");
  doors.parachutes.toggle()
  }
  else {
  if(v.getValue() == 0)
  {
  setprop("sim/messages/copilot", "Drag Parachute is gone!");
  doors.parachutes.toggle()
  }}
});



