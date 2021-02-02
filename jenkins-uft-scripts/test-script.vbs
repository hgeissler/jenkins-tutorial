'get passed parameter
Dim Arg, param1
Set Arg = WScript.Arguments

'Parameter1, begin with index0
param1 = Arg(0)

Set QTP = CreateObject("QuickTest.Application")

Set qtResultOpt=CreateObject("QuickTest.RunResultsOptions")
qtResultOpt.ResultsLocation="C:\Jenkins\workspace\uft-test\output"

QTP.Launch
QTP.Visible = TRUE
QTP.Open "C:\Development\UFT-AmazonWebShopTest\TestCase1", TRUE

'Set Parameter
Set params = QTP.Test.ParameterDefinitions.GetParameters()
params.Item("ParamSearch").Value = param1

QTP.Test.Run qtResultOpt, True, params
QTP.Test.Close
QTP.Quit





