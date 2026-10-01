<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ChargeItemDefinition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ChargeItemDefinition</sch:title>
    <sch:rule context="f:ChargeItemDefinition">
      <sch:assert test="count(f:version) &gt;= 1">version: minimum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:applicability) &gt;= 1">applicability: minimum cardinality of 'applicability' is 1</sch:assert>
      <sch:assert test="count(f:propertyGroup) &gt;= 1">propertyGroup: minimum cardinality of 'propertyGroup' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ChargeItemDefinition/f:applicability</sch:title>
    <sch:rule context="f:ChargeItemDefinition/f:applicability">
      <sch:assert test="count(f:description) &gt;= 1">description: minimum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:language) &gt;= 1">language: minimum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:expression) &gt;= 1">expression: minimum cardinality of 'expression' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ChargeItemDefinition/f:propertyGroup</sch:title>
    <sch:rule context="f:ChargeItemDefinition/f:propertyGroup">
      <sch:assert test="count(f:priceComponent) &gt;= 1">priceComponent: minimum cardinality of 'priceComponent' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
