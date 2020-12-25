SmexyMail = LibStub("AceAddon-3.0"):NewAddon("SmexyMail", "AceEvent-3.0", "AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("SmexyMail");
local AceConfig = LibStub("AceConfigDialog-3.0");
local name = "SmexyMail";
local version = "v9.0.2";

if not SmexyMailDB then 
	SmexyMailDB = {}; 
end;

if not SmexyMailDB["Characters"] or not SmexyMailDB.Characters then
	SmexyMailDB["Characters"] = {};
end;

if not SmexyMailDB["Temp"] or not SmexyMailDB.Temp then
	SmexyMailDB["Temp"] = {};
	table.insert(SmexyMailDB.Temp, "Profession");
	table.insert(SmexyMailDB.Temp, "Character");
end;

function SmexyMail:OnInitialize()
	if not SmexyMailDB.profile then 
		SmexyMailDB.profile = SmexyMail.defaults.profile; 
	end;
	LibStub("AceConfig-3.0"):RegisterOptionsTable("SmexyMail", SmexyMail.options);
	AceConfig:AddToBlizOptions("SmexyMail", "SmexyMail");
end;

function SmexyMailMakeButtons()
	-- Button Creation
		local position = 0;
		local btn_Config, position = SmexyMail:GenerateButton("SmexyMail Config", position); 
		local btn_Alchemist, position = SmexyMail:GenerateButton("Alchemist", position); 
		local btn_Blacksmith, position = SmexyMail:GenerateButton("Blacksmith", position); 
		local btn_Cook, position = SmexyMail:GenerateButton("Cook", position); 
		local btn_Enchanter, position = SmexyMail:GenerateButton("Enchanter", position);
		local btn_Engineer, position = SmexyMail:GenerateButton("Engineer", position);
		local btn_Inscriptionist, position = SmexyMail:GenerateButton("Inscriptionist", position);
		local btn_Jewelcrafter, position = SmexyMail:GenerateButton("Jewelcrafter", position);
		local btn_Leatherworker, position = SmexyMail:GenerateButton("Leatherworker", position);
		local btn_Tailor, position = SmexyMail:GenerateButton("Tailor", position);
	-- Button Click Events
		btn_Config:SetScript("OnClick", function(self) for x = 1, 2 do InterfaceOptionsFrame_OpenToCategory("SmexyMail"); end; end);
		btn_Alchemist:SetScript("OnClick", function(self) print("Send to Alchemist") end);
		btn_Blacksmith:SetScript("OnClick", function(self) print("Send to Blacksmith") end);
		btn_Cook:SetScript("OnClick", function(self) print("Send to Cook") end);
		btn_Enchanter:SetScript("OnClick", function(self) print("Send to Enchanter") end);
		btn_Engineer:SetScript("OnClick", function(self) print("Send to Engineer") end);
		btn_Inscriptionist:SetScript("OnClick", function(self) print("Send to Inscriptionist") end);
		btn_Jewelcrafter:SetScript("OnClick", function(self) print("Send to Jewelcrafter") end)
		btn_Leatherworker:SetScript("OnClick", function(self) print("Send to Leatherworker") end);
		btn_Tailor:SetScript("OnClick", function(self) print("Send to Tailor") end);
	--Button Display
		btn_Config:Show();
		btn_Alchemist:Show();
		btn_Blacksmith:Show();
		btn_Cook:Show();
		btn_Enchanter:Show();
		btn_Engineer:Show();
		btn_Inscriptionist:Show();
		btn_Jewelcrafter:Show();
		btn_Leatherworker:Show();
		btn_Tailor:Show();
end;

function SmexyMail:GenerateButton(buttonName, pos)
	local button = CreateFrame("button", buttonName, MailFrame, "UIPanelButtonTemplate");
	button:SetHeight(32);
	button:SetWidth(128);
	button:SetPoint("TOPRIGHT", MailFrame, "TOPRIGHT", 128, pos);
	button:SetText(buttonName);
	button:SetAlpha(1);
	return button, pos - 32;
end;

MailFrame:HookScript("OnShow", SmexyMailMakeButtons);