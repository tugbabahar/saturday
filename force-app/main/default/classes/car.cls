  public class car {
    
    
    public string carColor = '';
    public string carName = '';
    

    integer maxSpeedKmPerHr = 150;
    public void switchOn(){
        
        system.debug('starting the car');
    }

    public void drive(){
        system.debug('driving ' + carName);
    }

    public void driveAtMaxSpeed(){
        string drivingDescription = 'driving ' + carName + ' at ' + maxSpeedKmPerHr + 'km/h';
        system.debug(drivingDescription);
    }

}