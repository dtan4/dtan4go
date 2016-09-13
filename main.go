package main

import (
	"flag"
	"fmt"
	"os"
)

func main() {
	var (
		version bool
	)

	flag.BoolVar(&version, "v", false, "Print the version")

	flag.Parse()

	if version {
		fmt.Println("dtan4go " + Version)
		os.Exit(0)
	}

	fmt.Println("dtan4go")
}
