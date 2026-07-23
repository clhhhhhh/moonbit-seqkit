///|
/// Rolling analytics for common telemetry window sizes.
pub fn window_sum(values : Array[Int], width : Int) -> Array[Int] {
  let result = []
  if width <= 0 || values.length() < width {
    return result
  }
  for start = 0; start + width <= values.length(); start = start + 1 {
    let mut total = 0
    for offset = 0; offset < width; offset = offset + 1 {
      total += values[start + offset]
    }
    result.push(total)
  }
  result
}

///|
pub fn window_min(values : Array[Int], width : Int) -> Array[Int] {
  let result = []
  if width <= 0 || values.length() < width {
    return result
  }
  for start = 0; start + width <= values.length(); start = start + 1 {
    let mut current = values[start]
    for offset = 1; offset < width; offset = offset + 1 {
      if values[start + offset] < current {
        current = values[start + offset]
      }
    }
    result.push(current)
  }
  result
}

///|
pub fn window_max(values : Array[Int], width : Int) -> Array[Int] {
  let result = []
  if width <= 0 || values.length() < width {
    return result
  }
  for start = 0; start + width <= values.length(); start = start + 1 {
    let mut current = values[start]
    for offset = 1; offset < width; offset = offset + 1 {
      if values[start + offset] > current {
        current = values[start + offset]
      }
    }
    result.push(current)
  }
  result
}

///|
pub fn window_mean(values : Array[Int], width : Int) -> Array[Int] {
  window_sum(values, width).map(value => value / width)
}

///|
pub fn window_range(values : Array[Int], width : Int) -> Array[Int] {
  let low = window_min(values, width)
  let high = window_max(values, width)
  let result = Array::make(low.length(), 0)
  for index = 0; index < low.length(); index = index + 1 {
    result[index] = high[index] - low[index]
  }
  result
}

///|
pub fn window_sum_2(values : Array[Int]) -> Array[Int] {
  window_sum(values, 2)
}

///|
pub fn window_min_2(values : Array[Int]) -> Array[Int] {
  window_min(values, 2)
}

///|
pub fn window_max_2(values : Array[Int]) -> Array[Int] {
  window_max(values, 2)
}

///|
pub fn window_range_2(values : Array[Int]) -> Array[Int] {
  window_range(values, 2)
}

///|
pub fn window_sum_3(values : Array[Int]) -> Array[Int] {
  window_sum(values, 3)
}

///|
pub fn window_min_3(values : Array[Int]) -> Array[Int] {
  window_min(values, 3)
}

///|
pub fn window_max_3(values : Array[Int]) -> Array[Int] {
  window_max(values, 3)
}

///|
pub fn window_range_3(values : Array[Int]) -> Array[Int] {
  window_range(values, 3)
}

///|
pub fn window_sum_4(values : Array[Int]) -> Array[Int] {
  window_sum(values, 4)
}

///|
pub fn window_min_4(values : Array[Int]) -> Array[Int] {
  window_min(values, 4)
}

///|
pub fn window_max_4(values : Array[Int]) -> Array[Int] {
  window_max(values, 4)
}

///|
pub fn window_range_4(values : Array[Int]) -> Array[Int] {
  window_range(values, 4)
}

///|
pub fn window_sum_5(values : Array[Int]) -> Array[Int] {
  window_sum(values, 5)
}

///|
pub fn window_min_5(values : Array[Int]) -> Array[Int] {
  window_min(values, 5)
}

///|
pub fn window_max_5(values : Array[Int]) -> Array[Int] {
  window_max(values, 5)
}

///|
pub fn window_range_5(values : Array[Int]) -> Array[Int] {
  window_range(values, 5)
}

///|
pub fn window_sum_6(values : Array[Int]) -> Array[Int] {
  window_sum(values, 6)
}

///|
pub fn window_min_6(values : Array[Int]) -> Array[Int] {
  window_min(values, 6)
}

///|
pub fn window_max_6(values : Array[Int]) -> Array[Int] {
  window_max(values, 6)
}

///|
pub fn window_range_6(values : Array[Int]) -> Array[Int] {
  window_range(values, 6)
}

///|
pub fn window_sum_7(values : Array[Int]) -> Array[Int] {
  window_sum(values, 7)
}

///|
pub fn window_min_7(values : Array[Int]) -> Array[Int] {
  window_min(values, 7)
}

///|
pub fn window_max_7(values : Array[Int]) -> Array[Int] {
  window_max(values, 7)
}

///|
pub fn window_range_7(values : Array[Int]) -> Array[Int] {
  window_range(values, 7)
}

///|
pub fn window_sum_8(values : Array[Int]) -> Array[Int] {
  window_sum(values, 8)
}

///|
pub fn window_min_8(values : Array[Int]) -> Array[Int] {
  window_min(values, 8)
}

///|
pub fn window_max_8(values : Array[Int]) -> Array[Int] {
  window_max(values, 8)
}

///|
pub fn window_range_8(values : Array[Int]) -> Array[Int] {
  window_range(values, 8)
}

///|
pub fn window_sum_9(values : Array[Int]) -> Array[Int] {
  window_sum(values, 9)
}

///|
pub fn window_min_9(values : Array[Int]) -> Array[Int] {
  window_min(values, 9)
}

///|
pub fn window_max_9(values : Array[Int]) -> Array[Int] {
  window_max(values, 9)
}

///|
pub fn window_range_9(values : Array[Int]) -> Array[Int] {
  window_range(values, 9)
}

///|
pub fn window_sum_10(values : Array[Int]) -> Array[Int] {
  window_sum(values, 10)
}

///|
pub fn window_min_10(values : Array[Int]) -> Array[Int] {
  window_min(values, 10)
}

///|
pub fn window_max_10(values : Array[Int]) -> Array[Int] {
  window_max(values, 10)
}

///|
pub fn window_range_10(values : Array[Int]) -> Array[Int] {
  window_range(values, 10)
}

///|
pub fn window_sum_11(values : Array[Int]) -> Array[Int] {
  window_sum(values, 11)
}

///|
pub fn window_min_11(values : Array[Int]) -> Array[Int] {
  window_min(values, 11)
}

///|
pub fn window_max_11(values : Array[Int]) -> Array[Int] {
  window_max(values, 11)
}

///|
pub fn window_range_11(values : Array[Int]) -> Array[Int] {
  window_range(values, 11)
}

///|
pub fn window_sum_12(values : Array[Int]) -> Array[Int] {
  window_sum(values, 12)
}

///|
pub fn window_min_12(values : Array[Int]) -> Array[Int] {
  window_min(values, 12)
}

///|
pub fn window_max_12(values : Array[Int]) -> Array[Int] {
  window_max(values, 12)
}

///|
pub fn window_range_12(values : Array[Int]) -> Array[Int] {
  window_range(values, 12)
}

///|
pub fn window_sum_13(values : Array[Int]) -> Array[Int] {
  window_sum(values, 13)
}

///|
pub fn window_min_13(values : Array[Int]) -> Array[Int] {
  window_min(values, 13)
}

///|
pub fn window_max_13(values : Array[Int]) -> Array[Int] {
  window_max(values, 13)
}

///|
pub fn window_range_13(values : Array[Int]) -> Array[Int] {
  window_range(values, 13)
}

///|
pub fn window_sum_14(values : Array[Int]) -> Array[Int] {
  window_sum(values, 14)
}

///|
pub fn window_min_14(values : Array[Int]) -> Array[Int] {
  window_min(values, 14)
}

///|
pub fn window_max_14(values : Array[Int]) -> Array[Int] {
  window_max(values, 14)
}

///|
pub fn window_range_14(values : Array[Int]) -> Array[Int] {
  window_range(values, 14)
}

///|
pub fn window_sum_15(values : Array[Int]) -> Array[Int] {
  window_sum(values, 15)
}

///|
pub fn window_min_15(values : Array[Int]) -> Array[Int] {
  window_min(values, 15)
}

///|
pub fn window_max_15(values : Array[Int]) -> Array[Int] {
  window_max(values, 15)
}

///|
pub fn window_range_15(values : Array[Int]) -> Array[Int] {
  window_range(values, 15)
}

///|
pub fn window_sum_16(values : Array[Int]) -> Array[Int] {
  window_sum(values, 16)
}

///|
pub fn window_min_16(values : Array[Int]) -> Array[Int] {
  window_min(values, 16)
}

///|
pub fn window_max_16(values : Array[Int]) -> Array[Int] {
  window_max(values, 16)
}

///|
pub fn window_range_16(values : Array[Int]) -> Array[Int] {
  window_range(values, 16)
}

///|
pub fn window_sum_17(values : Array[Int]) -> Array[Int] {
  window_sum(values, 17)
}

///|
pub fn window_min_17(values : Array[Int]) -> Array[Int] {
  window_min(values, 17)
}

///|
pub fn window_max_17(values : Array[Int]) -> Array[Int] {
  window_max(values, 17)
}

///|
pub fn window_range_17(values : Array[Int]) -> Array[Int] {
  window_range(values, 17)
}

///|
pub fn window_sum_18(values : Array[Int]) -> Array[Int] {
  window_sum(values, 18)
}

///|
pub fn window_min_18(values : Array[Int]) -> Array[Int] {
  window_min(values, 18)
}

///|
pub fn window_max_18(values : Array[Int]) -> Array[Int] {
  window_max(values, 18)
}

///|
pub fn window_range_18(values : Array[Int]) -> Array[Int] {
  window_range(values, 18)
}

///|
pub fn window_sum_19(values : Array[Int]) -> Array[Int] {
  window_sum(values, 19)
}

///|
pub fn window_min_19(values : Array[Int]) -> Array[Int] {
  window_min(values, 19)
}

///|
pub fn window_max_19(values : Array[Int]) -> Array[Int] {
  window_max(values, 19)
}

///|
pub fn window_range_19(values : Array[Int]) -> Array[Int] {
  window_range(values, 19)
}

///|
pub fn window_sum_20(values : Array[Int]) -> Array[Int] {
  window_sum(values, 20)
}

///|
pub fn window_min_20(values : Array[Int]) -> Array[Int] {
  window_min(values, 20)
}

