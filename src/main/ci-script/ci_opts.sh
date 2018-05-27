# no shebang line here

### CI OPTS ABOUT INFRASTRUCTURE BEGIN
if [ -n "${CI_INFRA_OPT_OPENSOURCE_GIT_PREFIX}" ]; then echo "${CI_INFRA_OPT_OPENSOURCE_GIT_PREFIX}"; else echo "https://github.com"; fi
if [ -z "${CI_INFRA_OPT_DOCKER_REGISTRY}" ]; then CI_INFRA_OPT_DOCKER_REGISTRY="home1oss"; fi
# infrastructure github use maven central, CI_INFRA_OPT_NEXUS3 is not needed.
# infrastructure github use https://sonarqube.com, CI_INFRA_OPT_SONAR_HOST_URL is not needed.
### CI OPTS ABOUT INFRASTRUCTURE END

### CI OPTS BEGIN
if [ -z "${CI_OPT_CHECKSTYLE_CONFIG_LOCATION}" ]; then CI_OPT_CHECKSTYLE_CONFIG_LOCATION="${CI_OPT_MAVEN_BUILD_REPOSITORY}/src/main/checkstyle/google_checks_8.10.xml"; fi
#if [ -z "${CI_OPT_FRONTEND_NODEDOWNLOADROOT}" ]; then CI_OPT_FRONTEND_NODEDOWNLOADROOT="https://nodejs.org/dist/"; fi
#if [ -z "${CI_OPT_FRONTEND_NPMDOWNLOADROOT}" ]; then CI_OPT_FRONTEND_NODEDOWNLOADROOT="https://registry.npmjs.org/npm/-/"; fi
if [ -z "${CI_OPT_PMD_RULESET_LOCATION}" ]; then CI_OPT_PMD_RULESET_LOCATION="${CI_OPT_MAVEN_BUILD_REPOSITORY}/src/main/pmd/pmd-ruleset-6.0.1.xml"; fi
### CI OPTS END

### CI_OPT_EXTRA_MAVEN_OPTS BEGIN
#export CI_OPT_EXTRA_MAVEN_OPTS="${CI_OPT_EXTRA_MAVEN_OPTS} "
### CI_OPT_EXTRA_MAVEN_OPTS END
