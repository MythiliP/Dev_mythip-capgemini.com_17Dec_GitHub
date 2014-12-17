<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>SendEmail</fullName>
        <description>SendEmail</description>
        <protected>false</protected>
        <recipients>
            <recipient>mythip@capgemini.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Thankingcustomer</template>
    </alerts>
    <alerts>
        <fullName>timeTrigger</fullName>
        <description>timeTrigger</description>
        <protected>false</protected>
        <recipients>
            <recipient>mythip@capgemini.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Thankingcustomer</template>
    </alerts>
    <fieldUpdates>
        <fullName>Set_Status_To_closed</fullName>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>Set_Status_To_closed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>sendOrderDetails</fullName>
        <apiVersion>27.0</apiVersion>
        <endpointUrl>http://www.google.co</endpointUrl>
        <fields>Accounttest__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>mythip@capgemini.com</integrationUser>
        <name>sendOrderDetails</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>SendEmail</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Order__c.Status__c</field>
            <operation>equals</operation>
            <value>Closed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>timeTrigger</name>
                <type>Alert</type>
            </actions>
            <timeLength>10</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Set_Order_To_Closed</fullName>
        <active>true</active>
        <formula>AND(
 isClosed__c =True,
 NOT(ISBLANK(price__c))
 )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Follow_up_with_the_customer</fullName>
        <assignedTo>mythip@capgemini.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>10</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Order__c.CreatedDate</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Follow up with the customer</subject>
    </tasks>
</Workflow>