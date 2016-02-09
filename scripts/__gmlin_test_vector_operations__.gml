{
  //r2_clone(v)
  var test_r2_original = r2(3, 2);
  assert_isnt(r2_clone(test_r2_original), test_r2_original, "r2() clone isn't cloning!");
  assert_equal(r2_clone(test_r2_original), test_r2_original, "r2() clone is different!");
  //r3_clone(v)
  var test_r3_original = r3(52, 2, 57);
  assert_isnt(r3_clone(test_r3_original), test_r3_original, "r3() clone isn't cloning!");
  assert_equal(r3_clone(test_r3_original), test_r3_original, "r3() clone is different!");
  //r4_clone(v)
  var test_r4_original = r4(23, 7, 52, 53);
  assert_isnt(r4_clone(test_r4_original), test_r4_original, "r4() clone isn't cloning!");
  assert_equal(r4_clone(test_r4_original), test_r4_original, "r4() clone is different!");
  //rn_clone(v)
  var test_rn_original = rn(23, 7, 52, 22, 52, 2, 57);
  assert_isnt(rn_clone(test_rn_original), test_rn_original, "rn() clone isn't cloning!");
  assert_equal(rn_clone(test_rn_original), test_rn_original, "rn() clone is different!");
  
  
  //r2_add(v1, v2)
  var test_r2_add_v1 = r2(7, 2),
      test_r2_add_v2 = r2(5, 9);
  assert_equal(r2_add(test_r2_add_v1, test_r2_add_v2), r2(12, 11), "r2_add() failed!");
  //r3_add(v1, v2)
  var test_r3_add_v1 = r3(27, 15, 30),
      test_r3_add_v2 = r3(12, 33, 21);
  assert_equal(r3_add(test_r3_add_v1, test_r3_add_v2), r3(39, 48, 51), "r3_add() failed!");
  //r4_add(v1, v2)
  var test_r4_add_v1 = r4(1, 2, 3, 4),
      test_r4_add_v2 = r4(9, 18, 27, 36);
  assert_equal(r4_add(test_r4_add_v1, test_r4_add_v2), r4(10, 20, 30, 40), "r4_add() failed!");
  //rn_add(v1, v2)
  assert_equal(rn_add(test_r2_add_v1, test_r2_add_v2), r2(12, 11), "rn_add() isn't compatible with 2D vectors!");
  assert_equal(rn_add(test_r3_add_v1, test_r3_add_v2), r3(39, 48, 51), "rn_add() isn't compatible with 3D vectors!");
  assert_equal(rn_add(test_r4_add_v1, test_r4_add_v2), r4(10, 20, 30, 40), "rn_add() isn't compatible with 4D vectors!");
  var test_rn_add_v1 = rn(2, 4, 6, 8, 10, 12, 14),
      test_rn_add_v2 = rn(100, 99, 98, 97, 96, 95, 94);
  assert_equal(rn_add(test_rn_add_v1, test_rn_add_v2), rn(102, 103, 104, 105, 106, 107, 108), "rn_add() failed!");
  
  //r2_add_to(v1, v2, vout)
  var test_r2_addto_v1 = r2(3, 5),
      test_r2_addto_v2 = r2(-4, 6),
      test_r2_addto_vout = r2_zero(),
      test_r2_addto_result = r2_add_to(test_r2_addto_v1, test_r2_addto_v2, test_r2_addto_vout);
  assert_is(test_r2_addto_result, test_r2_addto_vout, "r2_add_to() didn't return vout!");
  assert_equal(test_r2_addto_result, r2(-1, 11), "r2_add_to() failed!");
  test_r2_addto_result = r2_add_to(test_r2_addto_v1, test_r2_addto_v2, test_r2_addto_v1);
  assert_is(test_r2_addto_result, test_r2_addto_v1, "r2_add_to() didn't return vout if it is v1!");
  assert_equal(test_r2_addto_v1, r2(-1, 11), "r2_add_to() failed if vout is v1!");
  test_r2_addto_v1 = r2(3, 5);
  test_r2_addto_result = r2_add_to(test_r2_addto_v1, test_r2_addto_v2, test_r2_addto_v2);
  assert_is(test_r2_addto_result, test_r2_addto_v2, "r2_add_to() didn't return vout if it is v2!");
  assert_equal(test_r2_addto_v2, r2(-1, 11), "r2_add_to() failed if vout is v2!");
  test_r2_addto_v2 = r2(-4, 6);
  //r3_add_to(v1, v2, vout)
  var test_r3_addto_v1 = r3(3, 5, 7),
      test_r3_addto_v2 = r3(-4, 6, -10),
      test_r3_addto_vout = r3_zero(),
      test_r3_addto_result = r3_add_to(test_r3_addto_v1, test_r3_addto_v2, test_r3_addto_vout);
  assert_is(test_r3_addto_result, test_r3_addto_vout, "r3_add_to() didn't return vout!");
  assert_equal(test_r3_addto_result, r3(-1, 11, -3), "r3_add_to() failed!");
  test_r3_addto_result = r3_add_to(test_r3_addto_v1, test_r3_addto_v2, test_r3_addto_v1);
  assert_is(test_r3_addto_result, test_r3_addto_v1, "r3_add_to() didn't return vout if it is v1!");
  assert_equal(test_r3_addto_v1, r3(-1, 11, -3), "r3_add_to() failed if vout is v1!");
  test_r3_addto_v1 = r3(3, 5, 7);
  test_r3_addto_result = r3_add_to(test_r3_addto_v1, test_r3_addto_v2, test_r3_addto_v2);
  assert_is(test_r3_addto_result, test_r3_addto_v2, "r3_add_to() didn't return vout if it is v2!");
  assert_equal(test_r3_addto_v2, r3(-1, 11, -3), "r3_add_to() failed if vout is v2!");
  test_r3_addto_v2 = r3(-4, 6, -10);
  //r4_add_to(v1, v2, vout)
  var test_r4_addto_v1 = r4(3, 5, 7, 9),
      test_r4_addto_v2 = r4(-4, 6, -10, 14),
      test_r4_addto_vout = r4_zero(),
      test_r4_addto_result = r4_add_to(test_r4_addto_v1, test_r4_addto_v2, test_r4_addto_vout);
  assert_is(test_r4_addto_result, test_r4_addto_vout, "r4_add_to() didn't return vout!");
  assert_equal(test_r4_addto_result, r4(-1, 11, -3, 23), "r4_add_to() failed!");
  test_r4_addto_result = r4_add_to(test_r4_addto_v1, test_r4_addto_v2, test_r4_addto_v1);
  assert_is(test_r4_addto_result, test_r4_addto_v1, "r4_add_to() didn't return vout if it is v1!");
  assert_equal(test_r4_addto_v1, r4(-1, 11, -3, 23), "r4_add_to() failed if vout is v1!");
  test_r4_addto_v1 = r4(3, 5, 7, 9);
  test_r4_addto_result = r4_add_to(test_r4_addto_v1, test_r4_addto_v2, test_r4_addto_v2);
  assert_is(test_r4_addto_result, test_r4_addto_v2, "r4_add_to() didn't return vout if it is v2!");
  assert_equal(test_r4_addto_v2, r4(-1, 11, -3, 23), "r4_add_to() failed if vout is v2!");
  test_r4_addto_v2 = r4(-4, 6, -10, 14);
  //rn_add_to(v1, v2, vout)
  var test_rn_addto_v1 = rn(3, 5, 7, 9, 11, 13),
      test_rn_addto_v2 = rn(-4, 6, -10, 14, -16, 20),
      test_rn_addto_vout = rn_zero(6),
      test_rn_addto_result = rn_add_to(test_rn_addto_v1, test_rn_addto_v2, test_rn_addto_vout);
  assert_is(test_rn_addto_result, test_rn_addto_vout, "rn_add_to() didn't return vout!");
  assert_equal(test_rn_addto_result, rn(-1, 11, -3, 23, -5, 33), "rn_add_to() failed!");
  test_rn_addto_result = rn_add_to(test_rn_addto_v1, test_rn_addto_v2, test_rn_addto_v1);
  assert_is(test_rn_addto_result, test_rn_addto_v1, "rn_add_to() didn't return vout if it is v1!");
  assert_equal(test_rn_addto_v1, rn(-1, 11, -3, 23, -5, 33), "rn_add_to() failed if vout is v1!");
  test_rn_addto_v1 = rn(3, 5, 7, 9, 11, 13);
  test_rn_addto_result = rn_add_to(test_rn_addto_v1, test_rn_addto_v2, test_rn_addto_v2);
  assert_is(test_rn_addto_result, test_rn_addto_v2, "rn_add_to() didn't return vout if it is v2!");
  assert_equal(test_rn_addto_v2, rn(-1, 11, -3, 23, -5, 33), "rn_add_to() failed if vout is v2!");
  test_rn_addto_v2 = rn(-4, 6, -10, 14, -16, 20);
  
  
  //r2_subtract(v1, v2)
  var test_r2_subtract_v1 = r2(7, 2),
      test_r2_subtract_v2 = r2(5, 9);
  assert_equal(r2_subtract(test_r2_subtract_v1, test_r2_subtract_v2), r2(2, -7), "r2_subtract() failed!");
  //r3_subtract(v1, v2)
  var test_r3_subtract_v1 = r3(27, 15, 30),
      test_r3_subtract_v2 = r3(12, 33, 21);
  assert_equal(r3_subtract(test_r3_subtract_v1, test_r3_subtract_v2), r3(15, -18, 9), "r3_subtract() failed!");
  //r4_subtract(v1, v2)
  var test_r4_subtract_v1 = r4(1, 2, 3, 4),
      test_r4_subtract_v2 = r4(9, 18, 27, 36);
  assert_equal(r4_subtract(test_r4_subtract_v1, test_r4_subtract_v2), r4(-8, -16, -24, -32), "r4_subtract() failed!");
  //rn_subtract(v1, v2)
  assert_equal(rn_subtract(test_r2_subtract_v1, test_r2_subtract_v2), r2(2, -7), "rn_subtract() isn't compatible with 2D vectors!");
  assert_equal(rn_subtract(test_r3_subtract_v1, test_r3_subtract_v2), r3(15, -18, 9), "rn_subtract() isn't compatible with 3D vectors!");
  assert_equal(rn_subtract(test_r4_subtract_v1, test_r4_subtract_v2), r4(-8, -16, -24, -32), "rn_subtract() isn't compatible with 4D vectors!");
  var test_rn_subtract_v1 = rn(2, 4, 6, 8, 10, 12, 14),
      test_rn_subtract_v2 = rn(100, 99, 98, 97, 96, 95, 94);
  assert_equal(rn_subtract(test_rn_subtract_v1, test_rn_subtract_v2), rn(-98, -95, -92, -89, -86, -83, -80), "rn_subtract() failed!");
}
