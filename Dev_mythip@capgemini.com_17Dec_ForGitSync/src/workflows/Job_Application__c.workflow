<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Stage_to_Preparing_Offer</fullName>
        <field>Stage__c</field>
        <literalValue>Interviews started</literalValue>
        <name>Stage to Preparing Offer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_to_closed</fullName>
        <field>Stage__c</field>
        <literalValue>Interviews completed</literalValue>
        <name>Stage to closed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_to_preparing_offer1</fullName>
        <field>Stage__c</field>
        <literalValue>Preparing offer</literalValue>
        <name>Stage to preparing offer1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_to_preparing_offerNw</fullName>
        <field>Stage__c</field>
        <literalValue>Preparing offer</literalValue>
        <name>Stage to preparing offerNw</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_to_rejected</fullName>
        <field>Stage__c</field>
        <literalValue>Rejected</literalValue>
        <name>Stage to rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_In_Approval</fullName>
        <field>Status__c</field>
        <literalValue>Under Review</literalValue>
        <name>Status to In Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_approved1</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Status to approved1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_approvedNw</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Status to approvedNw</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_closed</fullName>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>Status to closed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_in_approvalNw</fullName>
        <field>Status__c</field>
        <literalValue>In Approval</literalValue>
        <name>Status to in approvalNw</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Approved_Job_App_to_HR_system</fullName>
        <apiVersion>23.0</apiVersion>
        <endpointUrl>https://www.uc.com/internal-proc</endpointUrl>
        <fields>Id</fields>
        <fields>Name</fields>
        <fields>Position__c</fields>
        <fields>Rating__c</fields>
        <fields>Stage__c</fields>
        <fields>Status__c</fields>
        <fields>Total_Reviews__c</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>mythip@capgemini.com</integrationUser>
        <name>Approved Job App to HR system</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <tasks>
        <fullName>Notify_reg_offer_coming</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Notify  reg offer coming</subject>
    </tasks>
    <tasks>
        <fullName>Notify_reg_offer_coming1</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Notify  reg offer coming1</subject>
    </tasks>
</Workflow>
