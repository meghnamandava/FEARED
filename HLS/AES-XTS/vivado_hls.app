<project xmlns="com.autoesl.autopilot.project" name="AES-XTS" top="xts_aes">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" setup="true" clean="true" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../aesxts_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="AES-XTS/main.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="AES-XTS/main.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

