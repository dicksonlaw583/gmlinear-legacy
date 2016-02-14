///r44_multiply(M1, M2)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a03 = argument0[0, 3],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a13 = argument0[1, 3],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      a23 = argument0[2, 3],
      a30 = argument0[3, 0],
      a31 = argument0[3, 1],
      a32 = argument0[3, 2],
      a33 = argument0[3, 3],
      b00 = argument1[0, 0],
      b01 = argument1[0, 1],
      b02 = argument1[0, 2],
      b03 = argument1[0, 3],
      b10 = argument1[1, 0],
      b11 = argument1[1, 1],
      b12 = argument1[1, 2],
      b13 = argument1[1, 3],
      b20 = argument1[2, 0],
      b21 = argument1[2, 1],
      b22 = argument1[2, 2],
      b23 = argument1[2, 3],
      b30 = argument1[3, 0],
      b31 = argument1[3, 1],
      b32 = argument1[3, 2],
      b33 = argument1[3, 3];
  var M_new;
  M_new[0, 0] = a00*b00 + a01*b10 + a02*b20 + a03*b30;
  M_new[0, 1] = a00*b01 + a01*b11 + a02*b21 + a03*b31;
  M_new[0, 2] = a00*b02 + a01*b12 + a02*b22 + a03*b32;
  M_new[0, 3] = a00*b03 + a01*b13 + a02*b23 + a03*b33;
  M_new[1, 0] = a10*b00 + a11*b10 + a12*b20 + a13*b30;
  M_new[1, 1] = a10*b01 + a11*b11 + a12*b21 + a13*b31;
  M_new[1, 2] = a10*b02 + a11*b12 + a12*b22 + a13*b32;
  M_new[1, 3] = a10*b03 + a11*b13 + a12*b23 + a13*b33;
  M_new[2, 0] = a20*b00 + a21*b10 + a22*b20 + a23*b30;
  M_new[2, 1] = a20*b01 + a21*b11 + a22*b21 + a23*b31;
  M_new[2, 2] = a20*b02 + a21*b12 + a22*b22 + a23*b32;
  M_new[2, 3] = a20*b03 + a21*b13 + a22*b23 + a23*b33;
  M_new[3, 0] = a30*b00 + a31*b10 + a32*b20 + a33*b30;
  M_new[3, 1] = a30*b01 + a31*b11 + a32*b21 + a33*b31;
  M_new[3, 2] = a30*b02 + a31*b12 + a32*b22 + a33*b32;
  M_new[3, 3] = a30*b03 + a31*b13 + a32*b23 + a33*b33;
  return M_new;
}
