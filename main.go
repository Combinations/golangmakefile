package main

import "fmt"

var (
	Version string
	Build   string
)

func main() {
	fmt.Println("Version", Version)
	fmt.Println("git commit hash", Build)
}
