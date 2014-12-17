trigger ErrorTestTrigger on Account (before insert) {
    Trigger.New[0].AccountNumber.adderror('Error sdggsfgf');
}