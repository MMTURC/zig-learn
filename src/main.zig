const std = @import("std");

// Making the function public allows other zig modules to call it
pub fn main() !void {
    var stdout_buffer: [1042]u8 = undefined;
    var stdout_writer = std.fs.File.stdout().writer(&stdout_buffer);
    const stdout = &stdout_writer.interface;
    try stdout.print("Hello, {s}!\n", .{"world"});
    try stdout.flush();
}
