const std = @import("std");
const c = @import("c");

pub fn main() !void {
    @compileLog(c.pthread_t);
    @compileLog(c.pthread_attr_t);
    @compileLog(c.pthread_mutexattr_t);
    @compileLog(c.pthread_mutex_t);
    @compileLog(c.pthread_condattr_t);
    @compileLog(c.pthread_cond_t);
    @compileLog(c.pthread_rwlockattr_t);
    @compileLog(c.pthread_rwlock_t);
}
