///r2_unit(v)
{
 var result;
 if ((argument0[0] == 0) && (argument0[1] == 0)) {
    result[0] = 0;
    result[1] = 0;
    return result;
 }
  var factor = 1/sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]);
  
  result[0] = factor*argument0[0];
  result[1] = factor*argument0[1];
  return result;
}
