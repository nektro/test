# tmp.pma5ig1x3l

```
❯ bun add foo -D
bun add v1.2.20 (6ad208bc)

installed foo@workspace:packages/foo

[27.00ms] done
```

```diff
diff --git a/bun.lock b/bun.lock
index 595cdbe..4dc4992 100644
--- a/bun.lock
+++ b/bun.lock
@@ -5,6 +5,7 @@
       "name": "tmp.pma5ig1x3l",
       "devDependencies": {
         "@types/bun": "latest",
+        "foo": "",
       },
       "peerDependencies": {
         "typescript": "^5",
diff --git a/package.json b/package.json
index 59f0d0d..4fb21e0 100644
--- a/package.json
+++ b/package.json
@@ -3,14 +3,15 @@
   "module": "index.ts",
   "type": "module",
   "private": true,
-  "workspaces":[
+  "workspaces": [
     "./packages/foo"
   ],
   "resolutions": {
     "foo": "workspace:packages/foo"
   },
   "devDependencies": {
-    "@types/bun": "latest"
+    "@types/bun": "latest",
+    "foo": "workspace:*"
   },
   "peerDependencies": {
     "typescript": "^5"
```