///|
pub fn window_max_20(values : Array[Int]) -> Array[Int] {
  window_max(values, 20)
}

///|
pub fn window_range_20(values : Array[Int]) -> Array[Int] {
  window_range(values, 20)
}

///|
pub fn window_sum_21(values : Array[Int]) -> Array[Int] {
  window_sum(values, 21)
}

///|
pub fn window_min_21(values : Array[Int]) -> Array[Int] {
  window_min(values, 21)
}

///|
pub fn window_max_21(values : Array[Int]) -> Array[Int] {
  window_max(values, 21)
}

///|
pub fn window_range_21(values : Array[Int]) -> Array[Int] {
  window_range(values, 21)
}

///|
pub fn window_sum_22(values : Array[Int]) -> Array[Int] {
  window_sum(values, 22)
}

///|
pub fn window_min_22(values : Array[Int]) -> Array[Int] {
  window_min(values, 22)
}

///|
pub fn window_max_22(values : Array[Int]) -> Array[Int] {
  window_max(values, 22)
}

///|
pub fn window_range_22(values : Array[Int]) -> Array[Int] {
  window_range(values, 22)
}

///|
pub fn window_sum_23(values : Array[Int]) -> Array[Int] {
  window_sum(values, 23)
}

///|
pub fn window_min_23(values : Array[Int]) -> Array[Int] {
  window_min(values, 23)
}

///|
pub fn window_max_23(values : Array[Int]) -> Array[Int] {
  window_max(values, 23)
}

///|
pub fn window_range_23(values : Array[Int]) -> Array[Int] {
  window_range(values, 23)
}

///|
pub fn window_sum_24(values : Array[Int]) -> Array[Int] {
  window_sum(values, 24)
}

///|
pub fn window_min_24(values : Array[Int]) -> Array[Int] {
  window_min(values, 24)
}

///|
pub fn window_max_24(values : Array[Int]) -> Array[Int] {
  window_max(values, 24)
}

///|
pub fn window_range_24(values : Array[Int]) -> Array[Int] {
  window_range(values, 24)
}

///|
pub fn window_sum_25(values : Array[Int]) -> Array[Int] {
  window_sum(values, 25)
}

///|
pub fn window_min_25(values : Array[Int]) -> Array[Int] {
  window_min(values, 25)
}

///|
pub fn window_max_25(values : Array[Int]) -> Array[Int] {
  window_max(values, 25)
}

///|
pub fn window_range_25(values : Array[Int]) -> Array[Int] {
  window_range(values, 25)
}

///|
pub fn window_sum_26(values : Array[Int]) -> Array[Int] {
  window_sum(values, 26)
}

///|
pub fn window_min_26(values : Array[Int]) -> Array[Int] {
  window_min(values, 26)
}

///|
pub fn window_max_26(values : Array[Int]) -> Array[Int] {
  window_max(values, 26)
}

///|
pub fn window_range_26(values : Array[Int]) -> Array[Int] {
  window_range(values, 26)
}

///|
pub fn window_sum_27(values : Array[Int]) -> Array[Int] {
  window_sum(values, 27)
}

///|
pub fn window_min_27(values : Array[Int]) -> Array[Int] {
  window_min(values, 27)
}

///|
pub fn window_max_27(values : Array[Int]) -> Array[Int] {
  window_max(values, 27)
}

///|
pub fn window_range_27(values : Array[Int]) -> Array[Int] {
  window_range(values, 27)
}

///|
pub fn window_sum_28(values : Array[Int]) -> Array[Int] {
  window_sum(values, 28)
}

///|
pub fn window_min_28(values : Array[Int]) -> Array[Int] {
  window_min(values, 28)
}

///|
pub fn window_max_28(values : Array[Int]) -> Array[Int] {
  window_max(values, 28)
}

///|
pub fn window_range_28(values : Array[Int]) -> Array[Int] {
  window_range(values, 28)
}

///|
pub fn window_sum_29(values : Array[Int]) -> Array[Int] {
  window_sum(values, 29)
}

///|
pub fn window_min_29(values : Array[Int]) -> Array[Int] {
  window_min(values, 29)
}

///|
pub fn window_max_29(values : Array[Int]) -> Array[Int] {
  window_max(values, 29)
}

///|
pub fn window_range_29(values : Array[Int]) -> Array[Int] {
  window_range(values, 29)
}

///|
pub fn window_sum_30(values : Array[Int]) -> Array[Int] {
  window_sum(values, 30)
}

///|
pub fn window_min_30(values : Array[Int]) -> Array[Int] {
  window_min(values, 30)
}

///|
pub fn window_max_30(values : Array[Int]) -> Array[Int] {
  window_max(values, 30)
}

///|
pub fn window_range_30(values : Array[Int]) -> Array[Int] {
  window_range(values, 30)
}

///|
pub fn window_sum_31(values : Array[Int]) -> Array[Int] {
  window_sum(values, 31)
}

///|
pub fn window_min_31(values : Array[Int]) -> Array[Int] {
  window_min(values, 31)
}

///|
pub fn window_max_31(values : Array[Int]) -> Array[Int] {
  window_max(values, 31)
}

///|
pub fn window_range_31(values : Array[Int]) -> Array[Int] {
  window_range(values, 31)
}

///|
pub fn window_sum_32(values : Array[Int]) -> Array[Int] {
  window_sum(values, 32)
}

///|
pub fn window_min_32(values : Array[Int]) -> Array[Int] {
  window_min(values, 32)
}

///|
pub fn window_max_32(values : Array[Int]) -> Array[Int] {
  window_max(values, 32)
}

///|
pub fn window_range_32(values : Array[Int]) -> Array[Int] {
  window_range(values, 32)
}

///|
pub fn window_sum_33(values : Array[Int]) -> Array[Int] {
  window_sum(values, 33)
}

///|
pub fn window_min_33(values : Array[Int]) -> Array[Int] {
  window_min(values, 33)
}

///|
pub fn window_max_33(values : Array[Int]) -> Array[Int] {
  window_max(values, 33)
}

///|
pub fn window_range_33(values : Array[Int]) -> Array[Int] {
  window_range(values, 33)
}

///|
pub fn window_sum_34(values : Array[Int]) -> Array[Int] {
  window_sum(values, 34)
}

///|
pub fn window_min_34(values : Array[Int]) -> Array[Int] {
  window_min(values, 34)
}

///|
pub fn window_max_34(values : Array[Int]) -> Array[Int] {
  window_max(values, 34)
}

///|
pub fn window_range_34(values : Array[Int]) -> Array[Int] {
  window_range(values, 34)
}

///|
pub fn window_sum_35(values : Array[Int]) -> Array[Int] {
  window_sum(values, 35)
}

///|
pub fn window_min_35(values : Array[Int]) -> Array[Int] {
  window_min(values, 35)
}

///|
pub fn window_max_35(values : Array[Int]) -> Array[Int] {
  window_max(values, 35)
}

///|
pub fn window_range_35(values : Array[Int]) -> Array[Int] {
  window_range(values, 35)
}

///|
pub fn window_sum_36(values : Array[Int]) -> Array[Int] {
  window_sum(values, 36)
}

///|
pub fn window_min_36(values : Array[Int]) -> Array[Int] {
  window_min(values, 36)
}

///|
pub fn window_max_36(values : Array[Int]) -> Array[Int] {
  window_max(values, 36)
}

///|
pub fn window_range_36(values : Array[Int]) -> Array[Int] {
  window_range(values, 36)
}

///|
pub fn window_sum_37(values : Array[Int]) -> Array[Int] {
  window_sum(values, 37)
}

///|
pub fn window_min_37(values : Array[Int]) -> Array[Int] {
  window_min(values, 37)
}

///|
pub fn window_max_37(values : Array[Int]) -> Array[Int] {
  window_max(values, 37)
}

///|
pub fn window_range_37(values : Array[Int]) -> Array[Int] {
  window_range(values, 37)
}

///|
pub fn window_sum_38(values : Array[Int]) -> Array[Int] {
  window_sum(values, 38)
}

///|
pub fn window_min_38(values : Array[Int]) -> Array[Int] {
  window_min(values, 38)
}

///|
pub fn window_max_38(values : Array[Int]) -> Array[Int] {
  window_max(values, 38)
}

///|
pub fn window_range_38(values : Array[Int]) -> Array[Int] {
  window_range(values, 38)
}

///|
pub fn window_sum_39(values : Array[Int]) -> Array[Int] {
  window_sum(values, 39)
}

///|
pub fn window_min_39(values : Array[Int]) -> Array[Int] {
  window_min(values, 39)
}

///|
pub fn window_max_39(values : Array[Int]) -> Array[Int] {
  window_max(values, 39)
}

///|
pub fn window_range_39(values : Array[Int]) -> Array[Int] {
  window_range(values, 39)
}

///|
pub fn window_sum_40(values : Array[Int]) -> Array[Int] {
  window_sum(values, 40)
}

///|
pub fn window_min_40(values : Array[Int]) -> Array[Int] {
  window_min(values, 40)
}

///|
pub fn window_max_40(values : Array[Int]) -> Array[Int] {
  window_max(values, 40)
}

///|
pub fn window_range_40(values : Array[Int]) -> Array[Int] {
  window_range(values, 40)
}

///|
pub fn window_sum_41(values : Array[Int]) -> Array[Int] {
  window_sum(values, 41)
}

///|
pub fn window_min_41(values : Array[Int]) -> Array[Int] {
  window_min(values, 41)
}

///|
pub fn window_max_41(values : Array[Int]) -> Array[Int] {
  window_max(values, 41)
}

///|
pub fn window_range_41(values : Array[Int]) -> Array[Int] {
  window_range(values, 41)
}

///|
pub fn window_sum_42(values : Array[Int]) -> Array[Int] {
  window_sum(values, 42)
}

///|
pub fn window_min_42(values : Array[Int]) -> Array[Int] {
  window_min(values, 42)
}

///|
pub fn window_max_42(values : Array[Int]) -> Array[Int] {
  window_max(values, 42)
}

///|
pub fn window_range_42(values : Array[Int]) -> Array[Int] {
  window_range(values, 42)
}

///|
pub fn window_sum_43(values : Array[Int]) -> Array[Int] {
  window_sum(values, 43)
}

