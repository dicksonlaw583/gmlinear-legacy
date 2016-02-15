///r44_invert(M)
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
      det = a00*a11*a22*a33+a00*a12*a23*a31+a00*a13*a21*a32
           +a01*a10*a23*a32+a01*a12*a20*a33+a01*a13*a22*a30
           +a02*a10*a21*a33+a02*a11*a23*a30+a02*a13*a20*a31
           +a03*a10*a22*a31+a03*a11*a20*a32+a03*a12*a21*a30
           -a00*a11*a23*a32-a00*a12*a21*a33-a00*a13*a22*a31
           -a01*a10*a22*a33-a01*a12*a23*a30-a01*a13*a20*a32
           -a02*a10*a23*a31-a02*a11*a20*a33-a02*a13*a21*a30
           -a03*a10*a21*a32-a03*a11*a22*a30-a03*a12*a20*a31;
  if (det == 0) {
    return undefined;
  }
  else {
    var result;
    result[0, 0] = (a11*a22*a33+a12*a23*a31+a13*a21*a32-a11*a23*a32-a12*a21*a33-a13*a22*a31)/det;
    result[0, 1] = (a01*a23*a32+a02*a21*a33+a03*a22*a31-a01*a22*a33-a02*a23*a31-a03*a21*a32)/det;
    result[0, 2] = (a01*a12*a33+a02*a13*a31+a03*a11*a32-a01*a13*a32-a02*a11*a33-a03*a12*a31)/det;
    result[0, 3] = (a01*a13*a22+a02*a11*a23+a03*a12*a21-a01*a12*a23-a02*a13*a21-a03*a11*a22)/det;
    result[1, 0] = (a10*a23*a32+a12*a20*a33+a13*a22*a30-a10*a22*a33-a12*a23*a30-a13*a20*a32)/det;
    result[1, 1] = (a00*a22*a33+a02*a23*a30+a03*a20*a32-a00*a23*a32-a02*a20*a33-a03*a22*a30)/det;
    result[1, 2] = (a00*a13*a32+a02*a10*a33+a03*a12*a30-a00*a12*a33-a02*a13*a30-a03*a10*a32)/det;
    result[1, 3] = (a00*a12*a23+a02*a13*a20+a03*a10*a22-a00*a13*a22-a02*a10*a23-a03*a12*a20)/det;
    result[2, 0] = (a10*a21*a33+a11*a23*a30+a13*a20*a31-a10*a23*a31-a11*a20*a33-a13*a21*a30)/det;
    result[2, 1] = (a00*a23*a31+a01*a20*a33+a03*a21*a30-a00*a21*a33-a01*a23*a30-a03*a20*a31)/det;
    result[2, 2] = (a00*a11*a33+a01*a13*a30+a03*a10*a31-a00*a13*a31-a01*a10*a33-a03*a11*a30)/det;
    result[2, 3] = (a00*a13*a21+a01*a10*a23+a03*a11*a20-a00*a11*a23-a01*a13*a20-a03*a10*a21)/det;
    result[3, 0] = (a10*a22*a31+a11*a20*a32+a12*a21*a30-a10*a21*a32-a11*a22*a30-a12*a20*a31)/det;
    result[3, 1] = (a00*a21*a32+a01*a22*a30+a02*a20*a31-a00*a22*a31-a01*a20*a32-a02*a21*a30)/det;
    result[3, 2] = (a00*a12*a31+a01*a10*a32+a02*a11*a30-a00*a11*a32-a01*a12*a30-a02*a10*a31)/det;
    result[3, 3] = (a00*a11*a22+a01*a12*a20+a02*a10*a21-a00*a12*a21-a01*a10*a22-a02*a11*a20)/det;
    return result;
  }
}
