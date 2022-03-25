package controllers

import (
	"encoding/json"
	"golang/database"
	"golang/entity"
	"io/ioutil"
	"log"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
)

func GetAllProduct(w http.ResponseWriter, r *http.Request) {
	var products []entity.Product
	database.Connector.Find(&products)
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(products)
}

func GetProductGender(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	gender := vars["gender"]

	var products []entity.Product
	database.Connector.Find(&products, "gender = ?", gender)
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(products)
}

func GetProductPattern(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	pattern := vars["pattern"]

	var products []entity.Product
	database.Connector.Find(&products, "pattern = ?", pattern)
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(products)
}

func GetProductSize(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	size := vars["size"]

	var products []entity.Product
	database.Connector.Find(&products, "size = ?", size)
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(products)
}

func GetTest(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	num := vars["num"]
	log.Fatal(num)
}

func GetProductFilter(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	pattern := vars["pattern"]
	plain_colour := vars["plain_colour"]
	gender := vars["gender"]
	size := vars["size"]
	limit := vars["limit"]
	page := vars["page"]
	var strcon string
	strcon = ""

	if pattern != "0" {
		strcon = "  pattern = '" + pattern + "'"
	}

	if plain_colour != "0" {
		if strcon != "" {
			strcon = strcon + " and "
		}
		strcon = strcon + " plain_colour = '" + plain_colour + "'"
	}

	if gender != "0" {
		if strcon != "" {
			strcon = strcon + " and "
		}
		strcon = strcon + " gender = '" + gender + "'"
	}

	if size != "0" {
		if strcon != "" {
			strcon = strcon + " and "
		}
		strcon = strcon + " size = '" + size + "'"
	}

	if page == "0" {
		page = "1"
	}

	if limit != "0" {
		i, err := strconv.Atoi(page)
		if err != nil {
			i = 1
		}
		if limit == "10" {
			page = strconv.Itoa(10 * (i - 1))
		} else if limit == "20" {
			page = strconv.Itoa(20 * (i - 1))
		} else if limit == "50" {
			page = strconv.Itoa(50 * (i - 1))
		} else {
			limit = "10"
			page = strconv.Itoa(10 * (i - 1))
		}
	}

	var products []entity.Product
	database.Connector.Limit(limit).Offset(page).Find(&products, strcon)
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(products)
}

func CreateTransaction(w http.ResponseWriter, r *http.Request) {
	requestBody, _ := ioutil.ReadAll(r.Body)
	var transactionhead entity.Transactionhead
	json.Unmarshal(requestBody, &transactionhead)

	database.Connector.Create(transactionhead)
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusCreated)
	json.NewEncoder(w).Encode(transactionhead)
}