///|
pub fn window_min_43(values : Array[Int]) -> Array[Int] {
  window_min(values, 43)
}

///|
pub fn window_max_43(values : Array[Int]) -> Array[Int] {
  window_max(values, 43)
}

///|
pub fn window_range_43(values : Array[Int]) -> Array[Int] {
  window_range(values, 43)
}

///|
pub fn window_sum_44(values : Array[Int]) -> Array[Int] {
  window_sum(values, 44)
}

///|
pub fn window_min_44(values : Array[Int]) -> Array[Int] {
  window_min(values, 44)
}

///|
pub fn window_max_44(values : Array[Int]) -> Array[Int] {
  window_max(values, 44)
}

///|
pub fn window_range_44(values : Array[Int]) -> Array[Int] {
  window_range(values, 44)
}

///|
pub fn window_sum_45(values : Array[Int]) -> Array[Int] {
  window_sum(values, 45)
}

///|
pub fn window_min_45(values : Array[Int]) -> Array[Int] {
  window_min(values, 45)
}

///|
pub fn window_max_45(values : Array[Int]) -> Array[Int] {
  window_max(values, 45)
}

///|
pub fn window_range_45(values : Array[Int]) -> Array[Int] {
  window_range(values, 45)
}

///|
pub fn window_sum_46(values : Array[Int]) -> Array[Int] {
  window_sum(values, 46)
}

///|
pub fn window_min_46(values : Array[Int]) -> Array[Int] {
  window_min(values, 46)
}

///|
pub fn window_max_46(values : Array[Int]) -> Array[Int] {
  window_max(values, 46)
}

///|
pub fn window_range_46(values : Array[Int]) -> Array[Int] {
  window_range(values, 46)
}

///|
pub fn window_sum_47(values : Array[Int]) -> Array[Int] {
  window_sum(values, 47)
}

///|
pub fn window_min_47(values : Array[Int]) -> Array[Int] {
  window_min(values, 47)
}

///|
pub fn window_max_47(values : Array[Int]) -> Array[Int] {
  window_max(values, 47)
}

///|
pub fn window_range_47(values : Array[Int]) -> Array[Int] {
  window_range(values, 47)
}

///|
pub fn window_sum_48(values : Array[Int]) -> Array[Int] {
  window_sum(values, 48)
}

///|
pub fn window_min_48(values : Array[Int]) -> Array[Int] {
  window_min(values, 48)
}

///|
pub fn window_max_48(values : Array[Int]) -> Array[Int] {
  window_max(values, 48)
}

///|
pub fn window_range_48(values : Array[Int]) -> Array[Int] {
  window_range(values, 48)
}

///|
pub fn window_sum_49(values : Array[Int]) -> Array[Int] {
  window_sum(values, 49)
}

///|
pub fn window_min_49(values : Array[Int]) -> Array[Int] {
  window_min(values, 49)
}

///|
pub fn window_max_49(values : Array[Int]) -> Array[Int] {
  window_max(values, 49)
}

///|
pub fn window_range_49(values : Array[Int]) -> Array[Int] {
  window_range(values, 49)
}

///|
pub fn window_sum_50(values : Array[Int]) -> Array[Int] {
  window_sum(values, 50)
}

///|
pub fn window_min_50(values : Array[Int]) -> Array[Int] {
  window_min(values, 50)
}

///|
pub fn window_max_50(values : Array[Int]) -> Array[Int] {
  window_max(values, 50)
}

///|
pub fn window_range_50(values : Array[Int]) -> Array[Int] {
  window_range(values, 50)
}

///|
pub fn window_sum_51(values : Array[Int]) -> Array[Int] {
  window_sum(values, 51)
}

///|
pub fn window_min_51(values : Array[Int]) -> Array[Int] {
  window_min(values, 51)
}

///|
pub fn window_max_51(values : Array[Int]) -> Array[Int] {
  window_max(values, 51)
}

///|
pub fn window_range_51(values : Array[Int]) -> Array[Int] {
  window_range(values, 51)
}

///|
pub fn window_sum_52(values : Array[Int]) -> Array[Int] {
  window_sum(values, 52)
}

///|
pub fn window_min_52(values : Array[Int]) -> Array[Int] {
  window_min(values, 52)
}

///|
pub fn window_max_52(values : Array[Int]) -> Array[Int] {
  window_max(values, 52)
}

///|
pub fn window_range_52(values : Array[Int]) -> Array[Int] {
  window_range(values, 52)
}

///|
pub fn window_sum_53(values : Array[Int]) -> Array[Int] {
  window_sum(values, 53)
}

///|
pub fn window_min_53(values : Array[Int]) -> Array[Int] {
  window_min(values, 53)
}

///|
pub fn window_max_53(values : Array[Int]) -> Array[Int] {
  window_max(values, 53)
}

///|
pub fn window_range_53(values : Array[Int]) -> Array[Int] {
  window_range(values, 53)
}

///|
pub fn window_sum_54(values : Array[Int]) -> Array[Int] {
  window_sum(values, 54)
}

///|
pub fn window_min_54(values : Array[Int]) -> Array[Int] {
  window_min(values, 54)
}

///|
pub fn window_max_54(values : Array[Int]) -> Array[Int] {
  window_max(values, 54)
}

///|
pub fn window_range_54(values : Array[Int]) -> Array[Int] {
  window_range(values, 54)
}

///|
pub fn window_sum_55(values : Array[Int]) -> Array[Int] {
  window_sum(values, 55)
}

///|
pub fn window_min_55(values : Array[Int]) -> Array[Int] {
  window_min(values, 55)
}

///|
pub fn window_max_55(values : Array[Int]) -> Array[Int] {
  window_max(values, 55)
}

///|
pub fn window_range_55(values : Array[Int]) -> Array[Int] {
  window_range(values, 55)
}

///|
pub fn window_sum_56(values : Array[Int]) -> Array[Int] {
  window_sum(values, 56)
}

///|
pub fn window_min_56(values : Array[Int]) -> Array[Int] {
  window_min(values, 56)
}

///|
pub fn window_max_56(values : Array[Int]) -> Array[Int] {
  window_max(values, 56)
}

///|
pub fn window_range_56(values : Array[Int]) -> Array[Int] {
  window_range(values, 56)
}

///|
pub fn window_sum_57(values : Array[Int]) -> Array[Int] {
  window_sum(values, 57)
}

///|
pub fn window_min_57(values : Array[Int]) -> Array[Int] {
  window_min(values, 57)
}

///|
pub fn window_max_57(values : Array[Int]) -> Array[Int] {
  window_max(values, 57)
}

///|
pub fn window_range_57(values : Array[Int]) -> Array[Int] {
  window_range(values, 57)
}

///|
pub fn window_sum_58(values : Array[Int]) -> Array[Int] {
  window_sum(values, 58)
}

///|
pub fn window_min_58(values : Array[Int]) -> Array[Int] {
  window_min(values, 58)
}

///|
pub fn window_max_58(values : Array[Int]) -> Array[Int] {
  window_max(values, 58)
}

///|
pub fn window_range_58(values : Array[Int]) -> Array[Int] {
  window_range(values, 58)
}

///|
pub fn window_sum_59(values : Array[Int]) -> Array[Int] {
  window_sum(values, 59)
}

///|
pub fn window_min_59(values : Array[Int]) -> Array[Int] {
  window_min(values, 59)
}

///|
pub fn window_max_59(values : Array[Int]) -> Array[Int] {
  window_max(values, 59)
}

///|
pub fn window_range_59(values : Array[Int]) -> Array[Int] {
  window_range(values, 59)
}

///|
pub fn window_sum_60(values : Array[Int]) -> Array[Int] {
  window_sum(values, 60)
}

///|
pub fn window_min_60(values : Array[Int]) -> Array[Int] {
  window_min(values, 60)
}

///|
pub fn window_max_60(values : Array[Int]) -> Array[Int] {
  window_max(values, 60)
}

///|
pub fn window_range_60(values : Array[Int]) -> Array[Int] {
  window_range(values, 60)
}

///|
pub fn window_sum_61(values : Array[Int]) -> Array[Int] {
  window_sum(values, 61)
}

///|
pub fn window_min_61(values : Array[Int]) -> Array[Int] {
  window_min(values, 61)
}

///|
pub fn window_max_61(values : Array[Int]) -> Array[Int] {
  window_max(values, 61)
}

///|
pub fn window_range_61(values : Array[Int]) -> Array[Int] {
  window_range(values, 61)
}

///|
pub fn window_sum_62(values : Array[Int]) -> Array[Int] {
  window_sum(values, 62)
}

///|
pub fn window_min_62(values : Array[Int]) -> Array[Int] {
  window_min(values, 62)
}

///|
pub fn window_max_62(values : Array[Int]) -> Array[Int] {
  window_max(values, 62)
}

///|
pub fn window_range_62(values : Array[Int]) -> Array[Int] {
  window_range(values, 62)
}

///|
pub fn window_sum_63(values : Array[Int]) -> Array[Int] {
  window_sum(values, 63)
}

///|
pub fn window_min_63(values : Array[Int]) -> Array[Int] {
  window_min(values, 63)
}

///|
pub fn window_max_63(values : Array[Int]) -> Array[Int] {
  window_max(values, 63)
}

///|
pub fn window_range_63(values : Array[Int]) -> Array[Int] {
  window_range(values, 63)
}

///|
pub fn window_sum_64(values : Array[Int]) -> Array[Int] {
  window_sum(values, 64)
}

///|
pub fn window_min_64(values : Array[Int]) -> Array[Int] {
  window_min(values, 64)
}

///|
pub fn window_max_64(values : Array[Int]) -> Array[Int] {
  window_max(values, 64)
}

///|
pub fn window_range_64(values : Array[Int]) -> Array[Int] {
  window_range(values, 64)
}

///|
pub fn window_sum_65(values : Array[Int]) -> Array[Int] {
  window_sum(values, 65)
}

///|
pub fn window_min_65(values : Array[Int]) -> Array[Int] {
  window_min(values, 65)
}

///|
pub fn window_max_65(values : Array[Int]) -> Array[Int] {
  window_max(values, 65)
}

