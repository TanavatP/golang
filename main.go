package main

import (
	"golang/controllers"
	"golang/database"
	"log"
	"net/http"

	"github.com/gorilla/mux"
	_ "github.com/jinzhu/gorm/dialects/mysql"
)

func main() {
	initDB()
	log.Println("Starting the HTTP server on port 8090")

	router := mux.NewRouter().StrictSlash(true)
	initaliseHandlers(router)
	log.Fatal(http.ListenAndServe(":8090", router))
}

func initaliseHandlers(router *mux.Router) {
	// router.HandleFunc("/create", controllers.CreatePerson).Methods("POST")
	router.HandleFunc("/getproduct", controllers.GetAllProduct).Methods("GET")
	router.HandleFunc("/getproductpattern/{pattern}", controllers.GetProductPattern).Methods("GET")
	router.HandleFunc("/getproductgender/{gender}", controllers.GetProductGender).Methods("GET")
	router.HandleFunc("/getproductsize/{size}", controllers.GetProductSize).Methods("GET")

	router.HandleFunc("/getproductfilter/limit/{limit:[0-9]+}/plain_colour/{plain_colour}/pattern/{pattern}/gender/{gender}/size/{size}/page/{page:[0-9]+}", controllers.GetProductFilter).Methods("GET")

	router.HandleFunc("/createtransaction", controllers.CreateTransaction).Methods("POST")

	// router.HandleFunc("/update/{id}", controllers.UpdatePersonByID).Methods("PUT")
	// router.HandleFunc("/delete/{id}", controllers.DeletPersonByID).Methods("DELETE")
}

func initDB() {
	config :=
		database.Config{
			ServerName: "localhost:3306",
			User:       "root",
			Password:   "",
			DB:         "test",
		}

	connectionString := database.GetConnectionString(config)
	err := database.Connect(connectionString)
	if err != nil {
		panic(err.Error())
	}
	//database.Migrate(&entity.Person{})
}
