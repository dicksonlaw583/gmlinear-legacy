///r4_unit(v)
{
  var factor = 1/sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]+argument0[2]*argument0[2]+argument0[3]*argument0[3]);
  var result;
  result[0] = factor*argument0[0];
  result[1] = factor*argument0[1];
  result[2] = factor*argument0[2];
  result[3] = factor*argument0[3];
  return result;
}
