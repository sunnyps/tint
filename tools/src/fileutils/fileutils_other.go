// Copyright 2021 The Tint Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// +build !windows

// Package fileutils contains utility functions for files
package fileutils

import (
	"os"
	"path/filepath"
	"runtime"
)

// IsExe returns true if the file at path is an executable
func IsExe(path string) bool {
	s, err := os.Stat(path)
	if err != nil {
		return false
	}
	return s.Mode()&0100 != 0
}

// GoSourcePath returns the absolute path to the .go file that calls the
// function
func GoSourcePath() string {
	_, filename, _, ok := runtime.Caller(1)
	if !ok {
		panic("No caller information")
	}
	path, err := filepath.Abs(filename)
	if err != nil {
		panic(err)
	}
	return path
}

// ProjectRoot returns the path to the tint project root
func ProjectRoot() string {
	toolRoot := filepath.Dir(GoSourcePath())
	root, err := filepath.Abs(filepath.Join(toolRoot, "../../.."))
	if err != nil {
		panic(err)
	}
	return root
}