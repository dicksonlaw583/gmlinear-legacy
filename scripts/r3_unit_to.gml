///r3_unit_to(v, vout)
{
  if ((argument0[0] == 0) && (argument0[1] == 0) && (argument0[2] == 0)) {
    argument1[@ 0] = 0;
    argument1[@ 1] = 0;
    argument1[@ 2] = 0;
    return argument1;
  }
  var factor = 1/sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]+argument0[2]*argument0[2]);
  argument1[@ 0] = factor*argument0[0];
  argument1[@ 1] = factor*argument0[1];
  argument1[@ 2] = factor*argument0[2];
  return argument1;
}
