package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", func(rs http.ResponseWriter, rq *http.Request) {
		fmt.Fprintf(rs, "GO server on docker")
	})

	log.Fatal(http.ListenAndServe(":"+os.Getenv("PORT"), nil))
}
