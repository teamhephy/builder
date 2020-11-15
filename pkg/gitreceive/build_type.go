package gitreceive

import (
	"fmt"
	"os"

	"github.com/teamhephy/controller-sdk-go/api"
)

type buildType string

func (b buildType) String() string {
	return string(b)
}

const (
	buildTypeProcfile   buildType = "procfile"
	buildTypeDockerfile buildType = "dockerfile"
)

func getBuildType(dirName string, config api.Config) buildType {

	hasDockerfile := false
	if _, err := os.Stat(fmt.Sprintf("%s/Dockerfile", dirName)); err == nil {
		hasDockerfile = true
	}

	hasProcfile := false
	if _, err := os.Stat(fmt.Sprintf("%s/Procfile", dirName)); err == nil {
		hasProcfile = true
	}
	if hasDockerfile && hasProcfile {
		if bTypeInterface, ok := config.Values["HEPHY_BUILDER"]; ok {
			if strType, ok := bTypeInterface.(string); ok {
				bType := buildType(strType)
				if bType == buildTypeProcfile || bType == buildTypeDockerfile {
					return bType
				}
			}
		}
	} else if hasProcfile {
		return buildTypeProcfile
	}
	return buildTypeDockerfile
}
