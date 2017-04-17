init();
clearvars;

devices =   {'PDue0001', 'PDue0002', 'PDue0003', 'PDue0004', 'PDue0005'};
positions = {[0,2], [2,0], [2,2], [0,1], [1,1]}; % placement1
% positions = {[0,2], [0.5,1], [0.5,1], [0,1], [1,1]}; % palcement2
% placement of 02 and 03 might be messed up

devPos = containers.Map(devices, positions);

path = '/Users/s4keng/courses/connected_embedded/lab3/2d/0,2_0,1_2,0_Sound1,1(1).csv';
% path = '/Users/s4keng/courses/connected_embedded/lab3/2d/0,2_0,1_1,1_0.5,1_Sound0,1.5(3).csv';
f = readFile(path);
sensorNum = length(f);

vSound = 343;

sensorLocations = zeros(sensorNum,2);
for i=1:sensorNum
    sensorLocations(i,:) = devPos(f{i}.DeviceID);
end
              
estimate = getLocationEstimate(f,sensorLocations,vSound);
expected = [1 1];
dError = norm([estimate, expected]);