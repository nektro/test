const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.option(std.builtin.Mode, "mode", "") orelse .Debug;

    const test_step = b.step("test", "Run all tests");
    test_step.dependOn(&b.dependency("dep", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
}
