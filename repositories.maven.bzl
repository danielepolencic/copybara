# Copyright 2016 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@rules_jvm_external//:defs.bzl", "DEFAULT_REPOSITORY_NAME", "maven_install")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def copybara_maven_repositories():
    maybe(
        maven_install,
        name = DEFAULT_REPOSITORY_NAME,
        artifacts = [
            "com.google.auto.value:auto-value-annotations:1.9",
            "com.google.auto.value:auto-value:1.9",
            "com.google.auto:auto-common:1.2.1",
            "com.google.code.findbugs:jsr305:3.0.2",
            "com.google.code.gson:gson:jar:2.8.5",
            "com.google.flogger:flogger-system-backend:0.7.4",
            "com.google.flogger:flogger:0.7.4",
            "com.google.guava:failureaccess:1.0.1",
            "com.google.guava:guava-testlib:31.1-jre",
            "com.google.guava:guava:31.1-jre",
            "com.google.http-client:google-http-client-gson:jar:1.27.0",
            "com.google.http-client:google-http-client-test:jar:1.27.0",
            "com.google.http-client:google-http-client:jar:1.27.0",
            "com.google.jimfs:jimfs:1.2",
            "com.google.re2j:re2j:1.6",
            "com.google.testparameterinjector:test-parameter-injector:1.8",
            "com.google.truth:truth:1.1.3",
            "com.googlecode.java-diff-utils:diffutils:1.3.0",
            "commons-codec:commons-codec:jar:1.11",
            "junit:junit:4.13.2",
            "net.bytebuddy:byte-buddy-agent:1.9.10",
            "net.bytebuddy:byte-buddy:1.9.10",
            "org.mockito:mockito-core:4.5.1",
            "org.objenesis:objenesis:1.0",
            "org.apache.commons:commons-compress:1.21",
        ],
        repositories = [
            "https://maven.google.com",
            "https://repo1.maven.org/maven2",
        ],
    )
