///r2_unit_to(v, vout)
{
  var factor = 1/sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]);
  argument1[@ 0] = factor*argument0[0];
  argument1[@ 1] = factor*argument0[1];
  return argument1;
}
