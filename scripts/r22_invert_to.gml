///r22_invert_to(M)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      det = a00*a11-a01*a10;
  if (det == 0) {
    return undefined;
  }
  else {
    argument1[@ 0, 0] = a11/det;
    argument1[@ 0, 1] = -a01/det;
    argument1[@ 1, 0] = -a10/det;
    argument1[@ 1, 1] = a00/det;
    return argument1;
  }
}
