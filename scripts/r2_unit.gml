///r2_unit(v)
{
  var factor = 1/sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]);
  var result;
  result[0] = factor*argument0[0];
  result[1] = factor*argument0[1];
  return result;
}