///|
pub fn window_range_65(values : Array[Int]) -> Array[Int] {
  window_range(values, 65)
}

///|
pub fn window_sum_66(values : Array[Int]) -> Array[Int] {
  window_sum(values, 66)
}

///|
pub fn window_min_66(values : Array[Int]) -> Array[Int] {
  window_min(values, 66)
}

///|
pub fn window_max_66(values : Array[Int]) -> Array[Int] {
  window_max(values, 66)
}

///|
pub fn window_range_66(values : Array[Int]) -> Array[Int] {
  window_range(values, 66)
}

///|
pub fn window_sum_67(values : Array[Int]) -> Array[Int] {
  window_sum(values, 67)
}

///|
pub fn window_min_67(values : Array[Int]) -> Array[Int] {
  window_min(values, 67)
}

///|
pub fn window_max_67(values : Array[Int]) -> Array[Int] {
  window_max(values, 67)
}

///|
pub fn window_range_67(values : Array[Int]) -> Array[Int] {
  window_range(values, 67)
}

///|
pub fn window_sum_68(values : Array[Int]) -> Array[Int] {
  window_sum(values, 68)
}

///|
pub fn window_min_68(values : Array[Int]) -> Array[Int] {
  window_min(values, 68)
}

///|
pub fn window_max_68(values : Array[Int]) -> Array[Int] {
  window_max(values, 68)
}

///|
pub fn window_range_68(values : Array[Int]) -> Array[Int] {
  window_range(values, 68)
}

///|
pub fn window_sum_69(values : Array[Int]) -> Array[Int] {
  window_sum(values, 69)
}

///|
pub fn window_min_69(values : Array[Int]) -> Array[Int] {
  window_min(values, 69)
}

///|
pub fn window_max_69(values : Array[Int]) -> Array[Int] {
  window_max(values, 69)
}

///|
pub fn window_range_69(values : Array[Int]) -> Array[Int] {
  window_range(values, 69)
}

///|
pub fn window_sum_70(values : Array[Int]) -> Array[Int] {
  window_sum(values, 70)
}

///|
pub fn window_min_70(values : Array[Int]) -> Array[Int] {
  window_min(values, 70)
}

///|
pub fn window_max_70(values : Array[Int]) -> Array[Int] {
  window_max(values, 70)
}

///|
pub fn window_range_70(values : Array[Int]) -> Array[Int] {
  window_range(values, 70)
}

///|
pub fn window_sum_71(values : Array[Int]) -> Array[Int] {
  window_sum(values, 71)
}

///|
pub fn window_min_71(values : Array[Int]) -> Array[Int] {
  window_min(values, 71)
}

///|
pub fn window_max_71(values : Array[Int]) -> Array[Int] {
  window_max(values, 71)
}

///|
pub fn window_range_71(values : Array[Int]) -> Array[Int] {
  window_range(values, 71)
}

///|
pub fn window_sum_72(values : Array[Int]) -> Array[Int] {
  window_sum(values, 72)
}

///|
pub fn window_min_72(values : Array[Int]) -> Array[Int] {
  window_min(values, 72)
}

///|
pub fn window_max_72(values : Array[Int]) -> Array[Int] {
  window_max(values, 72)
}

///|
pub fn window_range_72(values : Array[Int]) -> Array[Int] {
  window_range(values, 72)
}

///|
pub fn window_sum_73(values : Array[Int]) -> Array[Int] {
  window_sum(values, 73)
}

///|
pub fn window_min_73(values : Array[Int]) -> Array[Int] {
  window_min(values, 73)
}

///|
pub fn window_max_73(values : Array[Int]) -> Array[Int] {
  window_max(values, 73)
}

///|
pub fn window_range_73(values : Array[Int]) -> Array[Int] {
  window_range(values, 73)
}

///|
pub fn window_sum_74(values : Array[Int]) -> Array[Int] {
  window_sum(values, 74)
}

///|
pub fn window_min_74(values : Array[Int]) -> Array[Int] {
  window_min(values, 74)
}

///|
pub fn window_max_74(values : Array[Int]) -> Array[Int] {
  window_max(values, 74)
}

///|
pub fn window_range_74(values : Array[Int]) -> Array[Int] {
  window_range(values, 74)
}

///|
pub fn window_sum_75(values : Array[Int]) -> Array[Int] {
  window_sum(values, 75)
}

///|
pub fn window_min_75(values : Array[Int]) -> Array[Int] {
  window_min(values, 75)
}

///|
pub fn window_max_75(values : Array[Int]) -> Array[Int] {
  window_max(values, 75)
}

///|
pub fn window_range_75(values : Array[Int]) -> Array[Int] {
  window_range(values, 75)
}

///|
pub fn window_sum_76(values : Array[Int]) -> Array[Int] {
  window_sum(values, 76)
}

///|
pub fn window_min_76(values : Array[Int]) -> Array[Int] {
  window_min(values, 76)
}

///|
pub fn window_max_76(values : Array[Int]) -> Array[Int] {
  window_max(values, 76)
}

///|
pub fn window_range_76(values : Array[Int]) -> Array[Int] {
  window_range(values, 76)
}

///|
pub fn window_sum_77(values : Array[Int]) -> Array[Int] {
  window_sum(values, 77)
}

///|
pub fn window_min_77(values : Array[Int]) -> Array[Int] {
  window_min(values, 77)
}

///|
pub fn window_max_77(values : Array[Int]) -> Array[Int] {
  window_max(values, 77)
}

///|
pub fn window_range_77(values : Array[Int]) -> Array[Int] {
  window_range(values, 77)
}

///|
pub fn window_sum_78(values : Array[Int]) -> Array[Int] {
  window_sum(values, 78)
}

///|
pub fn window_min_78(values : Array[Int]) -> Array[Int] {
  window_min(values, 78)
}

///|
pub fn window_max_78(values : Array[Int]) -> Array[Int] {
  window_max(values, 78)
}

///|
pub fn window_range_78(values : Array[Int]) -> Array[Int] {
  window_range(values, 78)
}

///|
pub fn window_sum_79(values : Array[Int]) -> Array[Int] {
  window_sum(values, 79)
}

///|
pub fn window_min_79(values : Array[Int]) -> Array[Int] {
  window_min(values, 79)
}

///|
pub fn window_max_79(values : Array[Int]) -> Array[Int] {
  window_max(values, 79)
}

///|
pub fn window_range_79(values : Array[Int]) -> Array[Int] {
  window_range(values, 79)
}

///|
pub fn window_sum_80(values : Array[Int]) -> Array[Int] {
  window_sum(values, 80)
}

///|
pub fn window_min_80(values : Array[Int]) -> Array[Int] {
  window_min(values, 80)
}

///|
pub fn window_max_80(values : Array[Int]) -> Array[Int] {
  window_max(values, 80)
}

///|
pub fn window_range_80(values : Array[Int]) -> Array[Int] {
  window_range(values, 80)
}

///|
pub fn window_sum_81(values : Array[Int]) -> Array[Int] {
  window_sum(values, 81)
}

///|
pub fn window_min_81(values : Array[Int]) -> Array[Int] {
  window_min(values, 81)
}

///|
pub fn window_max_81(values : Array[Int]) -> Array[Int] {
  window_max(values, 81)
}

///|
pub fn window_range_81(values : Array[Int]) -> Array[Int] {
  window_range(values, 81)
}

///|
pub fn window_sum_82(values : Array[Int]) -> Array[Int] {
  window_sum(values, 82)
}

///|
pub fn window_min_82(values : Array[Int]) -> Array[Int] {
  window_min(values, 82)
}

///|
pub fn window_max_82(values : Array[Int]) -> Array[Int] {
  window_max(values, 82)
}

///|
pub fn window_range_82(values : Array[Int]) -> Array[Int] {
  window_range(values, 82)
}

///|
pub fn window_sum_83(values : Array[Int]) -> Array[Int] {
  window_sum(values, 83)
}

///|
pub fn window_min_83(values : Array[Int]) -> Array[Int] {
  window_min(values, 83)
}

///|
pub fn window_max_83(values : Array[Int]) -> Array[Int] {
  window_max(values, 83)
}

///|
pub fn window_range_83(values : Array[Int]) -> Array[Int] {
  window_range(values, 83)
}

///|
pub fn window_sum_84(values : Array[Int]) -> Array[Int] {
  window_sum(values, 84)
}

///|
pub fn window_min_84(values : Array[Int]) -> Array[Int] {
  window_min(values, 84)
}

///|
pub fn window_max_84(values : Array[Int]) -> Array[Int] {
  window_max(values, 84)
}

///|
pub fn window_range_84(values : Array[Int]) -> Array[Int] {
  window_range(values, 84)
}

///|
pub fn window_sum_85(values : Array[Int]) -> Array[Int] {
  window_sum(values, 85)
}

///|
pub fn window_min_85(values : Array[Int]) -> Array[Int] {
  window_min(values, 85)
}

///|
pub fn window_max_85(values : Array[Int]) -> Array[Int] {
  window_max(values, 85)
}

///|
pub fn window_range_85(values : Array[Int]) -> Array[Int] {
  window_range(values, 85)
}

///|
pub fn window_sum_86(values : Array[Int]) -> Array[Int] {
  window_sum(values, 86)
}

///|
pub fn window_min_86(values : Array[Int]) -> Array[Int] {
  window_min(values, 86)
}

///|
pub fn window_max_86(values : Array[Int]) -> Array[Int] {
  window_max(values, 86)
}

///|
pub fn window_range_86(values : Array[Int]) -> Array[Int] {
  window_range(values, 86)
}

///|
pub fn window_sum_87(values : Array[Int]) -> Array[Int] {
  window_sum(values, 87)
}

///|
pub fn window_min_87(values : Array[Int]) -> Array[Int] {
  window_min(values, 87)
}

///|
pub fn window_max_87(values : Array[Int]) -> Array[Int] {
  window_max(values, 87)
}

///|
pub fn window_range_87(values : Array[Int]) -> Array[Int] {
  window_range(values, 87)
}

///|
pub fn window_sum_88(values : Array[Int]) -> Array[Int] {
  window_sum(values, 88)
}

///|
pub fn window_min_88(values : Array[Int]) -> Array[Int] {
  window_min(values, 88)
}

