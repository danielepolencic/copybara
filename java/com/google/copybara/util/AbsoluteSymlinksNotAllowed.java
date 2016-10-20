/*
 * Copyright (C) 2016 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.copybara.util;

import java.io.IOException;
import java.nio.file.Path;

/**
 * An exception thrown then Copybara detects symlink to absolute paths or locations outside the
 * expected root path.
 */
public class AbsoluteSymlinksNotAllowed extends IOException {

  private final Path symlink;
  private final Path destinationFile;

  AbsoluteSymlinksNotAllowed(String msg, Path symlink, Path destinationFile) {
    this.symlink = symlink;
    this.destinationFile = destinationFile;
  }

  public Path getSymlink() {
    return symlink;
  }

  public Path getDestinationFile() {
    return destinationFile;
  }
}
