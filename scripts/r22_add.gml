///r22_add(M1, M2)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0]+argument1[0, 0];
  M_new[0, 1] = argument0[0, 1]+argument1[0, 1];
  M_new[1, 0] = argument0[1, 0]+argument1[1, 0];
  M_new[1, 1] = argument0[1, 1]+argument1[1, 1];
  return M_new;
}
