///r4_dist(v1, v2)
{
  var d0 = argument1[0]-argument0[0],
      d1 = argument1[1]-argument0[1],
      d2 = argument1[2]-argument0[2],
      d3 = argument1[3]-argument0[3];
  return sqrt(d0*d0 + d1*d1 + d2*d2 + d3*d3);
}