///|
pub fn window_max_88(values : Array[Int]) -> Array[Int] {
  window_max(values, 88)
}

///|
pub fn window_range_88(values : Array[Int]) -> Array[Int] {
  window_range(values, 88)
}

///|
pub fn window_sum_89(values : Array[Int]) -> Array[Int] {
  window_sum(values, 89)
}

///|
pub fn window_min_89(values : Array[Int]) -> Array[Int] {
  window_min(values, 89)
}

///|
pub fn window_max_89(values : Array[Int]) -> Array[Int] {
  window_max(values, 89)
}

///|
pub fn window_range_89(values : Array[Int]) -> Array[Int] {
  window_range(values, 89)
}

///|
pub fn window_sum_90(values : Array[Int]) -> Array[Int] {
  window_sum(values, 90)
}

///|
pub fn window_min_90(values : Array[Int]) -> Array[Int] {
  window_min(values, 90)
}

///|
pub fn window_max_90(values : Array[Int]) -> Array[Int] {
  window_max(values, 90)
}

///|
pub fn window_range_90(values : Array[Int]) -> Array[Int] {
  window_range(values, 90)
}

///|
pub fn window_sum_91(values : Array[Int]) -> Array[Int] {
  window_sum(values, 91)
}

///|
pub fn window_min_91(values : Array[Int]) -> Array[Int] {
  window_min(values, 91)
}

///|
pub fn window_max_91(values : Array[Int]) -> Array[Int] {
  window_max(values, 91)
}

///|
pub fn window_range_91(values : Array[Int]) -> Array[Int] {
  window_range(values, 91)
}

///|
pub fn window_sum_92(values : Array[Int]) -> Array[Int] {
  window_sum(values, 92)
}

///|
pub fn window_min_92(values : Array[Int]) -> Array[Int] {
  window_min(values, 92)
}

///|
pub fn window_max_92(values : Array[Int]) -> Array[Int] {
  window_max(values, 92)
}

///|
pub fn window_range_92(values : Array[Int]) -> Array[Int] {
  window_range(values, 92)
}

///|
pub fn window_sum_93(values : Array[Int]) -> Array[Int] {
  window_sum(values, 93)
}

///|
pub fn window_min_93(values : Array[Int]) -> Array[Int] {
  window_min(values, 93)
}

///|
pub fn window_max_93(values : Array[Int]) -> Array[Int] {
  window_max(values, 93)
}

///|
pub fn window_range_93(values : Array[Int]) -> Array[Int] {
  window_range(values, 93)
}

///|
pub fn window_sum_94(values : Array[Int]) -> Array[Int] {
  window_sum(values, 94)
}

///|
pub fn window_min_94(values : Array[Int]) -> Array[Int] {
  window_min(values, 94)
}

///|
pub fn window_max_94(values : Array[Int]) -> Array[Int] {
  window_max(values, 94)
}

///|
pub fn window_range_94(values : Array[Int]) -> Array[Int] {
  window_range(values, 94)
}

///|
pub fn window_sum_95(values : Array[Int]) -> Array[Int] {
  window_sum(values, 95)
}

///|
pub fn window_min_95(values : Array[Int]) -> Array[Int] {
  window_min(values, 95)
}

///|
pub fn window_max_95(values : Array[Int]) -> Array[Int] {
  window_max(values, 95)
}

///|
pub fn window_range_95(values : Array[Int]) -> Array[Int] {
  window_range(values, 95)
}

///|
pub fn window_sum_96(values : Array[Int]) -> Array[Int] {
  window_sum(values, 96)
}

///|
pub fn window_min_96(values : Array[Int]) -> Array[Int] {
  window_min(values, 96)
}

///|
pub fn window_max_96(values : Array[Int]) -> Array[Int] {
  window_max(values, 96)
}

///|
pub fn window_range_96(values : Array[Int]) -> Array[Int] {
  window_range(values, 96)
}

///|
pub fn window_sum_97(values : Array[Int]) -> Array[Int] {
  window_sum(values, 97)
}

///|
pub fn window_min_97(values : Array[Int]) -> Array[Int] {
  window_min(values, 97)
}

///|
pub fn window_max_97(values : Array[Int]) -> Array[Int] {
  window_max(values, 97)
}

///|
pub fn window_range_97(values : Array[Int]) -> Array[Int] {
  window_range(values, 97)
}

///|
pub fn window_sum_98(values : Array[Int]) -> Array[Int] {
  window_sum(values, 98)
}

///|
pub fn window_min_98(values : Array[Int]) -> Array[Int] {
  window_min(values, 98)
}

///|
pub fn window_max_98(values : Array[Int]) -> Array[Int] {
  window_max(values, 98)
}

///|
pub fn window_range_98(values : Array[Int]) -> Array[Int] {
  window_range(values, 98)
}

///|
pub fn window_sum_99(values : Array[Int]) -> Array[Int] {
  window_sum(values, 99)
}

///|
pub fn window_min_99(values : Array[Int]) -> Array[Int] {
  window_min(values, 99)
}

///|
pub fn window_max_99(values : Array[Int]) -> Array[Int] {
  window_max(values, 99)
}

///|
pub fn window_range_99(values : Array[Int]) -> Array[Int] {
  window_range(values, 99)
}

///|
pub fn window_sum_100(values : Array[Int]) -> Array[Int] {
  window_sum(values, 100)
}

///|
pub fn window_min_100(values : Array[Int]) -> Array[Int] {
  window_min(values, 100)
}

///|
pub fn window_max_100(values : Array[Int]) -> Array[Int] {
  window_max(values, 100)
}

///|
pub fn window_range_100(values : Array[Int]) -> Array[Int] {
  window_range(values, 100)
}

///|
pub fn window_sum_101(values : Array[Int]) -> Array[Int] {
  window_sum(values, 101)
}

///|
pub fn window_min_101(values : Array[Int]) -> Array[Int] {
  window_min(values, 101)
}

///|
pub fn window_max_101(values : Array[Int]) -> Array[Int] {
  window_max(values, 101)
}

///|
pub fn window_range_101(values : Array[Int]) -> Array[Int] {
  window_range(values, 101)
}

///|
pub fn window_sum_102(values : Array[Int]) -> Array[Int] {
  window_sum(values, 102)
}

///|
pub fn window_min_102(values : Array[Int]) -> Array[Int] {
  window_min(values, 102)
}

///|
pub fn window_max_102(values : Array[Int]) -> Array[Int] {
  window_max(values, 102)
}

///|
pub fn window_range_102(values : Array[Int]) -> Array[Int] {
  window_range(values, 102)
}

///|
pub fn window_sum_103(values : Array[Int]) -> Array[Int] {
  window_sum(values, 103)
}

///|
pub fn window_min_103(values : Array[Int]) -> Array[Int] {
  window_min(values, 103)
}

///|
pub fn window_max_103(values : Array[Int]) -> Array[Int] {
  window_max(values, 103)
}

///|
pub fn window_range_103(values : Array[Int]) -> Array[Int] {
  window_range(values, 103)
}

///|
pub fn window_sum_104(values : Array[Int]) -> Array[Int] {
  window_sum(values, 104)
}

///|
pub fn window_min_104(values : Array[Int]) -> Array[Int] {
  window_min(values, 104)
}

///|
pub fn window_max_104(values : Array[Int]) -> Array[Int] {
  window_max(values, 104)
}

///|
pub fn window_range_104(values : Array[Int]) -> Array[Int] {
  window_range(values, 104)
}

///|
pub fn window_sum_105(values : Array[Int]) -> Array[Int] {
  window_sum(values, 105)
}

///|
pub fn window_min_105(values : Array[Int]) -> Array[Int] {
  window_min(values, 105)
}

///|
pub fn window_max_105(values : Array[Int]) -> Array[Int] {
  window_max(values, 105)
}

///|
pub fn window_range_105(values : Array[Int]) -> Array[Int] {
  window_range(values, 105)
}

///|
pub fn window_sum_106(values : Array[Int]) -> Array[Int] {
  window_sum(values, 106)
}

///|
pub fn window_min_106(values : Array[Int]) -> Array[Int] {
  window_min(values, 106)
}

///|
pub fn window_max_106(values : Array[Int]) -> Array[Int] {
  window_max(values, 106)
}

///|
pub fn window_range_106(values : Array[Int]) -> Array[Int] {
  window_range(values, 106)
}

///|
pub fn window_sum_107(values : Array[Int]) -> Array[Int] {
  window_sum(values, 107)
}

///|
pub fn window_min_107(values : Array[Int]) -> Array[Int] {
  window_min(values, 107)
}

///|
pub fn window_max_107(values : Array[Int]) -> Array[Int] {
  window_max(values, 107)
}

///|
pub fn window_range_107(values : Array[Int]) -> Array[Int] {
  window_range(values, 107)
}

///|
pub fn window_sum_108(values : Array[Int]) -> Array[Int] {
  window_sum(values, 108)
}

///|
pub fn window_min_108(values : Array[Int]) -> Array[Int] {
  window_min(values, 108)
}

///|
pub fn window_max_108(values : Array[Int]) -> Array[Int] {
  window_max(values, 108)
}

///|
pub fn window_range_108(values : Array[Int]) -> Array[Int] {
  window_range(values, 108)
}

///|
pub fn window_sum_109(values : Array[Int]) -> Array[Int] {
  window_sum(values, 109)
}

///|
pub fn window_min_109(values : Array[Int]) -> Array[Int] {
  window_min(values, 109)
}

///|
pub fn window_max_109(values : Array[Int]) -> Array[Int] {
  window_max(values, 109)
}

///|
pub fn window_range_109(values : Array[Int]) -> Array[Int] {
  window_range(values, 109)
}

///|
pub fn window_sum_110(values : Array[Int]) -> Array[Int] {
  window_sum(values, 110)
}

///|
pub fn window_min_110(values : Array[Int]) -> Array[Int] {
  window_min(values, 110)
}

///|
pub fn window_max_110(values : Array[Int]) -> Array[Int] {
  window_max(values, 110)
}

///|
pub fn window_range_110(values : Array[Int]) -> Array[Int] {
  window_range(values, 110)
}

