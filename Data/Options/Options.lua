local L = LibStub("AceLocale-3.0"):GetLocale("SmexyMail");
local SmexyMail = SmexyMail;

SmexyMail.options = {
	name = "SmexyMail Options",
	type = 'group',
	args = {	
		Enabled = {
			type = "toggle",
			name = "Enable SmexyMail",
			desc = "Enables/Disables SmexyMail.",
			width = "full",
			get = function(info) return SmexyMailDB.profile.Enabled; end,
			set = function(info, v) SmexyMailDB.profile.Enabled = v; end,
			order = 1
		},
		About = {
			type = "description",
			name = SmexyMail.Colors.wowtoken .. "BattleTag & Discord: Lunixia#1737\r\n" ..
					"|cFFCC66FFTwitch: https://www.twitch.tv/LunixiaLIVE\r\n" ..
					"|rCheck out my other addons:\r\n" ..	
					"|cFFFF8000SmexyMats(Retail)\r\n" ..
					"|cFFFF8000SmexyMats(Classic)\r\n" ..
					"|cFFFF8000SmexyScaleUI(SSUI)\r\n" ..  
					"|cFFFF8000SmexyGMO(SGMO)",
			fontSize = "medium",
			order = 2,
		},
	},
};