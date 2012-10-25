//
// 
//
Elevator = function(landings) {
  //
  // Directs the elevator car to continue or stop at the 
  // current floor
  //
  // Arguments
  //
  //   landing - the floor that the elevator is on
  //
  // Returns true if the car should stop on this floor, otherwise false
  //
  this.arrive = function(landing) {
    return false;
  };
  
  //
  // Indicates someone outside the elevator car on the given floor
  // would like to go a specific direction.
  //
  // Arguments
  //
  //   landing   - the floor the person is on
  //   direction - a string, either "up" or "down"
  //
  this.hallCall = function(landing, direction) {
  };
  
  //
  // Indicates a passenger inside the elevator car would like to go
  // to a specific floor.
  //
  // Arguments
  //
  //   landing - the floor the passenger wants to go to
  //
  this.carCall = function(landing) {
  };
  
  // 
  // Controls the direction of the elevator.
  //
  // Returns a string that is one of
  // 
  //   "up"      - the elevator should go to the next floor up
  //   "down"    - the elevator should go to the next floor down
  //   "stopped" - the elevator should stay where it is
  // 
  this.direction = function() {
    return "stopped";
  };
};