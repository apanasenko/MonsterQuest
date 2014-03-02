package main

import (
    "net/http"
    "MonsterQuest/MonsterQuest/handlers"
)

func main() {
    http.Handle("/", http.FileServer(http.Dir(".")))
    http.Handle("/require/", http.StripPrefix("/require/", http.FileServer(http.Dir("./js"))))
    http.Handle("/tests/",   http.FileServer(http.Dir("./")))
    http.HandleFunc("/json", handlers.JsonHandler)
    http.ListenAndServe(":8080", nil)
}
