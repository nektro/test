const std = @import("std");

test {
    var file = try std.fs.cwd().openFile("./foo/bar/qux.txt", .{});
    defer file.close();
    var buf: [64]u8 = undefined;
    const slice = buf[0..try file.readAll(&buf)];
    try std.testing.expectEqualStrings("hello world!\n", slice);
}
