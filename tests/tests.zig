const std = @import("std");

const print = std.debug.print;
const testing = std.testing;

test "expect 1 to be added to 42 using addOne" {
  try testing.expect(addOne(42) == 43);
}

pub fn parseU64(str: []const u8, radix: i32) !u64 {
  //
}

pub fn addOne(num: i32) i32 {
  return num + 1;
}

pub fn main() void {
  //
}