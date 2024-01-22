package main

import (
	"fmt"
	"os"

	"github.com/leapkit/core/server"
	"github.com/timetutor/internal/app"
)

func main() {
	s := server.New(
		"LeapKit",
	)

	if err := app.AddRoutes(s); err != nil {
		os.Exit(1)
	}

	if err := s.Start(); err != nil {
		fmt.Println(err)
	}
}
