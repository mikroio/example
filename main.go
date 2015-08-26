package main

import (
       "io"
       "net/http"
)

func hello(w http.ResponseWriter, r *http.Request) {
     io.WriteString(w, "Hello cruel cold world!")
}

func main() {
     http.HandleFunc("/", hello)
     http.ListenAndServe(":8000", nil)
}
