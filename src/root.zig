//! By convention, root.zig is the root source file when making a library.

const std = @import("std"); // Provides access to the zig standard library
const testing = std.testing;

pub fn bufferedPrint() !void {

    var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = std.fs.File.stdout().writer(&stdout_buffer);
    const stdout = &stdout_writer.interface;

    try stdout.print("Run `zig build test` to run the tests.\n", .{});

    try stdout.flush(); // Don't forget to flush!
}

// export fn exposes the function to make it available to the library API if we were writing a library.

export fn add(a: i32, b: i32) i32 {
    return a + b;
}

// Creating a subtract function except taking in two 64 bit integers and return a 64 bit integer
pub fn subtract(x: i64, y: i64) i64{
    return x - y;
}


test "basic add functionality" {
    try std.testing.expect(add(3, 7) == 10);
}

// Creating a basic test for our subtract function
test "basic subtract functionality"{
    try std.testing.except(subtract(10,6) == 4);
}
