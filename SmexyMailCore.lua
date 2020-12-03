SmexyMail = LibStub("AceAddon-3.0"):NewAddon("SmexyMail", "AceEvent-3.0", "AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("SmexyMail");
local AceConfig = LibStub("AceConfigDialog-3.0");
local name = "SmexyMail";
local version = "v9.0.2";

if SmexyMailDB == nil then 
	SmexyMailDB = {}; 
end;

SmexyMailBar = CreateFrame("Frame",SmexyMailBar,UIParent, BackdropTemplateMixin and "BackdropTemplate");

function SmexyMail:SmexyMailUpdate()
	--print("Do things with mailbox");
	SmexyMailSideBar = CreateFrame("Frame",SmexyMailSideBar,SmexyMailBar);
	local f = SmexyMailBar
	f:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
			edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
			tile = true, tileSize = 16, edgeSize = 16, 
			insets = { left = 1, right = 1, top = 1, bottom = 1 }}) 
	f:SetBackdropColor(0,0,0,1)
	f:SetFrameStrata("TOOLTIP")
	
	--f:SetWidth(MailFrame:GetWidth()-32) 
	--f:SetHeight(50)
	
	f:SetHeight(MailFrame:GetHeight());
	f:SetWidth(128);
	
	SmexyMailSideBartxt = f:CreateFontString(nil,"OVERLAY","GameFontWhite")
	local ft = SmexyMailSideBartxt 
	ft:ClearAllPoints()
	ft:SetAllPoints(SmexyMailBar) 
	ft:SetJustifyH("CENTER")
	ft:SetJustifyV("CENTER")
	f:ClearAllPoints()
	f:SetPoint("RIGHT",MailFrame,"RIGHT",128,0)
	--f:SetPoint("CENTER",MailFrame,"CENTER",0,32)
	f:SetParent(MailFrame)
	f:Show()            
end;

local f = SmexyMailBar
f:RegisterEvent("MAIL_SHOW") 
f:SetScript("OnEvent", function(self, event, ...)
	if event == "MAIL_SHOW" then
		SmexyMail:SmexyMailUpdate();
	end;
end)