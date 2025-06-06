<?xml version="1.0" ?>
<testsuites name="trivy">
    <testsuite tests="0" failures="0" name="Dockerfile" errors="0" skipped="0" time="">
        <properties>
            <property name="type" value="dockerfile"></property>
        </properties>
    </testsuite>
    <testsuite tests="26" failures="3" name="Dockerfile" errors="0" skipped="0" time="">
        <properties>
            <property name="type" value="dockerfile"></property>
        </properties>
        <testcase classname="Dockerfile Security Check" name="[MEDIUM] DS001" time="">
            <failure message="&#39;:latest&#39; tag used" type="description">When using a &#39;FROM&#39; statement you should use a specific tag to avoid uncontrolled behavior when the image is updated.</failure>
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS002" time="">
            <failure message="Image user should not be &#39;root&#39;" type="description">Running containers with &#39;root&#39; user can lead to a container escape situation. It is a best practice to run containers as non-root users, which can be done by adding a &#39;USER&#39; statement to the Dockerfile.</failure>
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[LOW] DS026" time="">
            <failure message="No HEALTHCHECK defined" type="description">You should add HEALTHCHECK instruction in your docker container images to perform the health check on running containers.</failure>
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[MEDIUM] DS004" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[LOW] DS005" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[CRITICAL] DS006" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[CRITICAL] DS007" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[CRITICAL] DS008" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS009" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[CRITICAL] DS010" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[CRITICAL] DS011" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[CRITICAL] DS012" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[MEDIUM] DS013" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[LOW] DS014" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS015" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS016" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS017" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS019" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS020" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS021" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS022" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[MEDIUM] DS023" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS024" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS025" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS027" time="">
        </testcase>
        <testcase classname="Dockerfile Security Check" name="[HIGH] DS029" time="">
        </testcase>
    </testsuite>
</testsuites>
