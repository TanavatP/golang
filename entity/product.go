package entity

//Product object for REST(CRUD)
type Product struct {
	ID           int    `json:"id"`
	Name         string `json:"name"`
	Plain_colour string `json:"plain_colour"`
	Pattern      string `json:"pattern"`
	Figure       string `json:"figure"`
	Size         string `json:"size"`
}

type Transactionhead struct {
	ID             int     `json:"id"`
	Totalprize     float32 `json:"totalprize"`
	Address        string  `json:"address"`
	Date           string  `json:"date"`
	Payment_status string  `json:"payment_status"`
	Payment_date   string  `json:"payment_date"`
}
