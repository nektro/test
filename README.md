```
[meghan@nixos:~/dev/test]$ zig-0.14.0 build test --summary all
Build Summary: 4/4 steps succeeded; 1/1 tests passed
test success
└─ test success
   └─ run test 1 passed 467us MaxRSS:1M
      └─ zig test Debug native cached 9ms MaxRSS:38M
```

```
[meghan@nixos:~/dev/test]$ zig-master build test --summary all
test
└─ test
   └─ run test 0/1 passed, 1 failed
error: 'test.test_0' failed: /home/meghan/.local/share/zig/0.15.0-dev.649+e28b4027e/lib/std/posix.zig:1841:23: 0x104d0cd in openatZ (test)
            .NOENT => return error.FileNotFound,
                      ^
/home/meghan/.local/share/zig/0.15.0-dev.649+e28b4027e/lib/std/fs/Dir.zig:888:16: 0x104b215 in openFileZ (test)
    const fd = try posix.openatZ(self.fd, sub_path, os_flags, 0);
               ^
/home/meghan/.local/share/zig/0.15.0-dev.649+e28b4027e/lib/std/fs/Dir.zig:835:5: 0x104aad0 in openFile (test)
    return self.openFileZ(&path_c, flags);
    ^
/home/meghan/dev/test/packages/dep/test.zig:4:16: 0x104a74f in test_0 (test)
    var file = try std.fs.cwd().openFile("./foo/bar/qux.txt", .{});
               ^
error: while executing test 'test.test_0', the following test command failed:
/home/meghan/zig-cache/o/b1ca438b17651b78cae11f553000233d/test --seed=0x1b0c703c --cache-dir=/home/meghan/zig-cache --listen=-
Build Summary: 1/4 steps succeeded; 1 failed; 0/1 tests passed; 1 failed
test transitive failure
└─ test transitive failure
   └─ run test 0/1 passed, 1 failed
      └─ zig test Debug native cached 9ms MaxRSS:39M
error: the following build command failed with exit code 1:
/home/meghan/zig-cache/o/5700fe8b44af56ec2106ea3ac90042b7/build /home/meghan/.local/share/zig/0.15.0-dev.649+e28b4027e/zig /home/meghan/.local/share/zig/0.15.0-dev.649+e28b4027e/lib /home/meghan/dev/test /home/meghan/zig-cache /home/meghan/.cache/zig --seed 0x1b0c703c -Z913d2f0b1b99b0d3 test --summary all
```

showcase of change in behavior from https://github.com/ziglang/zig/pull/23946 that feels like many will find unexpected
