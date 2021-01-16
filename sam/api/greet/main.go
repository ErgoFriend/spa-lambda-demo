package main

import (
	"errors"
	"fmt"
	"io/ioutil"
	"net/http"
	"math/rand"
	"time"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

var (
	// DefaultHTTPGetAddress Default Address
	DefaultHTTPGetAddress = "https://checkip.amazonaws.com"

	// ErrNoIP No IP found in response
	ErrNoIP = errors.New("No IP in HTTP response")

	// ErrNon200Response non 200 status code in response
	ErrNon200Response = errors.New("Non 200 Response found")
)

func handler(request events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	resp, err := http.Get(DefaultHTTPGetAddress)
	if err != nil {
		return events.APIGatewayProxyResponse{}, err
	}

	if resp.StatusCode != 200 {
		return events.APIGatewayProxyResponse{}, ErrNon200Response
	}

	ip, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		return events.APIGatewayProxyResponse{}, err
	}

	if len(ip) == 0 {
		return events.APIGatewayProxyResponse{}, ErrNoIP
	}

	formats := []string{
        "ハロー、スプートニク。",
        "you copy?",
        "i copy.",
        "21atmp11fa1e",
    }

	return events.APIGatewayProxyResponse{
		Body:
			fmt.Sprintf("%v> %s\n",string(ip),formats[rand.Intn(len(formats))]),
		StatusCode: 200,
	}, nil
}

func init() {
    rand.Seed(time.Now().UnixNano())
}

func main() {
	lambda.Start(handler)
}
