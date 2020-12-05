SmexyMail = LibStub("AceAddon-3.0"):NewAddon("SmexyMail", "AceEvent-3.0", "AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("SmexyMail");
local AceConfig = LibStub("AceConfigDialog-3.0");
local name = "SmexyMail";
local version = "v9.0.2";

if not SmexyMailDB then 
	SmexyMailDB = {}; 
end;

function SmexyMail:OnInitialize()
	if not SmexyMailDB.profile then 
		SmexyMailDB.profile = SmexyMail.defaults.profile; 
	end;
	LibStub("AceConfig-3.0"):RegisterOptionsTable("SmexyMail", SmexyMail.options);
	AceConfig:AddToBlizOptions("SmexyMail", "SmexyMail");
end;



function SmexyMailUpdate()
	print("Make Buttons")
	local btn_Tailor = SmexyMail:GenerateButton("Tailor")
	btn_Tailor:SetScript("OnClick", function(self) print("Send to Tailor") end)
	btn_Tailor:Show()
end;

function SmexyMail:GenerateButton(buttonName)
	local button = CreateFrame("button", buttonName, MailFrame, "UIPanelButtonTemplate")
	button:SetHeight(25)
	button:SetWidth(100)
	button:SetPoint("TOPRIGHT", MailFrame, "TOPRIGHT", 100, 0)
	button:SetText(buttonName)
	button:SetAlpha(1)
	return button
end;

MailFrame:HookScript("OnShow", SmexyMailUpdate)