///|
pub fn window_sum_111(values : Array[Int]) -> Array[Int] {
  window_sum(values, 111)
}

///|
pub fn window_min_111(values : Array[Int]) -> Array[Int] {
  window_min(values, 111)
}

///|
pub fn window_max_111(values : Array[Int]) -> Array[Int] {
  window_max(values, 111)
}

///|
pub fn window_range_111(values : Array[Int]) -> Array[Int] {
  window_range(values, 111)
}

///|
pub fn window_sum_112(values : Array[Int]) -> Array[Int] {
  window_sum(values, 112)
}

///|
pub fn window_min_112(values : Array[Int]) -> Array[Int] {
  window_min(values, 112)
}

///|
pub fn window_max_112(values : Array[Int]) -> Array[Int] {
  window_max(values, 112)
}

///|
pub fn window_range_112(values : Array[Int]) -> Array[Int] {
  window_range(values, 112)
}

///|
pub fn window_sum_113(values : Array[Int]) -> Array[Int] {
  window_sum(values, 113)
}

///|
pub fn window_min_113(values : Array[Int]) -> Array[Int] {
  window_min(values, 113)
}

///|
pub fn window_max_113(values : Array[Int]) -> Array[Int] {
  window_max(values, 113)
}

///|
pub fn window_range_113(values : Array[Int]) -> Array[Int] {
  window_range(values, 113)
}

///|
pub fn window_sum_114(values : Array[Int]) -> Array[Int] {
  window_sum(values, 114)
}

///|
pub fn window_min_114(values : Array[Int]) -> Array[Int] {
  window_min(values, 114)
}

///|
pub fn window_max_114(values : Array[Int]) -> Array[Int] {
  window_max(values, 114)
}

///|
pub fn window_range_114(values : Array[Int]) -> Array[Int] {
  window_range(values, 114)
}

///|
pub fn window_sum_115(values : Array[Int]) -> Array[Int] {
  window_sum(values, 115)
}

///|
pub fn window_min_115(values : Array[Int]) -> Array[Int] {
  window_min(values, 115)
}

///|
pub fn window_max_115(values : Array[Int]) -> Array[Int] {
  window_max(values, 115)
}

///|
pub fn window_range_115(values : Array[Int]) -> Array[Int] {
  window_range(values, 115)
}

///|
pub fn window_sum_116(values : Array[Int]) -> Array[Int] {
  window_sum(values, 116)
}

///|
pub fn window_min_116(values : Array[Int]) -> Array[Int] {
  window_min(values, 116)
}

///|
pub fn window_max_116(values : Array[Int]) -> Array[Int] {
  window_max(values, 116)
}

///|
pub fn window_range_116(values : Array[Int]) -> Array[Int] {
  window_range(values, 116)
}

///|
pub fn window_sum_117(values : Array[Int]) -> Array[Int] {
  window_sum(values, 117)
}

///|
pub fn window_min_117(values : Array[Int]) -> Array[Int] {
  window_min(values, 117)
}

///|
pub fn window_max_117(values : Array[Int]) -> Array[Int] {
  window_max(values, 117)
}

///|
pub fn window_range_117(values : Array[Int]) -> Array[Int] {
  window_range(values, 117)
}

///|
pub fn window_sum_118(values : Array[Int]) -> Array[Int] {
  window_sum(values, 118)
}

///|
pub fn window_min_118(values : Array[Int]) -> Array[Int] {
  window_min(values, 118)
}

///|
pub fn window_max_118(values : Array[Int]) -> Array[Int] {
  window_max(values, 118)
}

///|
pub fn window_range_118(values : Array[Int]) -> Array[Int] {
  window_range(values, 118)
}

///|
pub fn window_sum_119(values : Array[Int]) -> Array[Int] {
  window_sum(values, 119)
}

///|
pub fn window_min_119(values : Array[Int]) -> Array[Int] {
  window_min(values, 119)
}

///|
pub fn window_max_119(values : Array[Int]) -> Array[Int] {
  window_max(values, 119)
}

///|
pub fn window_range_119(values : Array[Int]) -> Array[Int] {
  window_range(values, 119)
}

///|
pub fn window_sum_120(values : Array[Int]) -> Array[Int] {
  window_sum(values, 120)
}

///|
pub fn window_min_120(values : Array[Int]) -> Array[Int] {
  window_min(values, 120)
}

///|
pub fn window_max_120(values : Array[Int]) -> Array[Int] {
  window_max(values, 120)
}

///|
pub fn window_range_120(values : Array[Int]) -> Array[Int] {
  window_range(values, 120)
}

///|
pub fn window_sum_121(values : Array[Int]) -> Array[Int] {
  window_sum(values, 121)
}

///|
pub fn window_min_121(values : Array[Int]) -> Array[Int] {
  window_min(values, 121)
}

///|
pub fn window_max_121(values : Array[Int]) -> Array[Int] {
  window_max(values, 121)
}

///|
pub fn window_range_121(values : Array[Int]) -> Array[Int] {
  window_range(values, 121)
}

///|
pub fn window_sum_122(values : Array[Int]) -> Array[Int] {
  window_sum(values, 122)
}

///|
pub fn window_min_122(values : Array[Int]) -> Array[Int] {
  window_min(values, 122)
}

///|
pub fn window_max_122(values : Array[Int]) -> Array[Int] {
  window_max(values, 122)
}

///|
pub fn window_range_122(values : Array[Int]) -> Array[Int] {
  window_range(values, 122)
}

///|
pub fn window_sum_123(values : Array[Int]) -> Array[Int] {
  window_sum(values, 123)
}

///|
pub fn window_min_123(values : Array[Int]) -> Array[Int] {
  window_min(values, 123)
}

///|
pub fn window_max_123(values : Array[Int]) -> Array[Int] {
  window_max(values, 123)
}

///|
pub fn window_range_123(values : Array[Int]) -> Array[Int] {
  window_range(values, 123)
}

///|
pub fn window_sum_124(values : Array[Int]) -> Array[Int] {
  window_sum(values, 124)
}

///|
pub fn window_min_124(values : Array[Int]) -> Array[Int] {
  window_min(values, 124)
}

///|
pub fn window_max_124(values : Array[Int]) -> Array[Int] {
  window_max(values, 124)
}

///|
pub fn window_range_124(values : Array[Int]) -> Array[Int] {
  window_range(values, 124)
}

///|
pub fn window_sum_125(values : Array[Int]) -> Array[Int] {
  window_sum(values, 125)
}

///|
pub fn window_min_125(values : Array[Int]) -> Array[Int] {
  window_min(values, 125)
}

///|
pub fn window_max_125(values : Array[Int]) -> Array[Int] {
  window_max(values, 125)
}

///|
pub fn window_range_125(values : Array[Int]) -> Array[Int] {
  window_range(values, 125)
}

///|
pub fn window_sum_126(values : Array[Int]) -> Array[Int] {
  window_sum(values, 126)
}

///|
pub fn window_min_126(values : Array[Int]) -> Array[Int] {
  window_min(values, 126)
}

///|
pub fn window_max_126(values : Array[Int]) -> Array[Int] {
  window_max(values, 126)
}

///|
pub fn window_range_126(values : Array[Int]) -> Array[Int] {
  window_range(values, 126)
}

///|
pub fn window_sum_127(values : Array[Int]) -> Array[Int] {
  window_sum(values, 127)
}

///|
pub fn window_min_127(values : Array[Int]) -> Array[Int] {
  window_min(values, 127)
}

///|
pub fn window_max_127(values : Array[Int]) -> Array[Int] {
  window_max(values, 127)
}

///|
pub fn window_range_127(values : Array[Int]) -> Array[Int] {
  window_range(values, 127)
}

///|
pub fn window_sum_128(values : Array[Int]) -> Array[Int] {
  window_sum(values, 128)
}

///|
pub fn window_min_128(values : Array[Int]) -> Array[Int] {
  window_min(values, 128)
}

///|
pub fn window_max_128(values : Array[Int]) -> Array[Int] {
  window_max(values, 128)
}

///|
pub fn window_range_128(values : Array[Int]) -> Array[Int] {
  window_range(values, 128)
}

///|
pub fn power_sum(values : Array[Int], exponent : Int) -> Int {
  let mut total = 0
  for value in values {
    total += power(value, exponent)
  }
  total
}

///|
pub fn power_sum_1(values : Array[Int]) -> Int {
  power_sum(values, 1)
}

///|
pub fn power_sum_2(values : Array[Int]) -> Int {
  power_sum(values, 2)
}

///|
pub fn power_sum_3(values : Array[Int]) -> Int {
  power_sum(values, 3)
}

///|
pub fn power_sum_4(values : Array[Int]) -> Int {
  power_sum(values, 4)
}

///|
pub fn power_sum_5(values : Array[Int]) -> Int {
  power_sum(values, 5)
}

///|
pub fn power_sum_6(values : Array[Int]) -> Int {
  power_sum(values, 6)
}

///|
pub fn power_sum_7(values : Array[Int]) -> Int {
  power_sum(values, 7)
}

///|
pub fn power_sum_8(values : Array[Int]) -> Int {
  power_sum(values, 8)
}

///|
pub fn power_sum_9(values : Array[Int]) -> Int {
  power_sum(values, 9)
}

///|
pub fn power_sum_10(values : Array[Int]) -> Int {
  power_sum(values, 10)
}

///|
pub fn power_sum_11(values : Array[Int]) -> Int {
  power_sum(values, 11)
}

///|
pub fn power_sum_12(values : Array[Int]) -> Int {
  power_sum(values, 12)
}

///|
pub fn power_sum_13(values : Array[Int]) -> Int {
  power_sum(values, 13)
}

///|
pub fn power_sum_14(values : Array[Int]) -> Int {
  power_sum(values, 14)
}

///|
pub fn power_sum_15(values : Array[Int]) -> Int {
  power_sum(values, 15)
}

///|
pub fn power_sum_16(values : Array[Int]) -> Int {
  power_sum(values, 16)
}

///|
pub fn power_sum_17(values : Array[Int]) -> Int {
  power_sum(values, 17)
}

///|
pub fn power_sum_18(values : Array[Int]) -> Int {
  power_sum(values, 18)
}

