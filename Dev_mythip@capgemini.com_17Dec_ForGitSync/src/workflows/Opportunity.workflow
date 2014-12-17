<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_To_Opp_Owner</fullName>
        <description>Email To Opp Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Opp_Template</template>
    </alerts>
    <alerts>
        <fullName>Test</fullName>
        <description>Test</description>
        <protected>false</protected>
        <recipients>
            <recipient>mythip@capgemini.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Opp_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>ExpectedRevenue</fullName>
        <field>TrackingNumber__c</field>
        <formula>Amount  *  Probability</formula>
        <name>ExpectedRevenue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Populate_ExpectedRevenue</fullName>
        <actions>
            <name>ExpectedRevenue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Follow_up</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Id. Decision Makers,Perception Analysis</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterThan</operation>
            <value>25000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.CloseDate</field>
            <operation>greaterThan</operation>
            <value>TODAY</value>
        </criteriaItems>
        <description>Populate_ExpectedRevenue</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Test</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>-5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Follow_up</fullName>
        <assignedToType>owner</assignedToType>
        <description>Follow up with the customer</description>
        <dueDateOffset>-2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Opportunity.CloseDate</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Follow up</subject>
    </tasks>
</Workflow>
