const std = @import("std");

const print = std.debug.print;
const log = std.log;
const os = std.os;
const assert = std.debug.assert;

/// A test function
/// @returns NOTHING
/// @params NOTHING
fn testFn() !void {
   var optionalValue: ?[]const u8 = null;
   assert(optionalValue == null);
}

pub fn main() !void {
    // try testFnc();
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {s}!\nYour number is {d}\n", .{"world", 5});
    print("Hello, {ls}!\n", .{"again"});
    // log();
}