///|
pub fn power_sum_19(values : Array[Int]) -> Int {
  power_sum(values, 19)
}

///|
pub fn power_sum_20(values : Array[Int]) -> Int {
  power_sum(values, 20)
}

///|
pub fn power_sum_21(values : Array[Int]) -> Int {
  power_sum(values, 21)
}

///|
pub fn power_sum_22(values : Array[Int]) -> Int {
  power_sum(values, 22)
}

///|
pub fn power_sum_23(values : Array[Int]) -> Int {
  power_sum(values, 23)
}

///|
pub fn power_sum_24(values : Array[Int]) -> Int {
  power_sum(values, 24)
}

///|
pub fn power_sum_25(values : Array[Int]) -> Int {
  power_sum(values, 25)
}

///|
pub fn power_sum_26(values : Array[Int]) -> Int {
  power_sum(values, 26)
}

///|
pub fn power_sum_27(values : Array[Int]) -> Int {
  power_sum(values, 27)
}

///|
pub fn power_sum_28(values : Array[Int]) -> Int {
  power_sum(values, 28)
}

///|
pub fn power_sum_29(values : Array[Int]) -> Int {
  power_sum(values, 29)
}

///|
pub fn power_sum_30(values : Array[Int]) -> Int {
  power_sum(values, 30)
}

///|
pub fn power_sum_31(values : Array[Int]) -> Int {
  power_sum(values, 31)
}

///|
pub fn power_sum_32(values : Array[Int]) -> Int {
  power_sum(values, 32)
}

///|
pub fn power_sum_33(values : Array[Int]) -> Int {
  power_sum(values, 33)
}

///|
pub fn power_sum_34(values : Array[Int]) -> Int {
  power_sum(values, 34)
}

///|
pub fn power_sum_35(values : Array[Int]) -> Int {
  power_sum(values, 35)
}

///|
pub fn power_sum_36(values : Array[Int]) -> Int {
  power_sum(values, 36)
}

///|
pub fn power_sum_37(values : Array[Int]) -> Int {
  power_sum(values, 37)
}

///|
pub fn power_sum_38(values : Array[Int]) -> Int {
  power_sum(values, 38)
}

///|
pub fn power_sum_39(values : Array[Int]) -> Int {
  power_sum(values, 39)
}

///|
pub fn power_sum_40(values : Array[Int]) -> Int {
  power_sum(values, 40)
}

///|
pub fn power_sum_41(values : Array[Int]) -> Int {
  power_sum(values, 41)
}

///|
pub fn power_sum_42(values : Array[Int]) -> Int {
  power_sum(values, 42)
}

///|
pub fn power_sum_43(values : Array[Int]) -> Int {
  power_sum(values, 43)
}

///|
pub fn power_sum_44(values : Array[Int]) -> Int {
  power_sum(values, 44)
}

///|
pub fn power_sum_45(values : Array[Int]) -> Int {
  power_sum(values, 45)
}

///|
pub fn power_sum_46(values : Array[Int]) -> Int {
  power_sum(values, 46)
}

///|
pub fn power_sum_47(values : Array[Int]) -> Int {
  power_sum(values, 47)
}

///|
pub fn power_sum_48(values : Array[Int]) -> Int {
  power_sum(values, 48)
}

///|
pub fn power_sum_49(values : Array[Int]) -> Int {
  power_sum(values, 49)
}

///|
pub fn power_sum_50(values : Array[Int]) -> Int {
  power_sum(values, 50)
}

///|
pub fn power_sum_51(values : Array[Int]) -> Int {
  power_sum(values, 51)
}

///|
pub fn power_sum_52(values : Array[Int]) -> Int {
  power_sum(values, 52)
}

///|
pub fn power_sum_53(values : Array[Int]) -> Int {
  power_sum(values, 53)
}

///|
pub fn power_sum_54(values : Array[Int]) -> Int {
  power_sum(values, 54)
}

///|
pub fn power_sum_55(values : Array[Int]) -> Int {
  power_sum(values, 55)
}

///|
pub fn power_sum_56(values : Array[Int]) -> Int {
  power_sum(values, 56)
}

///|
pub fn power_sum_57(values : Array[Int]) -> Int {
  power_sum(values, 57)
}

///|
pub fn power_sum_58(values : Array[Int]) -> Int {
  power_sum(values, 58)
}

///|
pub fn power_sum_59(values : Array[Int]) -> Int {
  power_sum(values, 59)
}

///|
pub fn power_sum_60(values : Array[Int]) -> Int {
  power_sum(values, 60)
}

///|
pub fn power_sum_61(values : Array[Int]) -> Int {
  power_sum(values, 61)
}

///|
pub fn power_sum_62(values : Array[Int]) -> Int {
  power_sum(values, 62)
}

///|
pub fn power_sum_63(values : Array[Int]) -> Int {
  power_sum(values, 63)
}

///|
pub fn power_sum_64(values : Array[Int]) -> Int {
  power_sum(values, 64)
}

///|
pub fn power_sum_65(values : Array[Int]) -> Int {
  power_sum(values, 65)
}

///|
pub fn power_sum_66(values : Array[Int]) -> Int {
  power_sum(values, 66)
}

///|
pub fn power_sum_67(values : Array[Int]) -> Int {
  power_sum(values, 67)
}

///|
pub fn power_sum_68(values : Array[Int]) -> Int {
  power_sum(values, 68)
}

///|
pub fn power_sum_69(values : Array[Int]) -> Int {
  power_sum(values, 69)
}

///|
pub fn power_sum_70(values : Array[Int]) -> Int {
  power_sum(values, 70)
}

///|
pub fn power_sum_71(values : Array[Int]) -> Int {
  power_sum(values, 71)
}

///|
pub fn power_sum_72(values : Array[Int]) -> Int {
  power_sum(values, 72)
}

///|
pub fn power_sum_73(values : Array[Int]) -> Int {
  power_sum(values, 73)
}

///|
pub fn power_sum_74(values : Array[Int]) -> Int {
  power_sum(values, 74)
}

///|
pub fn power_sum_75(values : Array[Int]) -> Int {
  power_sum(values, 75)
}

///|
pub fn power_sum_76(values : Array[Int]) -> Int {
  power_sum(values, 76)
}

///|
pub fn power_sum_77(values : Array[Int]) -> Int {
  power_sum(values, 77)
}

///|
pub fn power_sum_78(values : Array[Int]) -> Int {
  power_sum(values, 78)
}

///|
pub fn power_sum_79(values : Array[Int]) -> Int {
  power_sum(values, 79)
}

///|
pub fn power_sum_80(values : Array[Int]) -> Int {
  power_sum(values, 80)
}

///|
pub fn power_sum_81(values : Array[Int]) -> Int {
  power_sum(values, 81)
}

///|
pub fn power_sum_82(values : Array[Int]) -> Int {
  power_sum(values, 82)
}

///|
pub fn power_sum_83(values : Array[Int]) -> Int {
  power_sum(values, 83)
}

///|
pub fn power_sum_84(values : Array[Int]) -> Int {
  power_sum(values, 84)
}

///|
pub fn power_sum_85(values : Array[Int]) -> Int {
  power_sum(values, 85)
}

///|
pub fn power_sum_86(values : Array[Int]) -> Int {
  power_sum(values, 86)
}

///|
pub fn power_sum_87(values : Array[Int]) -> Int {
  power_sum(values, 87)
}

///|
pub fn power_sum_88(values : Array[Int]) -> Int {
  power_sum(values, 88)
}

///|
pub fn power_sum_89(values : Array[Int]) -> Int {
  power_sum(values, 89)
}

///|
pub fn power_sum_90(values : Array[Int]) -> Int {
  power_sum(values, 90)
}

///|
pub fn power_sum_91(values : Array[Int]) -> Int {
  power_sum(values, 91)
}

///|
pub fn power_sum_92(values : Array[Int]) -> Int {
  power_sum(values, 92)
}

///|
pub fn power_sum_93(values : Array[Int]) -> Int {
  power_sum(values, 93)
}

///|
pub fn power_sum_94(values : Array[Int]) -> Int {
  power_sum(values, 94)
}

///|
pub fn power_sum_95(values : Array[Int]) -> Int {
  power_sum(values, 95)
}

///|
pub fn power_sum_96(values : Array[Int]) -> Int {
  power_sum(values, 96)
}

///|
pub fn power_sum_97(values : Array[Int]) -> Int {
  power_sum(values, 97)
}

///|
pub fn power_sum_98(values : Array[Int]) -> Int {
  power_sum(values, 98)
}

///|
pub fn power_sum_99(values : Array[Int]) -> Int {
  power_sum(values, 99)
}

///|
pub fn power_sum_100(values : Array[Int]) -> Int {
  power_sum(values, 100)
}

///|
pub fn power_sum_101(values : Array[Int]) -> Int {
  power_sum(values, 101)
}

///|
pub fn power_sum_102(values : Array[Int]) -> Int {
  power_sum(values, 102)
}

///|
pub fn power_sum_103(values : Array[Int]) -> Int {
  power_sum(values, 103)
}

///|
pub fn power_sum_104(values : Array[Int]) -> Int {
  power_sum(values, 104)
}

///|
pub fn power_sum_105(values : Array[Int]) -> Int {
  power_sum(values, 105)
}

///|
pub fn power_sum_106(values : Array[Int]) -> Int {
  power_sum(values, 106)
}

///|
pub fn power_sum_107(values : Array[Int]) -> Int {
  power_sum(values, 107)
}

///|
pub fn power_sum_108(values : Array[Int]) -> Int {
  power_sum(values, 108)
}

///|
pub fn power_sum_109(values : Array[Int]) -> Int {
  power_sum(values, 109)
}

///|
pub fn power_sum_110(values : Array[Int]) -> Int {
  power_sum(values, 110)
}

///|
pub fn power_sum_111(values : Array[Int]) -> Int {
  power_sum(values, 111)
}

///|
pub fn power_sum_112(values : Array[Int]) -> Int {
  power_sum(values, 112)
}

///|
pub fn power_sum_113(values : Array[Int]) -> Int {
  power_sum(values, 113)
}

///|
pub fn power_sum_114(values : Array[Int]) -> Int {
  power_sum(values, 114)
}

