#!/bin/sh -l

echo "Building"
godot --path ./$1 --build-solutions --quit
echo "Done"
