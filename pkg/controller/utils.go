package controller

import (
	"fmt"

	"github.com/teamhephy/builder/pkg/conf"
	hephy "github.com/teamhephy/controller-sdk-go"
	"github.com/teamhephy/pkg/log"
)

// New creates a new SDK client configured as the builder.
func New(host, port string) (*hephy.Client, error) {

	client, err := hephy.New(true, fmt.Sprintf("http://%s:%s/", host, port), "")
	if err != nil {
		return client, err
	}
	client.UserAgent = "deis-builder"

	builderKey, err := conf.GetBuilderKey()
	if err != nil {
		return client, err
	}
	client.HooksToken = builderKey

	return client, nil
}

// CheckAPICompat checks for API compatibility errors and warns about them.
func CheckAPICompat(c *hephy.Client, err error) error {
	if err == hephy.ErrAPIMismatch {
		log.Info("WARNING: SDK and Controller API versions do not match. SDK: %s Controller: %s",
			hephy.APIVersion, c.ControllerAPIVersion)

		// API mismatch isn't fatal, so after warning continue on.
		return nil
	}

	return err
}
