///rmn_encode_string(M)
{
  var result = "",
      m = array_height_2d(argument0),
      n = array_length_2d(argument0, 0);
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      if (j > 0) result += ",";
      result += string_format(argument0[i, j], 15, 14);
    }
    if (i < m-1) {
      result += ";";
    }
  }
  return string_replace_all(result, ' ', '');
}
