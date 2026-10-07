\# Orbit Decay Simulation (MATLAB)



Orbit propagation of a small satellite with atmospheric drag, using ode113.





\## Model

\- Two-body gravity plus drag

\- Density from an interpolated table (Braeunig), log-interpolated

\- Optional co-rotating atmosphere

\- Re-entry event at 100 km



\## Assumptions

\- Start altitude 400 km, equatorial circular orbit

\- Scale height H = 46e3 m

\- C\_D = 2.2, mass 4 kg, area 0.3 m^2,

\- Fixed density table (real density varies a lot with solar activity)



\## Results

Altitude\_0 = 400 km

Time for re-entry without Earth rotation: 84.38 days

Time for re-entry with Earth rotation: 73.98 days

Time for re-entry without Earth rotation: 84.38 days



\## How to run

Open orbit\_decay.m in MATLAB and run.





\## Bibliography

http://www.braeunig.us/space/atmos.htm



