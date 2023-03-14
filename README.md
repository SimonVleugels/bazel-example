### BUILD image</b>
`docker build -t bazel-example .`

### Run docker container
`docker run -v $(pwd):/bazel-example -ti --rm bazel-example bash`

### Run bazel
```
cd /bazel-example
/usr/bin/scl enable devtoolset-8 bash
bazel test ... --action_env=BAZEL_CXXOPTS="-std=c++14" --repo_env=JAVA_HOME=/usr/lib/jvm/java-11-openjdk --extra_toolchains=@local_jdk//:all --java_language_version=11 --java_runtime_version=local_jdk --tool_java_language_version=11 --tool_java_runtime_version=local_jdk --enable_bzlmod
```

### Error
```
ERROR: /root/.cache/bazel/_bazel_root/a5b927f32b0ba109fc3ec466546ae860/external/rules_java~5.4.1~toolchains~local_jdk/BUILD.bazel:221:19: no such package '@rules_java~5.4.1~toolchains~local_jdk//toolchains': BUILD file not found in directory 'toolchains' of external repository @rules_java~5.4.1~toolchains~local_jdk. Add a BUILD file to a directory to mark it as a package. and referenced by '@rules_java~5.4.1~toolchains~local_jdk//:local_jdk_toolchain_java11'
```
