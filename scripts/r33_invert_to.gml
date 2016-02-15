///r33_invert_to(M, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      det = a00*a11*a22+a10*a21*a02+a20*a01*a12
           -a00*a21*a12-a20*a11*a02-a10*a01*a22;
  if (det == 0) {
    return undefined;
  }
  else {
    argument1[@ 0, 0] = (a11*a22-a12*a21)/det;
    argument1[@ 0, 1] = (a02*a21-a01*a22)/det;
    argument1[@ 0, 2] = (a01*a12-a02*a11)/det;
    argument1[@ 1, 0] = (a12*a20-a10*a22)/det;
    argument1[@ 1, 1] = (a00*a22-a02*a20)/det;
    argument1[@ 1, 2] = (a02*a10-a00*a12)/det;
    argument1[@ 2, 0] = (a10*a21-a11*a20)/det;
    argument1[@ 2, 1] = (a01*a20-a00*a21)/det;
    argument1[@ 2, 2] = (a00*a11-a01*a10)/det;
    return argument1;
  }
}
