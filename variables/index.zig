const std = @import("std");

const print = std.debug.print;
const assert = std.debug.assert;
const testing = std.testing;
const mem = std.mem;

fn printType(variable: anytype) void {
  const varType = @typeName(@TypeOf(variable));
  print("Name of the type: {s}\nValue of the type: {d}\n", .{varType, variable});
}

pub fn main() !void {
  const num: u8 = 5;
  printType(num);

  var optionalValue: ?[]const u8 = null;
  assert(optionalValue == null);
  
  const errOrFloat: anyerror!f32 = error.ArgNotFound;
  assert(@TypeOf(errOrFloat) != f32);

  const bytes = "Hello";
  print("{d}\n", .{bytes[5]});
  
  print("{}\n", .{mem.eql(u8, bytes, "H\x65llo")});
}