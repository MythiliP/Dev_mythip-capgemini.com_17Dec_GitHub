<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>fhfd</fullName>
        <field>Social_Security_Number__c</field>
        <formula>&quot;Hi&quot;</formula>
        <name>fhfd</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>New Candidate Notification</fullName>
        <actions>
            <name>fhfd</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Candidate__c.CreatedDate</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>dafdf</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Candidate__c.Name</field>
            <operation>equals</operation>
            <value>bnbn</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