///|
pub fn power_sum_115(values : Array[Int]) -> Int {
  power_sum(values, 115)
}

///|
pub fn power_sum_116(values : Array[Int]) -> Int {
  power_sum(values, 116)
}

///|
pub fn power_sum_117(values : Array[Int]) -> Int {
  power_sum(values, 117)
}

///|
pub fn power_sum_118(values : Array[Int]) -> Int {
  power_sum(values, 118)
}

///|
pub fn power_sum_119(values : Array[Int]) -> Int {
  power_sum(values, 119)
}

///|
pub fn power_sum_120(values : Array[Int]) -> Int {
  power_sum(values, 120)
}

///|
pub fn power_sum_121(values : Array[Int]) -> Int {
  power_sum(values, 121)
}

///|
pub fn power_sum_122(values : Array[Int]) -> Int {
  power_sum(values, 122)
}

///|
pub fn power_sum_123(values : Array[Int]) -> Int {
  power_sum(values, 123)
}

///|
pub fn power_sum_124(values : Array[Int]) -> Int {
  power_sum(values, 124)
}

///|
pub fn power_sum_125(values : Array[Int]) -> Int {
  power_sum(values, 125)
}

///|
pub fn power_sum_126(values : Array[Int]) -> Int {
  power_sum(values, 126)
}

///|
pub fn power_sum_127(values : Array[Int]) -> Int {
  power_sum(values, 127)
}

///|
pub fn power_sum_128(values : Array[Int]) -> Int {
  power_sum(values, 128)
}

///|
pub fn bucket_counts(
  values : Array[Int],
  bucket_width : Int,
  bucket_count : Int,
) -> Array[Int] {
  let result = Array::make(bucket_count, 0)
  if bucket_width <= 0 {
    return result
  }
  for value in values {
    let bucket = value / bucket_width
    if bucket >= 0 && bucket < bucket_count {
      result[bucket] += 1
    }
  }
  result
}

///|
pub fn bucket_counts_1(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 1, 16)
}

///|
pub fn bucket_counts_2(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 2, 16)
}

///|
pub fn bucket_counts_3(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 3, 16)
}

///|
pub fn bucket_counts_4(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 4, 16)
}

///|
pub fn bucket_counts_5(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 5, 16)
}

///|
pub fn bucket_counts_6(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 6, 16)
}

///|
pub fn bucket_counts_7(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 7, 16)
}

///|
pub fn bucket_counts_8(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 8, 16)
}

///|
pub fn bucket_counts_9(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 9, 16)
}

///|
pub fn bucket_counts_10(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 10, 16)
}

///|
pub fn bucket_counts_11(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 11, 16)
}

///|
pub fn bucket_counts_12(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 12, 16)
}

///|
pub fn bucket_counts_13(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 13, 16)
}

///|
pub fn bucket_counts_14(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 14, 16)
}

///|
pub fn bucket_counts_15(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 15, 16)
}

///|
pub fn bucket_counts_16(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 16, 16)
}

///|
pub fn bucket_counts_17(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 17, 16)
}

///|
pub fn bucket_counts_18(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 18, 16)
}

///|
pub fn bucket_counts_19(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 19, 16)
}

///|
pub fn bucket_counts_20(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 20, 16)
}

///|
pub fn bucket_counts_21(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 21, 16)
}

///|
pub fn bucket_counts_22(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 22, 16)
}

///|
pub fn bucket_counts_23(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 23, 16)
}

///|
pub fn bucket_counts_24(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 24, 16)
}

///|
pub fn bucket_counts_25(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 25, 16)
}

///|
pub fn bucket_counts_26(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 26, 16)
}

///|
pub fn bucket_counts_27(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 27, 16)
}

///|
pub fn bucket_counts_28(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 28, 16)
}

///|
pub fn bucket_counts_29(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 29, 16)
}

///|
pub fn bucket_counts_30(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 30, 16)
}

///|
pub fn bucket_counts_31(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 31, 16)
}

///|
pub fn bucket_counts_32(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 32, 16)
}

///|
pub fn bucket_counts_33(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 33, 16)
}

///|
pub fn bucket_counts_34(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 34, 16)
}

///|
pub fn bucket_counts_35(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 35, 16)
}

///|
pub fn bucket_counts_36(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 36, 16)
}

///|
pub fn bucket_counts_37(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 37, 16)
}

///|
pub fn bucket_counts_38(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 38, 16)
}

///|
pub fn bucket_counts_39(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 39, 16)
}

///|
pub fn bucket_counts_40(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 40, 16)
}

///|
pub fn bucket_counts_41(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 41, 16)
}

///|
pub fn bucket_counts_42(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 42, 16)
}

///|
pub fn bucket_counts_43(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 43, 16)
}

///|
pub fn bucket_counts_44(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 44, 16)
}

///|
pub fn bucket_counts_45(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 45, 16)
}

///|
pub fn bucket_counts_46(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 46, 16)
}

///|
pub fn bucket_counts_47(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 47, 16)
}

///|
pub fn bucket_counts_48(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 48, 16)
}

///|
pub fn bucket_counts_49(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 49, 16)
}

///|
pub fn bucket_counts_50(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 50, 16)
}

///|
pub fn bucket_counts_51(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 51, 16)
}

///|
pub fn bucket_counts_52(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 52, 16)
}

///|
pub fn bucket_counts_53(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 53, 16)
}

///|
pub fn bucket_counts_54(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 54, 16)
}

///|
pub fn bucket_counts_55(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 55, 16)
}

///|
pub fn bucket_counts_56(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 56, 16)
}

///|
pub fn bucket_counts_57(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 57, 16)
}

///|
pub fn bucket_counts_58(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 58, 16)
}

///|
pub fn bucket_counts_59(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 59, 16)
}

///|
pub fn bucket_counts_60(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 60, 16)
}

///|
pub fn bucket_counts_61(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 61, 16)
}

///|
pub fn bucket_counts_62(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 62, 16)
}

///|
pub fn bucket_counts_63(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 63, 16)
}

///|
pub fn bucket_counts_64(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 64, 16)
}

///|
pub fn bucket_counts_65(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 65, 16)
}

///|
pub fn bucket_counts_66(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 66, 16)
}

///|
pub fn bucket_counts_67(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 67, 16)
}

///|
pub fn bucket_counts_68(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 68, 16)
}

///|
pub fn bucket_counts_69(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 69, 16)
}

///|
pub fn bucket_counts_70(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 70, 16)
}

///|
pub fn bucket_counts_71(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 71, 16)
}

///|
pub fn bucket_counts_72(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 72, 16)
}

///|
pub fn bucket_counts_73(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 73, 16)
}

///|
pub fn bucket_counts_74(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 74, 16)
}

///|
pub fn bucket_counts_75(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 75, 16)
}

///|
pub fn bucket_counts_76(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 76, 16)
}

///|
pub fn bucket_counts_77(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 77, 16)
}

///|
pub fn bucket_counts_78(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 78, 16)
}

///|
pub fn bucket_counts_79(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 79, 16)
}

///|
pub fn bucket_counts_80(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 80, 16)
}

///|
pub fn bucket_counts_81(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 81, 16)
}

///|
pub fn bucket_counts_82(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 82, 16)
}

///|
pub fn bucket_counts_83(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 83, 16)
}

///|
pub fn bucket_counts_84(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 84, 16)
}

///|
pub fn bucket_counts_85(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 85, 16)
}

///|
pub fn bucket_counts_86(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 86, 16)
}

///|
pub fn bucket_counts_87(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 87, 16)
}

///|
pub fn bucket_counts_88(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 88, 16)
}

///|
pub fn bucket_counts_89(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 89, 16)
}

///|
pub fn bucket_counts_90(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 90, 16)
}

///|
pub fn bucket_counts_91(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 91, 16)
}

///|
pub fn bucket_counts_92(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 92, 16)
}

///|
pub fn bucket_counts_93(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 93, 16)
}

///|
pub fn bucket_counts_94(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 94, 16)
}

///|
pub fn bucket_counts_95(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 95, 16)
}

///|
pub fn bucket_counts_96(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 96, 16)
}

///|
pub fn bucket_counts_97(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 97, 16)
}

///|
pub fn bucket_counts_98(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 98, 16)
}

///|
pub fn bucket_counts_99(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 99, 16)
}

///|
pub fn bucket_counts_100(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 100, 16)
}

///|
pub fn bucket_counts_101(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 101, 16)
}

///|
pub fn bucket_counts_102(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 102, 16)
}

///|
pub fn bucket_counts_103(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 103, 16)
}

///|
pub fn bucket_counts_104(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 104, 16)
}

///|
pub fn bucket_counts_105(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 105, 16)
}

///|
pub fn bucket_counts_106(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 106, 16)
}

///|
pub fn bucket_counts_107(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 107, 16)
}

///|
pub fn bucket_counts_108(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 108, 16)
}

///|
pub fn bucket_counts_109(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 109, 16)
}

///|
pub fn bucket_counts_110(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 110, 16)
}

///|
pub fn bucket_counts_111(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 111, 16)
}

///|
pub fn bucket_counts_112(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 112, 16)
}

///|
pub fn bucket_counts_113(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 113, 16)
}

///|
pub fn bucket_counts_114(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 114, 16)
}

///|
pub fn bucket_counts_115(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 115, 16)
}

///|
pub fn bucket_counts_116(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 116, 16)
}

///|
pub fn bucket_counts_117(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 117, 16)
}

///|
pub fn bucket_counts_118(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 118, 16)
}

///|
pub fn bucket_counts_119(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 119, 16)
}

///|
pub fn bucket_counts_120(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 120, 16)
}

///|
pub fn bucket_counts_121(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 121, 16)
}

///|
pub fn bucket_counts_122(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 122, 16)
}

///|
pub fn bucket_counts_123(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 123, 16)
}

///|
pub fn bucket_counts_124(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 124, 16)
}

///|
pub fn bucket_counts_125(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 125, 16)
}

///|
pub fn bucket_counts_126(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 126, 16)
}

///|
pub fn bucket_counts_127(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 127, 16)
}

///|
pub fn bucket_counts_128(values : Array[Int]) -> Array[Int] {
  bucket_counts(values, 128, 16)
}
