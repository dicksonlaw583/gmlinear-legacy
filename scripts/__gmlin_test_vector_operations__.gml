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
  
  //r2_clone_to(v, vout)
  var test_r2_cloneto_v = r2(22, 35),
      test_r2_cloneto_vout = r2_zero();
  assert_is(r2_clone_to(test_r2_cloneto_v, test_r2_cloneto_vout), test_r2_cloneto_vout, "r2() clone-to isn't cloning!");
  assert_equal(test_r2_cloneto_vout, test_r2_cloneto_v, "r2() clone-to isn't equal!");
  assert_isnt(test_r2_cloneto_vout, test_r2_cloneto_v, "r2() clone-to is just a mirror!");
  //r3_clone_to(v, vout)
  var test_r3_cloneto_v = r3(17, 29, 51),
      test_r3_cloneto_vout = r3_zero();
  assert_is(r3_clone_to(test_r3_cloneto_v, test_r3_cloneto_vout), test_r3_cloneto_vout, "r3() clone-to isn't cloning!");
  assert_equal(test_r3_cloneto_vout, test_r3_cloneto_v, "r3() clone-to isn't equal!");
  assert_isnt(test_r3_cloneto_vout, test_r3_cloneto_v, "r3() clone-to is just a mirror!");
  //r4_clone_to(v, vout)
  var test_r4_cloneto_v = r4(2, 3, 5, 7),
      test_r4_cloneto_vout = r4_zero();
  assert_is(r4_clone_to(test_r4_cloneto_v, test_r4_cloneto_vout), test_r4_cloneto_vout, "r4() clone-to isn't cloning!");
  assert_equal(test_r4_cloneto_vout, test_r4_cloneto_v, "r4() clone-to isn't equal!");
  assert_isnt(test_r4_cloneto_vout, test_r4_cloneto_v, "r4() clone-to is just a mirror!");
  //rn_clone_to(v, vout)
  var test_rn_cloneto_v = rn(100, 93, 86, 79, 72, 65, 58),
      test_rn_cloneto_vout = rn_zero(7);
  assert_is(rn_clone_to(test_rn_cloneto_v, test_rn_cloneto_vout), test_rn_cloneto_vout, "rn() clone-to isn't cloning!");
  assert_equal(test_rn_cloneto_vout, test_rn_cloneto_v, "rn() clone-to isn't equal!");
  assert_isnt(test_rn_cloneto_vout, test_rn_cloneto_v, "rn() clone-to is just a mirror!");
  
  
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
  
  //r2_subtract_to(v1, v2, vout)
  var test_r2_subtractto_v1 = r2(3, 5),
      test_r2_subtractto_v2 = r2(-4, 6),
      test_r2_subtractto_vout = r2_zero(),
      test_r2_subtractto_result = r2_subtract_to(test_r2_subtractto_v1, test_r2_subtractto_v2, test_r2_subtractto_vout);
  assert_is(test_r2_subtractto_result, test_r2_subtractto_vout, "r2_subtract_to() didn't return vout!");
  assert_equal(test_r2_subtractto_result, r2(7, -1), "r2_subtract_to() failed!");
  test_r2_subtractto_result = r2_subtract_to(test_r2_subtractto_v1, test_r2_subtractto_v2, test_r2_subtractto_v1);
  assert_is(test_r2_subtractto_result, test_r2_subtractto_v1, "r2_subtract_to() didn't return vout if it is v1!");
  assert_equal(test_r2_subtractto_v1, r2(7, -1), "r2_subtract_to() failed if vout is v1!");
  test_r2_subtractto_v1 = r2(3, 5);
  test_r2_subtractto_result = r2_subtract_to(test_r2_subtractto_v1, test_r2_subtractto_v2, test_r2_subtractto_v2);
  assert_is(test_r2_subtractto_result, test_r2_subtractto_v2, "r2_subtract_to() didn't return vout if it is v2!");
  assert_equal(test_r2_subtractto_v2, r2(7, -1), "r2_subtract_to() failed if vout is v2!");
  test_r2_subtractto_v2 = r2(-4, 6);
  //r3_subtract_to(v1, v2, vout)
  var test_r3_subtractto_v1 = r3(3, 5, 7),
      test_r3_subtractto_v2 = r3(-4, 6, -10),
      test_r3_subtractto_vout = r3_zero(),
      test_r3_subtractto_result = r3_subtract_to(test_r3_subtractto_v1, test_r3_subtractto_v2, test_r3_subtractto_vout);
  assert_is(test_r3_subtractto_result, test_r3_subtractto_vout, "r3_subtract_to() didn't return vout!");
  assert_equal(test_r3_subtractto_result, r3(7, -1, 17), "r3_subtract_to() failed!");
  test_r3_subtractto_result = r3_subtract_to(test_r3_subtractto_v1, test_r3_subtractto_v2, test_r3_subtractto_v1);
  assert_is(test_r3_subtractto_result, test_r3_subtractto_v1, "r3_subtract_to() didn't return vout if it is v1!");
  assert_equal(test_r3_subtractto_v1, r3(7, -1, 17), "r3_subtract_to() failed if vout is v1!");
  test_r3_subtractto_v1 = r3(3, 5, 7);
  test_r3_subtractto_result = r3_subtract_to(test_r3_subtractto_v1, test_r3_subtractto_v2, test_r3_subtractto_v2);
  assert_is(test_r3_subtractto_result, test_r3_subtractto_v2, "r3_subtract_to() didn't return vout if it is v2!");
  assert_equal(test_r3_subtractto_v2, r3(7, -1, 17), "r3_subtract_to() failed if vout is v2!");
  test_r3_subtractto_v2 = r3(-4, 6, -10);
  //r4_subtract_to(v1, v2, vout)
  var test_r4_subtractto_v1 = r4(3, 5, 7, 9),
      test_r4_subtractto_v2 = r4(-4, 6, -10, 14),
      test_r4_subtractto_vout = r4_zero(),
      test_r4_subtractto_result = r4_subtract_to(test_r4_subtractto_v1, test_r4_subtractto_v2, test_r4_subtractto_vout);
  assert_is(test_r4_subtractto_result, test_r4_subtractto_vout, "r4_subtract_to() didn't return vout!");
  assert_equal(test_r4_subtractto_result, r4(7, -1, 17, -5), "r4_subtract_to() failed!");
  test_r4_subtractto_result = r4_subtract_to(test_r4_subtractto_v1, test_r4_subtractto_v2, test_r4_subtractto_v1);
  assert_is(test_r4_subtractto_result, test_r4_subtractto_v1, "r4_subtract_to() didn't return vout if it is v1!");
  assert_equal(test_r4_subtractto_v1, r4(7, -1, 17, -5), "r4_subtract_to() failed if vout is v1!");
  test_r4_subtractto_v1 = r4(3, 5, 7, 9);
  test_r4_subtractto_result = r4_subtract_to(test_r4_subtractto_v1, test_r4_subtractto_v2, test_r4_subtractto_v2);
  assert_is(test_r4_subtractto_result, test_r4_subtractto_v2, "r4_subtract_to() didn't return vout if it is v2!");
  assert_equal(test_r4_subtractto_v2, r4(7, -1, 17, -5), "r4_subtract_to() failed if vout is v2!");
  test_r4_subtractto_v2 = r4(-4, 6, -10, 14);
  //rn_subtract_to(v1, v2, vout)
  var test_rn_subtractto_v1 = rn(3, 5, 7, 9, 11, 13),
      test_rn_subtractto_v2 = rn(-4, 6, -10, 14, -16, 20),
      test_rn_subtractto_vout = rn_zero(6),
      test_rn_subtractto_result = rn_subtract_to(test_rn_subtractto_v1, test_rn_subtractto_v2, test_rn_subtractto_vout);
  assert_is(test_rn_subtractto_result, test_rn_subtractto_vout, "rn_subtract_to() didn't return vout!");
  assert_equal(test_rn_subtractto_result, rn(7, -1, 17, -5, 27, -7), "rn_subtract_to() failed!");
  test_rn_subtractto_result = rn_subtract_to(test_rn_subtractto_v1, test_rn_subtractto_v2, test_rn_subtractto_v1);
  assert_is(test_rn_subtractto_result, test_rn_subtractto_v1, "rn_subtract_to() didn't return vout if it is v1!");
  assert_equal(test_rn_subtractto_v1, rn(7, -1, 17, -5, 27, -7), "rn_subtract_to() failed if vout is v1!");
  test_rn_subtractto_v1 = rn(3, 5, 7, 9, 11, 13);
  test_rn_subtractto_result = rn_subtract_to(test_rn_subtractto_v1, test_rn_subtractto_v2, test_rn_subtractto_v2);
  assert_is(test_rn_subtractto_result, test_rn_subtractto_v2, "rn_subtract_to() didn't return vout if it is v2!");
  assert_equal(test_rn_subtractto_v2, rn(7, -1, 17, -5, 27, -7), "rn_subtract_to() failed if vout is v2!");
  test_rn_subtractto_v2 = rn(-4, 6, -10, 14, -16, 20);
  
  
  //r2_dot(v1, v2)
  var test_r2_dot_v1 = r2(9, -2);
      test_r2_dot_v2 = r2(1, 7);
  assert_equal(r2_dot(test_r2_dot_v1, test_r2_dot_v2), -5, "r2_dot() failed!");
  //r3_dot(v1, v2)
  var test_r3_dot_v1 = r3(4, -2, 5);
      test_r3_dot_v2 = r3(1, 2, 3);
  assert_equal(r3_dot(test_r3_dot_v1, test_r3_dot_v2), 15, "r3_dot() failed!");
  //r4_dot(v1, v2)
  var test_r4_dot_v1 = r4(17, 2, 2, 7);
      test_r4_dot_v2 = r4(1, -3, -2, -2);
  assert_equal(r4_dot(test_r4_dot_v1, test_r4_dot_v2), -7, "r4_dot() failed!");
  //rn_dot(v1, v2)
  assert_equal(rn_dot(test_r2_dot_v1, test_r2_dot_v2), -5, "rn_dot() isn't compatible with 2D vector!");
  assert_equal(rn_dot(test_r3_dot_v1, test_r3_dot_v2), 15, "rn_dot() isn't compatible with 3D vector!");
  assert_equal(rn_dot(test_r4_dot_v1, test_r4_dot_v2), -7, "rn_dot() isn't compatible with 4D vector!");
  var test_rn_dot_v1 = rn(9, -2, 4, -2, 5, 17, 2, 2, 7);
      test_rn_dot_v2 = rn(1, 7, 1, 2, 3, 1, -3, -2, -2);
  assert_equal(rn_dot(test_rn_dot_v1, test_rn_dot_v2), 3, "rn_dot() failed!");
  
  
  //r3_cross(v1, v2)
  var test_r3_cross_v1 = r3(7, -3, 6),
      test_r3_cross_v2 = r3(-2, 6, 4);
  assert_equal(r3_cross(test_r3_cross_v1, test_r3_cross_v2), r3(-48, -40, 36), "r3_cross() failed!");
  
  //r3_cross_to(v1, v2, vout)
  var test_r3_crossto_v1 = r3(7, -3, 6),
      test_r3_crossto_v2 = r3(-2, 6, 4),
      test_r3_crossto_vout = r3_zero(),
      test_r3_crossto_result = r3_cross_to(test_r3_crossto_v1, test_r3_crossto_v2, test_r3_crossto_vout);
  assert_is(test_r3_crossto_result, test_r3_crossto_vout, "r3_cross_to() didn't return vout!");
  assert_equal(test_r3_crossto_result, r3(-48, -40, 36), "r3_cross_to() failed!");
  test_r3_crossto_result = r3_cross_to(test_r3_crossto_v1, test_r3_crossto_v2, test_r3_crossto_v1);
  assert_is(test_r3_crossto_result, test_r3_crossto_v1, "r3_cross_to() didn't return vout if it is v1!");
  assert_equal(test_r3_crossto_v1, r3(-48, -40, 36), "r3_cross_to() failed if vout is v1!");
  test_r3_crossto_v1 = r3(7, -3, 6);
  test_r3_crossto_result = r3_cross_to(test_r3_crossto_v1, test_r3_crossto_v2, test_r3_crossto_v2);
  assert_is(test_r3_crossto_result, test_r3_crossto_v2, "r3_cross_to() didn't return vout if it is v2!");
  assert_equal(test_r3_crossto_v2, r3(-48, -40, 36), "r3_cross_to() failed if vout is v2!");
  test_r3_crossto_v2 = r3(-2, 6, 4);
  
  
  //r2_scale(v, r)
  var test_r2_scale_v = r2(1, 3);
  assert_equal(r2_scale(test_r2_scale_v, 5), r2(5, 15), "r2_scale() failed!");
  //r3_scale(v, r)
  var test_r3_scale_v = r3(2, 4, 6);
  assert_equal(r3_scale(test_r3_scale_v, 7), r3(14, 28, 42), "r3_scale() failed!");
  //r4_scale(v, r)
  var test_r4_scale_v = r4(3, 6, 9, 12);
  assert_equal(r4_scale(test_r4_scale_v, 9), r4(27, 54, 81, 108), "r4_scale() failed!");
  //rn_scale(v, r)
  assert_equal(rn_scale(test_r2_scale_v, 5), r2(5, 15), "rn_scale() not compatible with 2D vector!");
  assert_equal(rn_scale(test_r3_scale_v, 7), r3(14, 28, 42), "rn_scale() not compatible with 3D vector!");
  assert_equal(rn_scale(test_r4_scale_v, 9), r4(27, 54, 81, 108), "rn_scale() not compatible with 4D vector!");
  var test_rn_scale_v = rn(0, 5, 10, 15, 20, 25);
  assert_equal(rn_scale(test_rn_scale_v, 11), rn(0, 55, 110, 165, 220, 275), "rn_scale() failed!");
  
  //r2_scale_to(v, r, vout)
  var test_r2_scaleto_v = r2(1, 3),
      test_r2_scaleto_vout = r2_zero();
  assert_is(r2_scale_to(test_r2_scaleto_v, 5, test_r2_scaleto_vout), test_r2_scaleto_vout, "r2_scale_to() didn't return vout!");
  assert_equal(test_r2_scaleto_vout, r2(5, 15), "r2_scale_to() failed!");
  assert_is(r2_scale_to(test_r2_scaleto_v, 5, test_r2_scaleto_v), test_r2_scaleto_v, "r2_scale_to() didn't return vout if it is v!");
  assert_equal(test_r2_scaleto_v, r2(5, 15), "r2_scale_to() failed when vout is v!");
  test_r2_scaleto_v = r2(1, 3);
  test_r2_scaleto_vout = r2_zero();
  //r3_scale_to(v, r, vout)
  var test_r3_scaleto_v = r3(2, 4, 6),
      test_r3_scaleto_vout = r3_zero();
  assert_is(r3_scale_to(test_r3_scaleto_v, 7, test_r3_scaleto_vout), test_r3_scaleto_vout, "r3_scale_to() didn't return vout!");
  assert_equal(test_r3_scaleto_vout, r3(14, 28, 42), "r3_scale_to() failed!");
  assert_is(r3_scale_to(test_r3_scaleto_v, 7, test_r3_scaleto_v), test_r3_scaleto_v, "r3_scale_to() didn't return vout if it is v!");
  assert_equal(test_r3_scaleto_v, r3(14, 28, 42), "r3_scale_to() failed when vout is v!");
  test_r3_scaleto_v = r3(2, 4, 6);
  test_r3_scaleto_vout = r3_zero();
  //r4_scale_to(v, r, vout)
  var test_r4_scaleto_v = r4(3, 6, 9, 12),
      test_r4_scaleto_vout = r4_zero();
  assert_is(r4_scale_to(test_r4_scaleto_v, 9, test_r4_scaleto_vout), test_r4_scaleto_vout, "r4_scale_to() didn't return vout!");
  assert_equal(test_r4_scaleto_vout, r4(27, 54, 81, 108), "r4_scale_to() failed!");
  assert_is(r4_scale_to(test_r4_scaleto_v, 9, test_r4_scaleto_v), test_r4_scaleto_v, "r4_scale_to() didn't return vout if it is v!");
  assert_equal(test_r4_scaleto_v, r4(27, 54, 81, 108), "r4_scale_to() failed when vout is v!");
  test_r4_scaleto_v = r4(3, 6, 9, 12);
  test_r4_scaleto_vout = r4_zero();
  //rn_scale_to(v, r, vout)
  var test_rn_scaleto_v = rn(0, 5, 10, 15, 20, 25),
      test_rn_scaleto_vout = rn_zero(6);
  assert_is(rn_scale_to(test_rn_scaleto_v, 11, test_rn_scaleto_vout), test_rn_scaleto_vout, "rn_scale_to() didn't return vout!");
  assert_equal(test_rn_scaleto_vout, rn(0, 55, 110, 165, 220, 275), "rn_scale_to() failed!");
  assert_is(rn_scale_to(test_rn_scaleto_v, 11, test_rn_scaleto_v), test_rn_scaleto_v, "rn_scale_to() didn't return vout if it is v!");
  assert_equal(test_rn_scaleto_v, rn(0, 55, 110, 165, 220, 275), "rn_scale_to() failed when vout is v!");
  test_rn_scaleto_v = rn(0, 5, 10, 15, 20, 25);
  test_rn_scaleto_vout = rn_zero(6);
  
  
  //r2_norm(v)
  assert_equalish(r2_norm(r2(3, -4)), 5, "r2_norm() failed!");
  //r3_norm(v)
  assert_equalish(r3_norm(r3(2, -10, 11)), 15, "r3_norm() failed!");
  //r4_norm(v)
  assert_equalish(r4_norm(r4(1, -2, 8, -10)), 13, "r4_norm() failed!");
  //rn_norm(v)
  assert_equalish(rn_norm(r2(3, -4)), 5, "rn_norm() at 2D failed!");
  assert_equalish(rn_norm(r3(2, -10, 11)), 15, "rn_norm() at 3D failed!");
  assert_equalish(rn_norm(r4(1, -2, 8, -10)), 13, "rn_norm() at 4D failed!");
  assert_equalish(rn_norm(rn(8, -9, 7, -1, -4, 3, 2, 1)), 15, "rn_norm() at 8D failed!");
  
  //r2_maxnorm(v)
  assert_equalish(r2_maxnorm(r2(3, -4)), 4, "r2_maxnorm() failed!");
  //r3_maxnorm(v)
  assert_equalish(r3_maxnorm(r3(2, -10, 11)), 11, "r3_maxnorm() failed!");
  //r4_maxnorm(v)
  assert_equalish(r4_maxnorm(r4(1, -2, 8, -10)), 10, "r4_maxnorm() failed!");
  //rn_maxnorm(v)
  assert_equalish(rn_maxnorm(r2(3, -4)), 4, "rn_maxnorm() at 2D failed!");
  assert_equalish(rn_maxnorm(r3(2, -10, 11)), 11, "rn_maxnorm() at 3D failed!");
  assert_equalish(rn_maxnorm(r4(1, -2, 8, -10)), 10, "rn_maxnorm() at 4D failed!");
  assert_equalish(rn_maxnorm(rn(8, -9, 7, -1, -4, 3, 2, 1)), 9, "rn_maxnorm() at 8D failed!");
  
  
  //r2_lerp(v1, v2, amount)
  var test_r2_lerp_v1 = r2(3, -5),
      test_r2_lerp_v2 = r2(-3, 7);
  assert_equal(r2_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 0), test_r2_lerp_v1, "r2_lerp() at 0 failed!");
  assert_equal(r2_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 1), test_r2_lerp_v2, "r2_lerp() at 1 failed!");
  assert_equalish(r2_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 1/2), r2(0, 1), "r2_lerp() at 1/2 failed!");
  //r3_lerp(v1, v2, amount)
  var test_r3_lerp_v1 = r3(0, 17, -3),
      test_r3_lerp_v2 = r3(6, -1, 3);
  assert_equal(r3_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 0), test_r3_lerp_v1, "r3_lerp() at 0 failed!");
  assert_equal(r3_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 1), test_r3_lerp_v2, "r3_lerp() at 1 failed!");
  assert_equalish(r3_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 1/3), r3(2, 11, -1), "r3_lerp() at 1/3 failed!");
  //r4_lerp(v1, v2, amount)
  var test_r4_lerp_v1 = r4(0, 7, -3, 7),
      test_r4_lerp_v2 = r4(8, -1, 17, 15);
  assert_equal(r4_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 0), test_r4_lerp_v1, "r4_lerp() at 0 failed!");
  assert_equal(r4_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 1), test_r4_lerp_v2, "r4_lerp() at 1 failed!");
  assert_equalish(r4_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 1/4), r4(2, 5, 2, 9), "r4_lerp() at 1/4 failed!");
  //rn_lerp(v1, v2, amount)
  assert_equal(rn_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 0), test_r2_lerp_v1, "rn_lerp() 2D at 0 failed!");
  assert_equal(rn_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 1), test_r2_lerp_v2, "rn_lerp() 2D at 1 failed!");
  assert_equalish(rn_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 1/2), rn(0, 1), "rn_lerp() 2D at 1/2 failed!");
  assert_equal(rn_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 0), test_r3_lerp_v1, "rn_lerp() 3D at 0 failed!");
  assert_equal(rn_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 1), test_r3_lerp_v2, "rn_lerp() 3D at 1 failed!");
  assert_equalish(rn_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 1/3), rn(2, 11, -1), "rn_lerp() 3D at 1/3 failed!");
  assert_equal(rn_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 0), test_r4_lerp_v1, "rn_lerp() 4D at 0 failed!");
  assert_equal(rn_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 1), test_r4_lerp_v2, "rn_lerp() 4D at 1 failed!");
  assert_equalish(rn_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 1/4), rn(2, 5, 2, 9), "rn_lerp() 4D at 1/4 failed!");
  var test_rn_lerp_v1 = rn(0, 7, -3, 7, -27, 0),
      test_rn_lerp_v2 = rn(8, -1, 17, 15, -11, 0);
  assert_equal(rn_lerp(test_rn_lerp_v1, test_rn_lerp_v2, 0), test_rn_lerp_v1, "rn_lerp() at 0 failed!");
  assert_equal(rn_lerp(test_rn_lerp_v1, test_rn_lerp_v2, 1), test_rn_lerp_v2, "rn_lerp() at 1 failed!");
  assert_equalish(rn_lerp(test_rn_lerp_v1, test_rn_lerp_v2, 3/4), rn(6, 1, 12, 13, -15, 0), "rn_lerp() at 3/4 failed!");
  
  //r2_lerp_to(v1, v2, amount, vout)
  var test_r2_lerpto_v1 = r2(3, -5),
      test_r2_lerpto_v2 = r2(-3, 7),
      test_r2_lerpto_vout = r2_zero();
  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 0, test_r2_lerpto_vout), test_r2_lerpto_vout, "r2_lerp_to() at 0 returned the wrong vector!");
  assert_equal(test_r2_lerpto_vout, test_r2_lerpto_v1, "r2_lerp_to() at 0 failed!");
  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1, test_r2_lerpto_vout), test_r2_lerpto_vout, "r2_lerp_to() at 1 returned the wrong vector!");
  assert_equal(test_r2_lerpto_vout, test_r2_lerpto_v2, "r2_lerp_to() at 1 failed!");
  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1/2, test_r2_lerpto_vout), test_r2_lerpto_vout, "r2_lerp_to() at 1/2 returned the wrong vector!");
  assert_equalish(test_r2_lerpto_vout, r2(0, 1), "r2_lerp_to() at 1/2 failed!");
  test_r2_lerpto_vout = r2_zero();
  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 0, test_r2_lerpto_v1), test_r2_lerpto_v1, "r2_lerp_to() at 0 returned the wrong vector when vout is v1!");
  assert_equal(test_r2_lerpto_v1, test_r2_lerpto_v1, "r2_lerp_to() at 0 failed when vout is v1!");
  test_r2_lerpto_v1 = r2(3, -5);
  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1, test_r2_lerpto_v1), test_r2_lerpto_v1, "r2_lerp_to() at 1 returned the wrong vector when vout is v1!");
  assert_equal(test_r2_lerpto_v1, test_r2_lerpto_v2, "r2_lerp_to() at 1 failed when vout is v1!");
  test_r2_lerpto_v1 = r2(3, -5);
  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1/2, test_r2_lerpto_v1), test_r2_lerpto_v1, "r2_lerp_to() at 1/2 returned the wrong vector when vout is v1!");
  assert_equalish(test_r2_lerpto_v1, r2(0, 1), "r2_lerp_to() at 1/2 failed when vout is v1!");
  test_r2_lerpto_v1 = r2(3, -5);
  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 0, test_r2_lerpto_v2), test_r2_lerpto_v2, "r2_lerp_to() at 0 returned the wrong vector when vout is v2!");
  assert_equal(test_r2_lerpto_v2, test_r2_lerpto_v1, "r2_lerp_to() at 0 failed when vout is v2!");
  test_r2_lerpto_v2 = r2(-3, 7);
  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1, test_r2_lerpto_v2), test_r2_lerpto_v2, "r2_lerp_to() at 1 returned the wrong vector when vout is v2!");
  assert_equal(test_r2_lerpto_v2, test_r2_lerpto_v2, "r2_lerp_to() at 1 failed when vout is v2!");
  test_r2_lerpto_v2 = r2(-3, 7);
  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1/2, test_r2_lerpto_v2), test_r2_lerpto_v2, "r2_lerp_to() at 1/2 returned the wrong vector when vout is v2!");
  assert_equalish(test_r2_lerpto_v2, r2(0, 1), "r2_lerp_to() at 1/2 failed when vout is v2!");
  test_r2_lerpto_v2 = r2(-3, 7);
  //r3_lerp_to(v1, v2, amount, vout)
  var test_r3_lerpto_v1 = r3(0, 17, -3),
      test_r3_lerpto_v2 = r3(6, -1, 3),
      test_r3_lerpto_vout = r3_zero();
  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 0, test_r3_lerpto_vout), test_r3_lerpto_vout, "r3_lerp_to() at 0 returned the wrong vector!");
  assert_equal(test_r3_lerpto_vout, test_r3_lerpto_v1, "r3_lerp_to() at 0 failed!");
  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1, test_r3_lerpto_vout), test_r3_lerpto_vout, "r3_lerp_to() at 1 returned the wrong vector!");
  assert_equal(test_r3_lerpto_vout, test_r3_lerpto_v2, "r3_lerp_to() at 1 failed!");
  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1/3, test_r3_lerpto_vout), test_r3_lerpto_vout, "r3_lerp_to() at 1/3 returned the wrong vector!");
  assert_equalish(test_r3_lerpto_vout, r3(2, 11, -1), "r3_lerp_to() at 1/3 failed!");
  test_r3_lerpto_vout = r3_zero();
  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 0, test_r3_lerpto_v1), test_r3_lerpto_v1, "r3_lerp_to() at 0 returned the wrong vector when vout is v1!");
  assert_equal(test_r3_lerpto_v1, test_r3_lerpto_v1, "r3_lerp_to() at 0 failed when vout is v1!");
  test_r3_lerpto_v1 = r3(0, 17, -3);
  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1, test_r3_lerpto_v1), test_r3_lerpto_v1, "r3_lerp_to() at 1 returned the wrong vector when vout is v1!");
  assert_equal(test_r3_lerpto_v1, test_r3_lerpto_v2, "r3_lerp_to() at 1 failed when vout is v1!");
  test_r3_lerpto_v1 = r3(0, 17, -3);
  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1/3, test_r3_lerpto_v1), test_r3_lerpto_v1, "r3_lerp_to() at 1/3 returned the wrong vector when vout is v1!");
  assert_equalish(test_r3_lerpto_v1, r3(2, 11, -1), "r3_lerp_to() at 1/3 failed when vout is v1!");
  test_r3_lerpto_v1 = r3(0, 17, -3);
  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 0, test_r3_lerpto_v2), test_r3_lerpto_v2, "r3_lerp_to() at 0 returned the wrong vector when vout is v2!");
  assert_equal(test_r3_lerpto_v2, test_r3_lerpto_v1, "r3_lerp_to() at 0 failed when vout is v2!");
  test_r3_lerpto_v2 = r3(6, -1, 3);
  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1, test_r3_lerpto_v2), test_r3_lerpto_v2, "r3_lerp_to() at 1 returned the wrong vector when vout is v2!");
  assert_equal(test_r3_lerpto_v2, test_r3_lerpto_v2, "r3_lerp_to() at 1 failed when vout is v2!");
  test_r3_lerpto_v2 = r3(6, -1, 3);
  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1/3, test_r3_lerpto_v2), test_r3_lerpto_v2, "r3_lerp_to() at 1/3 returned the wrong vector when vout is v2!");
  assert_equalish(test_r3_lerpto_v2, r3(2, 11, -1), "r3_lerp_to() at 1/3 failed when vout is v2!");
  test_r3_lerpto_v2 = r3(6, -1, 3);
  //r4_lerp_to(v1, v2, amount, vout)
  var test_r4_lerpto_v1 = r4(0, 7, -3, 7),
      test_r4_lerpto_v2 = r4(8, -1, 17, 15),
      test_r4_lerpto_vout = r4_zero();
  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 0, test_r4_lerpto_vout), test_r4_lerpto_vout, "r4_lerp_to() at 0 returned the wrong vector!");
  assert_equal(test_r4_lerpto_vout, test_r4_lerpto_v1, "r4_lerp_to() at 0 failed!");
  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1, test_r4_lerpto_vout), test_r4_lerpto_vout, "r4_lerp_to() at 1 returned the wrong vector!");
  assert_equal(test_r4_lerpto_vout, test_r4_lerpto_v2, "r4_lerp_to() at 1 failed!");
  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1/4, test_r4_lerpto_vout), test_r4_lerpto_vout, "r4_lerp_to() at 1/4 returned the wrong vector!");
  assert_equalish(test_r4_lerpto_vout, r4(2, 5, 2, 9), "r4_lerp_to() at 1/4 failed!");
  test_r4_lerpto_vout = r4_zero();
  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 0, test_r4_lerpto_v1), test_r4_lerpto_v1, "r4_lerp_to() at 0 returned the wrong vector when vout is v1!");
  assert_equal(test_r4_lerpto_v1, test_r4_lerpto_v1, "r4_lerp_to() at 0 failed when vout is v1!");
  test_r4_lerpto_v1 = r4(0, 7, -3, 7);
  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1, test_r4_lerpto_v1), test_r4_lerpto_v1, "r4_lerp_to() at 1 returned the wrong vector when vout is v1!");
  assert_equal(test_r4_lerpto_v1, test_r4_lerpto_v2, "r4_lerp_to() at 1 failed when vout is v1!");
  test_r4_lerpto_v1 = r4(0, 7, -3, 7);
  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1/4, test_r4_lerpto_v1), test_r4_lerpto_v1, "r4_lerp_to() at 1/4 returned the wrong vector when vout is v1!");
  assert_equalish(test_r4_lerpto_v1, r4(2, 5, 2, 9), "r4_lerp_to() at 1/4 failed when vout is v1!");
  test_r4_lerpto_v1 = r4(0, 7, -3, 7);
  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 0, test_r4_lerpto_v2), test_r4_lerpto_v2, "r4_lerp_to() at 0 returned the wrong vector when vout is v2!");
  assert_equal(test_r4_lerpto_v2, test_r4_lerpto_v1, "r4_lerp_to() at 0 failed when vout is v2!");
  test_r4_lerpto_v2 = r4(8, -1, 17, 15);
  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1, test_r4_lerpto_v2), test_r4_lerpto_v2, "r4_lerp_to() at 1 returned the wrong vector when vout is v2!");
  assert_equal(test_r4_lerpto_v2, test_r4_lerpto_v2, "r4_lerp_to() at 1 failed when vout is v2!");
  test_r4_lerpto_v2 = r4(8, -1, 17, 15);
  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1/4, test_r4_lerpto_v2), test_r4_lerpto_v2, "r4_lerp_to() at 1/4 returned the wrong vector when vout is v2!");
  assert_equalish(test_r4_lerpto_v2, r4(2, 5, 2, 9), "r4_lerp_to() at 1/4 failed when vout is v2!");
  test_r4_lerpto_v2 = r4(8, -1, 17, 15);
  //rn_lerp_to(v1, v2, amount, vout)
  var test_rn_lerpto_v1 = rn(0, 7, -3, 7, -27, 0),
      test_rn_lerpto_v2 = rn(8, -1, 17, 15, -11, 0),
      test_rn_lerpto_vout = rn_zero(6);
  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 0, test_rn_lerpto_vout), test_rn_lerpto_vout, "rn_lerp_to() at 0 returned the wrong vector!");
  assert_equal(test_rn_lerpto_vout, test_rn_lerpto_v1, "rn_lerp_to() at 0 failed!");
  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 1, test_rn_lerpto_vout), test_rn_lerpto_vout, "rn_lerp_to() at 1 returned the wrong vector!");
  assert_equal(test_rn_lerpto_vout, test_rn_lerpto_v2, "rn_lerp_to() at 1 failed!");
  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 3/4, test_rn_lerpto_vout), test_rn_lerpto_vout, "rn_lerp_to() at 3/4 returned the wrong vector!");
  assert_equalish(test_rn_lerpto_vout, rn(6, 1, 12, 13, -15, 0), "rn_lerp_to() at 3/4 failed!");
  test_rn_lerpto_vout = rn_zero(6);
  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 0, test_rn_lerpto_v1), test_rn_lerpto_v1, "rn_lerp_to() at 0 returned the wrong vector when vout is v1!");
  assert_equal(test_rn_lerpto_v1, test_rn_lerpto_v1, "rn_lerp_to() at 0 failed when vout is v1!");
  test_rn_lerpto_v1 = rn(0, 7, -3, 7, -27, 0);
  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 1, test_rn_lerpto_v1), test_rn_lerpto_v1, "rn_lerp_to() at 1 returned the wrong vector when vout is v1!");
  assert_equal(test_rn_lerpto_v1, test_rn_lerpto_v2, "rn_lerp_to() at 1 failed when vout is v1!");
  test_rn_lerpto_v1 = rn(0, 7, -3, 7, -27, 0);
  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 3/4, test_rn_lerpto_v1), test_rn_lerpto_v1, "rn_lerp_to() at 3/4 returned the wrong vector when vout is v1!");
  assert_equalish(test_rn_lerpto_v1, rn(6, 1, 12, 13, -15, 0), "rn_lerp_to() at 3/4 failed when vout is v1!");
  test_rn_lerpto_v1 = rn(0, 7, -3, 7, -27, 0);
  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 0, test_rn_lerpto_v2), test_rn_lerpto_v2, "rn_lerp_to() at 0 returned the wrong vector when vout is v2!");
  assert_equal(test_rn_lerpto_v2, test_rn_lerpto_v1, "rn_lerp_to() at 0 failed when vout is v2!");
  test_rn_lerpto_v2 = rn(8, -1, 17, 15, -11, 0);
  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 1, test_rn_lerpto_v2), test_rn_lerpto_v2, "rn_lerp_to() at 1 returned the wrong vector when vout is v2!");
  assert_equal(test_rn_lerpto_v2, test_rn_lerpto_v2, "rn_lerp_to() at 1 failed when vout is v2!");
  test_rn_lerpto_v2 = rn(8, -1, 17, 15, -11, 0);
  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 3/4, test_rn_lerpto_v2), test_rn_lerpto_v2, "rn_lerp_to() at 3/4 returned the wrong vector when vout is v2!");
  assert_equalish(test_rn_lerpto_v2, rn(6, 1, 12, 13, -15, 0), "rn_lerp_to() at 3/4 failed when vout is v2!");
  test_rn_lerpto_v2 = rn(8, -1, 17, 15, -11, 0);
}
