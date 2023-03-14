BUILD image:
docker build -t bazel-example .

Run docker container
docker run -v $(pwd):/bazel-example -ti --rm bazel-example bash

Run bazel
cd /bazel-example
/usr/bin/scl enable devtoolset-8 bash
bazel test ... --action_env=BAZEL_CXXOPTS="-std=c++14" --repo_env=JAVA_HOME=/usr/lib/jvm/java-11-openjdk --extra_toolchains=@local_jdk//:all --java_language_version=11 --java_runtime_version=local_jdk --tool_java_language_version=11 --tool_java_runtime_version=local_jdk --enable_bzlmod
