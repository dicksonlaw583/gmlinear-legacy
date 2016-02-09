{
  //r2_clone
  var test_r2_original = r2(3, 2);
  assert_isnt(r2_clone(test_r2_original), test_r2_original, "r2() clone isn't cloning!");
  assert_equal(r2_clone(test_r2_original), test_r2_original, "r2() clone is different!");
  //r3_clone
  var test_r3_original = r3(52, 2, 57);
  assert_isnt(r3_clone(test_r3_original), test_r3_original, "r3() clone isn't cloning!");
  assert_equal(r3_clone(test_r3_original), test_r3_original, "r3() clone is different!");
  //r4_clone
  var test_r4_original = r4(23, 7, 52, 53);
  assert_isnt(r4_clone(test_r4_original), test_r4_original, "r4() clone isn't cloning!");
  assert_equal(r4_clone(test_r4_original), test_r4_original, "r4() clone is different!");
  //rn_clone
  var test_rn_original = rn(23, 7, 52, 22, 52, 2, 57);
  assert_isnt(rn_clone(test_rn_original), test_rn_original, "rn() clone isn't cloning!");
  assert_equal(rn_clone(test_rn_original), test_rn_original, "rn() clone is different!");
}
