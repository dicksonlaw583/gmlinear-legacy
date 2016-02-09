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
}
