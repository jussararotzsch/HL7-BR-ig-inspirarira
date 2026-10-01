<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MeasureReport
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MeasureReport</sch:title>
    <sch:rule context="f:MeasureReport">
      <sch:assert test="count(f:subject) &lt;= 0">subject: maximum cardinality of 'subject' is 0</sch:assert>
      <sch:assert test="count(f:date) &gt;= 1">date: minimum cardinality of 'date' is 1</sch:assert>
      <sch:assert test="count(f:reporter) &gt;= 1">reporter: minimum cardinality of 'reporter' is 1</sch:assert>
      <sch:assert test="count(f:group) &gt;= 1">group: minimum cardinality of 'group' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MeasureReport/f:group</sch:title>
    <sch:rule context="f:MeasureReport/f:group">
      <sch:assert test="count(f:population) &gt;= 1">population: minimum cardinality of 'population' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MeasureReport/f:group/f:population</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:population">
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:count) &gt;= 1">count: minimum cardinality of 'count' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MeasureReport/f:group/f:stratifier/f:stratum/f:population</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:stratifier/f:stratum/f:population">
      <sch:assert test="count(f:count) &gt;= 1">count: minimum cardinality of 'count' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
