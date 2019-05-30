# no shebang line here

### CI OPTS ABOUT INFRASTRUCTURE BEGIN
if [ -z "${CI_OPT_OPENSOURCE_GIT_PREFIX}" ]; then CI_OPT_OPENSOURCE_GIT_PREFIX="https://github.com"; fi
# dockerfile-maven-plugin's default docker registry is 'docker.io'. docker hub: https://docker.io/v2/ or https://registry-1.docker.io/v2/
if [ -z "${CI_OPT_DOCKER_REGISTRY_URL}" ]; then CI_OPT_DOCKER_REGISTRY_URL="https://docker.io/v2/"; fi
# infrastructure oepnsource use maven central, CI_OPT_NEXUS3 is only for maven-site.
if [ -z "${CI_OPT_NEXUS3}" ]; then CI_OPT_NEXUS3="https://nexus3.infra.top"; fi
# infrastructure oepnsource use https://sonarqube.com, CI_OPT_SONAR_HOST_URL is not needed.
### CI OPTS ABOUT INFRASTRUCTURE END

### CI OPTS BEGIN
if [ -z "${CI_OPT_CHECKSTYLE_CONFIG_LOCATION}" ]; then CI_OPT_CHECKSTYLE_CONFIG_LOCATION="${CI_OPT_MAVEN_BUILD_REPO}/src/main/checkstyle/google_checks_8.10.xml"; fi
# default: https://nodejs.org/dist/  taobao: https://npm.taobao.org/mirrors/node/"
#if [ -z "${CI_OPT_FRONTEND_NODEDOWNLOADROOT}" ]; then CI_OPT_FRONTEND_NODEDOWNLOADROOT="https://nodejs.org/dist/"; fi
# default: http://registry.npm.taobao.org/npm/-/"  taobao: http://registry.npm.taobao.org/npm/-/
#if [ -z "${CI_OPT_FRONTEND_NPMDOWNLOADROOT}" ]; then CI_OPT_FRONTEND_NPMDOWNLOADROOT="https://registry.npmjs.org/npm/-/"; fi
if [ -z "${CI_OPT_PMD_RULESET_LOCATION}" ]; then CI_OPT_PMD_RULESET_LOCATION="${CI_OPT_MAVEN_BUILD_REPO}/src/main/pmd/pmd-ruleset-6.4.0.xml"; fi
### CI OPTS END

### CI_OPT_MAVEN_EXTRA_OPTS BEGIN
#export CI_OPT_MAVEN_EXTRA_OPTS="${CI_OPT_MAVEN_EXTRA_OPTS} "
### CI_OPT_MAVEN_EXTRA_OPTS END
