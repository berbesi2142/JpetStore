@echo off

rem   Licensed to the Apache Software Foundation (ASF) under one or more
rem   contributor license agreements.  See the NOTICE file distributed with
rem   this work for additional information regarding copyright ownership.
rem   The ASF licenses this file to You under the Apache License, Version 2.0
rem   (the "License"); you may not use this file except in compliance with
rem   the License.  You may obtain a copy of the License at
rem
rem       http://www.apache.org/licenses/LICENSE-2.0
rem
rem   Unless required by applicable law or agreed to in writing, software
rem   distributed under the License is distributed on an "AS IS" BASIS,
rem   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem   See the License for the specific language governing permissions and
rem   limitations under the License.

rem   Run HAR Convert tool in CLI

rem   run script shell with parameters : <JMETER_HOME>\bin\har-convertor-to-jmeter.cmd -har_in "myhar.har" -jmx_out "script_out.jmx" -record_out "record.xml" -add_pause true -new_tc_pause 5000
rem   run script shell with parameters : <JMETER_HOME>\bin\har-convertor-to-jmeter.cmd -har_in "myhar.har" -jmx_out "script_out.jmx" -filter_include "https://mysite.com/.*" -filter_exclude "https://notmysite.com/.*" -

setlocal

cd /D %~dp0

set CP=..\lib\ext\har-convertor-jmeter-plugin-7.0-jar-with-dependencies.jar
set CP=%CP%;..\lib\*

java -cp %CP% io.github.vdaburon.jmeter.har.HarForJMeter %*
