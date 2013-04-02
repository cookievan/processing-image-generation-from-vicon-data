class Joint {
  int id;
  String name; 
  float x, y, z;
  color c; 
  
  private float scalef = 5;
  
  public Joint(int id, String[] pieces) {
    this.id = id;
    this.name = pieces[0];
    this.x = float(pieces[1]) * scalef;
    this.y = float(pieces[2]) * scalef;
    this.z = float(pieces[3]) * scalef; 
    this.c = getBlueColor(this.id); 
  }
  

  color getPinkColor(int id) {
    color c;
    switch (id) {
      case 0:  //root
        c = color(85, 5, 173);
        break;
      case 1:  //root_L_1
      case 18:
        c = color(90, 5, 173);
        break;
      case 2: //lhipjoint
      case 19: 
        c = color(95, 5, 173);
        break;
      case 3: //lhipjoint 1
      case 20:
        c = color(100, 5, 173);
        break;
      case 4: //lhipjoint 2
      case 21:
        c = color(105, 5, 173);
        break;
      case 5: //lhipjoint 3
      case 22:
        c = color(110, 5, 173);
        break;
      case 6: //lhipjoint 4
      case 23:
        c = color(115, 5, 173);
        break;
      case 7: //lfemur      
      case 24:
        c = color(120, 5, 173);
        break;
      case 8: //lfemur 1
      case 25:
        c = color(125, 5, 173);
        break;
      case 9: //lfemur 2
      case 26:
        c = color(130, 5, 173);
        break;
      case 10: //lfemur 3
      case 27:
        c = color(135, 5, 173);
        break;
      case 11: //ltibia
      case 28:
        c = color(140, 5, 173);
        break;
      case 12: //ltibia 1
      case 29:
        c = color(145, 5, 173);
        break;
      case 13: //ltibia 2
      case 30:
        c = color(150, 5, 173);
        break;
      case 14: //ltibia 3
      case 31:
        c = color(155, 5, 173);
        break;
      case 15: //ltibia 4
      case 32:
        c = color(0, 0, 0);
        break;
      case 16: //lfoot
      case 33:
        c = color(0, 0, 0);
        break;
      case 17: //ltoes
      case 34: 
        c = color(0, 0, 0);
        break;
      case 35: //lowerback
        c = color(80, 5, 173);
        break;   
      case 36: //upperback
        c = color(75, 5, 173);
        break;
      case 37: //upperback 1
        c = color(70, 5, 173);
        break;
      case 38: //thorax
        c = color(65, 5, 173);
        break;
      case 39: //thorax 1
        c = color(60, 5, 173);
        break;
      case 40: //lowerneck center
        c = color(55, 5, 173);
        break;
      case 41: //lowerneckL_1 arm
      case 59:
        c = color(60, 5, 173);
        break;
      case 42: //lowerneckL_2 arm
      case 60:
        c = color(65, 5, 173);
        break;
      case 43: //neck joint
        c = color(60, 5, 173);
        break;        
      case 44: //upperneck
        c = color(75, 5, 173);
        break;
      case 45: //upperneck_1
        c = color(90, 5, 173);
        break;
      case 46: //head
        c = color(105, 5, 173);
        break;
      case 47: //lclavicle
      case 61:
        c = color(75, 5, 173);
        break;
      case 48: //lclavicle 1
      case 62:
        c = color(85, 5, 173);
        break;
      case 49: //lclavicle 2
      case 63:
        c = color(95, 5, 173);
        break;
      case 50: //lclavicle 3
      case 64:
        c = color(105, 5, 173);
        break;
      case 51: //lhumerus
      case 65:
        c = color(115, 5, 173);
        break;
      case 52: //lhumerus 1
      case 66:
        c = color(125, 5, 173);
        break;
      case 53: //lradius
      case 67:
        c = color(135, 5, 173);
        break;
      case 54: //lradius 1
      case 68:
        c = color(145, 5, 173);
        break;
      case 55: //lwrist
      case 69:
        c = color(155, 5, 173);
        break;
      case 56: //lhand
      case 70:
        c = color(165, 5, 173);
        break;
      case 57: //lfingers
      case 71:
        c = color(0, 0, 0);
        break;
      case 58: //lthumb
      case 72:
        c = color(0, 0, 0);
        break;             
      default:
        c = color(255, 255, 255);
        break;
      }
      return c;
  }
  
  color getBlueColor(int id) {
    color c;
    switch (id) {
      case 0:  //root
        c = color(7, 23, 165);
        break;
      case 1:  //root_L_1
      case 18:
        c = color(7, 33, 165);
        break;
      case 2: //lhipjoint
      case 19: 
        c = color(8, 43, 165);
        break;
      case 3: //lhipjoint 1
      case 20:
        c = color(8, 53, 165);
        break;
      case 4: //lhipjoint 2
      case 21:
        c = color(8, 63, 165);
        break;
      case 5: //lhipjoint 3
      case 22:
        c = color(8, 73, 165);
        break;
      case 6: //lhipjoint 4
      case 23:
        c = color(8, 83, 165);
        break;
      case 7: //lfemur      
      case 24:
        c = color(8, 93, 165);
        break;
      case 8: //lfemur 1
      case 25:
        c = color(8, 103, 165);
        break;
      case 9: //lfemur 2
      case 26:
        c = color(8, 113, 165);
        break;
      case 10: //lfemur 3
      case 27:
        c = color(8, 123, 165);
        break;
      case 11: //ltibia
      case 28:
        c = color(8, 133, 165);
        break;
      case 12: //ltibia 1
      case 29:
        c = color(8, 143, 165);
        break;
      case 13: //ltibia 2
      case 30:
        c = color(8, 153, 165);
        break;
      case 14: //ltibia 3
      case 31:
        c = color(8, 164, 165);
        break;
      case 15: //ltibia 4
      case 32:
        c = color(0, 0, 0);
        break;
      case 16: //lfoot
      case 33:
        c = color(0, 0, 0);
        break;
      case 17: //ltoes
      case 34: 
        c = color(0, 0, 0);
        break;
      case 35: //lowerback
        c = color(7, 23, 165);
        break;   
      case 36: //upperback
        c = color(7, 20, 165);
        break;
      case 37: //upperback 1
        c = color(7, 20, 165);
        break;
      case 38: //thorax
        c = color(7, 20, 165);
        break;
      case 39: //thorax 1
        c = color(7, 20, 165);
        break;
      case 40: //lowerneck
        c = color(7, 30, 165);
        break;
      case 41: //lowerneckL_1 arm
      case 59:
        c = color(7, 30, 165);
        break;
      case 42: //lowerneckL_2 arm
      case 60:
        c = color(7, 40, 165);
        break;
      case 43: //neck joint
        c = color(7, 40, 165);
        break;        
      case 44: //upperneck
        c = color(7, 55, 165);
        break;
      case 45: //upperneck_1
        c = color(7, 70, 165);
        break;
      case 46: //head
        c = color(7, 85, 165);
        break;
      case 47: //lclavicle
      case 61:
        c = color(7, 43, 165);
        break;
      case 48: //lclavicle 1
      case 62:
        c = color(8, 53, 165);
        break;
      case 49: //lclavicle 2
      case 63:
        c = color(8, 63, 165);
        break;
      case 50: //lclavicle 3
      case 64:
        c = color(8, 73, 165);
        break;
      case 51: //lhumerus
      case 65:
        c = color(8, 83, 165);
        break;
      case 52: //lhumerus 1
      case 66:
        c = color(8, 93, 165);
        break;
      case 53: //lradius
      case 67:
        c = color(8, 103, 165);
        break;
      case 54: //lradius 1
      case 68:
        c = color(8, 113, 165);
        break;
      case 55: //lwrist
      case 69:
        c = color(8, 123, 165);
        break;
      case 56: //lhand
      case 70:
        c = color(8, 133, 165);
        break;
      case 57: //lfingers
      case 71:
        c = color(0, 0, 0);
        break;
      case 58: //lthumb
      case 72:
        c = color(0, 0, 0);
        break;             
      default:
        c = color(255, 255, 255);
        break;
      }
      return c;
  }
}
