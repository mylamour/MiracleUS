#include "walkstraightto1.ih"

rf<Behavior::Goal> WalkStraightTo1::generateGoal(unsigned step, unsigned slot)
{
  d_committed = true;

  WorldModel& wm = WorldModel::getInstance();
  
  rf<Goal> goal = new Goal();
  rf<OrNode> dis = goal->addDisjunct();
  rf<AndNode> con = dis->addConjunct();

  con->addVar("Weight1", 1, 1); // forward
  con->addVar("Weight2", 0, 0); // backward

  return goal;
}
