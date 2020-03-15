
if os.date("%Y%m%d") > "20200325" then
  gg.alert("❗ Please update the MemoryHack script !\n________________________\nTelegram group:\n tme.run/joinchat/AAAAAE6rI6Y9HgzcF_5n4Q\nDiscord: discordapp.com/invite/CkKBkRz", "🔴 EXIT ⛔")
  print("❗ Please update the MemoryHack script !\n________________________\nTelegram group:\n tme.run/joinchat/AAAAAE6rI6Y9HgzcF_5n4Q\nDiscord: discordapp.com/invite/CkKBkRz")
  os.exit()
end
if gg.VERSION < "92.0" then
  gg.alert("❗ Please update the MemoryHack GG !\n________________________\nTelegram group:\n tme.run/joinchat/AAAAAE6rI6Y9HgzcF_5n4Q\nDiscord: discordapp.com/invite/CkKBkRz", "🔴 EXIT ⛔")
  print("❗ Please update the MemoryHack GG !\n________________________\nTelegram group:\n tme.run/joinchat/AAAAAE6rI6Y9HgzcF_5n4Q\nDiscord: discordapp.com/invite/CkKBkRz")
  os.exit()
end

local login={'Виктор', 'Farik', 'KINGAxPOP', 'NINJA', 'Merkuriy', 'Антон Ясюкевич', 'Omnetic Ff', 'Hackerxxx Lil'} 

local login_vip={
	'Memory',
	'Asher TV',
	'ZigZag', 
	'MayloHack'
	}
	
local cd_pass_vip={
	'Fh8371', 
	'Fh3623',
	'Fh4739', 
	'Fh5381'
	
	}
	
local vip_id={
	'111', 
	'333',
	'999',
	'283'
	}

local cd_pass={'19482', '24315', '72012', '42042', '74992', '57393', '73824', '82942'
} 
PS = #cd_pass
LG = #login
LG2 = #login_vip
ID = #vip_id
cd_start = gg.prompt({
  'Введите пароль от приватного чита\n🏆 ᴘᴜʙɢᴍʜᴀᴄᴋ × ᴏɴʟɪɴᴇ ᴄᴏʀᴘᴀʀᴀᴛɪᴏɴ 🏆'
}, {
  [1] = 'Твой пароль' 
}, {
  [1] = "number"
})
m=0
d=0
b=0
i=1
while b==0 do
	if cd_start[1] == cd_pass[i]
	then 
		b=2 
		id=i 
		id_=i
	end  
	
	if cd_start[1] == cd_pass_vip[i]
	then 
	    d=1
		b=3 
		id=i 
		id_=i
	end  
	
	if i == cd_pass[PS] then 
		b=1  
	end
	
	i=i+1
end

function end_c() 
	gg.alert('Неверный пароль!\nНеверный пароль!\nНеверный пароль!\nНеверный пароль!\nНеверный пароль!\nНеверный пароль!\nНеверный пароль!\nНеверный пароль!\nНеверный пароль!\nНеверный пароль!')
    EXIT()
end

if b<2 then end_c() end

if b==3 then
	for h=1, LG do
	if login[h] == login_vip[id] then
	id1 = h
	end
	end
end
	

for e=1, LG2 do
	if login[id]== login_vip[e] and b == 3 then
		id_ = vip_id[e]
		m=1
	end
end

for l=1, ID do
	if id_ == vip_id[l] and m==0 then
		for v=1, LG do
			if login[v] == login_vip[l]
				then
				id_ = v 
			end
		end
	end
end
	
if login_vip[id] == 'null' then d=0 end
	
if b == 3 then
	login[id] = login_vip[id]
	id_ = vip_id[id]
	if id_ == nil then id_ = id1 end
end

if login[id] == 'Ашот Голландский' then b=3 d=1 end

if d==1 and b==3 then 
login[id] = login[id] .. '[VIP+]' 
end

if id > LG then
	login[id] = 'User'
end

id_f= id .. '_'.. login[id]

local cdint = 'ᴘᴜʙɢᴍʜᴀᴄᴋ × ᴏɴʟɪɴᴇ ᴄᴏʀᴘᴀʀᴀᴛɪᴏɴ by Memory\n🎮 Версия чита 1.0 для PUBG MOBILE 0.17🎮\n👋Приветствуем вас, #' .. id_f ..'👑\n💬Статус чита: ✔️no detected✔️'
-- ============================================================


-- ============================================================


function startscript()
  gg.setVisible(false)
  BP = gg.alert('ᴘᴜʙɢᴍʜᴀᴄᴋ × ᴏɴʟɪɴᴇ by Memory\n🏆Здравствуйте 👤'.. id_f ..'\n 👑Желаем удачной игры!👑', '🔥Старт/Start🔥')
  gg.toast('ᴘᴜʙɢᴍʜᴀᴄᴋ × ᴏɴʟɪɴᴇ by Memory\n🏆Здравствуйте 👤'.. id_f ..'\n 👑Желаем удачной игры!👑')
  if BP == 1 then
    HOME()
  end
end
HOME = 1
function HOME()
  FF = gg.choice({
    "💢 Weapon Menu 💢",
    "👁️ Wallhack/Colors Menu 👁️",
    "🌿 Vegetation Menu 🌿",
    "🏃 Speed Menu 🏃",
    "🗂️ Other Function Menu 🗂",
    "⛔ EXIT ⛔"
  }, nil, cdint)
  if FF == 1 then
    WeaponMenu()
  end
  if FF == 2 then
    WallhackColors()
  end
  if FF == 3 then
    VegetationMenu()
  end
  if FF == 4 then
    SpeedMenu()
  end
  if FF == 5 then
    OtherFunctionMenu()
  end
  if FF == 6 then
    exit()
  end
  HOMEDM = -1
end
function WeaponMenu()
  SSQ = gg.multiChoice({
    "💢 Less Recoil\n              🚀(lobby/game)",
    "💢 ❗ (️risk!) No Recoil\n              🚀(lobby/game)",
    "💢 Aimbot v1\n              🚀(lobby/game)",
    "💢 ❗(️risk!) Aimbot v2\n             🕹️(game)",
    "💢 Headshot 50%\n             🕹️(game)",
    "💢 ❗(️risky) Headshot 70%\n             🕹️(game)",
    "💢 ❗(️risk!) Magic Bullet\n             🕹️(game)",
    "💢 Anti Shake\n             🕹️(game)",
    "💢 Zoom Menu\n             🕹️(game)",
    "💢 ❗(️risk!) Scope Menu\n             🕹️(game)",
    "🔙 BACK"
  }, nil, "📁 Weapon Menu")
  if SSQ == nil then
  else
    if SSQ[1] == true then
      LessRecoil()
    end
    if SSQ[2] == true then
      NoRecoil()
    end
    if SSQ[3] == true then
      Aimbotv1()
    end
    if SSQ[4] == true then
      Aimbotv2()
    end
    if SSQ[5] == true then
      Headshot50()
    end
    if SSQ[6] == true then
      Headshot70()
    end
    if SSQ[7] == true then
      MagicBullet()
    end
    if SSQ[8] == true then
      AntiShake()
    end
    if SSQ[9] == true then
      ZoomMenu()
    end
    if SSQ[10] == true then
      ScopeMenu()
    end
    if SSQ[11] == true then
      HOME()
    end
  end
end
function LessRecoil()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1,348,759,109;1953067887;1,634,692,166;1,920,287,604::28", 4, false, 536870912, 0, -1)
  gg.getResultsCount()
  gg.searchNumber("1634692166", 4, false, 536870912, 0, -1)
  gg.getResults(1)
  gg.editAll("9999", 4)
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
end
function NoRecoil()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2 220 275 582 962 234 864", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("EBC", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-2 220 275 586 956 263 424", gg.TYPE_QWORD)
  gg.clearResults()
end
function Aimbotv1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function Aimbotv2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;0.5;200;20::", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("999999999", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("6.0;2.0;1.0::99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("101", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-88.82363891602F;15.0F;1", gg.TYPE_FLOAT)
  gg.searchNumber("1", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("20000000000000", gg.TYPE_FLOAT)
  gg.clearResults()
end
function Headshot50()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.clearResults()
end
function Headshot70()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
end
function MagicBullet()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("69.5;35;33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("160;140;230", gg.TYPE_FLOAT)
  gg.clearResults()
end
function AntiShake()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
end
function ZoomMenu()
  SSU = gg.multiChoice({
    "🔫 Zoom 4X\n— collimator/holographic\n             🔆(game)",
    "🔫 Zoom 6X\n— collimator/holographic\n             🔆(game)",
    "🔫 Zoom 8X\n— collimator/holographic\n             🔆(game)",
    "🔫 Zoom 15X\n— collimator/holographic\n             🔆(game)",
    "🔙 BACK"
  }, nil, "📁 Zoom Menu ")
  if SSU == nil then
  else
    if SSU[1] == true then
      Zoom4X()
    end
    if SSU[2] == true then
      Zoom6X()
    end
    if SSU[3] == true then
      Zoom8X()
    end
    if SSU[4] == true then
      Zoom15X()
    end
    if SSU[5] == true then
      WeaponMenu()
    end
  end
end
function Zoom4X()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("60;55;1.9618179e-44\000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("15", gg.TYPE_FLOAT)
  gg.clearResults()
end
function Zoom6X()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("60;55;1.9618179e-44\000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("14", gg.TYPE_FLOAT)
  gg.clearResults()
end
function Zoom8X()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("60;55;1.9618179e-44\000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("13", gg.TYPE_FLOAT)
  gg.clearResults()
end
function Zoom15X()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("60;55;1.9618179e-44\000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("9", gg.TYPE_FLOAT)
  gg.clearResults()
end
function ScopeMenu()
  SST = gg.multiChoice({
    "☝ Sit Scope\n             🕹️(game)",
    "☝ Sit Scope Right\n             🕹️(game)",
    "☝ Sit Scope Left\n             🕹️(game)",
    "☝ Sit Scope Front\n             🕹️(game)",
    "☝ Sit Scope Right\n             🕹️(game)",
    "☝ Stand Scope Front\n             🕹️(game)",
    "☝ Stand Scope Left\n             🕹️(game)",
    "☝ Deactivate Menu",
    "🔙 BACK"
  }, nil, "📁 Scope Menu")
  if SST == nil then
  else
    if SST[1] == true then
      SitScope()
    end
    if SST[2] == true then
      SitScopeRight()
    end
    if SST[3] == true then
      SitScopeLeft()
    end
    if SST[4] == true then
      SitScopeFront()
    end
    if SST[5] == true then
      SitScopeRight()
    end
    if SST[6] == true then
      StandScopeFront()
    end
    if SST[7] == true then
      StandScopeLeft()
    end
    if SST[8] == true then
      ScopeDeactivateMenu()
    end
    if SST[9] == true then
      WeaponMenu()
    end
  end
end
function SitScope()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("-4767057191527907328", gg.TYPE_QWORD)
  gg.clearResults()
end
function SitScopeRight()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4548109841269983040", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109841269983040", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109841269983040", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("4548109841324179456", gg.TYPE_QWORD)
  gg.clearResults()
end
function SitScopeLeft()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4548109841269983040", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109841269983040", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109841269983040", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("4548109839176695808", gg.TYPE_QWORD)
  gg.clearResults()
end
function SitScopeFront()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("4848124999984742400", gg.TYPE_QWORD)
  gg.clearResults()
end
function StandScopeLeft()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4548109952939150800", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109952939150800", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109952939150800", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("4548109950845845504", gg.TYPE_QWORD)
  gg.clearResults()
end
function StandScopeFront()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("4848124999984742400", gg.TYPE_QWORD)
  gg.clearResults()
end
function ScopeDeactivateMenu()
  SSTT = gg.multiChoice({
    "☒ OFF Sit Scope\n             🕹️(game)",
    "☒ OFF Sit Scope Right\n             🕹️(game)",
    "☒ OFF Sit Scope Left\n             🕹️(game)",
    "☒ OFF Sit Scope Right\n             🕹️(game)",
    "☒ OFF Stand Scope Front\n             🕹️(game)",
    "☒ OFF Stand Scope Left\n             🕹️(game)",
    "🔙 BACK"
  }, nil, "📁 Deactivate Scope Menu")
  if SSTT == nil then
  else
    if SSTT[1] == true then
      SITSCOPEOFF()
    end
    if SSTT[2] == true then
      SITSCOPEROFF()
    end
    if SSTT[3] == true then
      SITSCOPELOFF()
    end
    if SSTT[4] == true then
      STANDSCOPEOFF()
    end
    if SSTT[5] == true then
      STANDSCOPEROFF()
    end
    if SSTT[6] == true then
      STANDSCOPELOFF()
    end
    if SSTT[7] == true then
      ScopeMenu()
    end
  end
end
function SITSCOPEOFF()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-4767057191527907328", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("-4767057191527907328", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("-4767057191527907328", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("-4767057191653227520", gg.TYPE_QWORD)
  gg.clearResults()
end
function SITSCOPEROFF()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4548109841324179456", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109841324179456", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109841324179456", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("4548109841269983040", gg.TYPE_QWORD)
  gg.clearResults()
end
function SITSCOPELOFF()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4548109839176695808", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109839176695808", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109839176695808", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("4548109841269983040", gg.TYPE_QWORD)
  gg.clearResults()
end
function STANDSCOPEOFF()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4848124999984742400", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4848124999984742400", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4848124999984742400", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("4138667321167981973", gg.TYPE_QWORD)
  gg.clearResults()
end
function STANDSCOPEROFF()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4548109952993329152", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109952993329152", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109952993329152", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("4548109952939150800", gg.TYPE_QWORD)
  gg.clearResults()
end
function STANDSCOPELOFF()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4548109950845845504", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109950845845504", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("4548109950845845504", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("4548109952939150800", gg.TYPE_QWORD)
  gg.clearResults()
end
function VegetationMenu()
  SSR = gg.multiChoice({
    "🌱 No Fog v1\n             🕹️(game)",
    "🌱 No Fog v2\n             🔶(lobby)",
    "🌱 No Grass v1\n             🔶(lobby)",
    "🌱 No Grass v2\n             🕹️(game)",
    "🌱 No Grass/Trees\n             🕹️(game)",
    "🔙 BACK"
  }, nil, "📁 Vegetation Menu")
  if SSR == nil then
  else
    if SSR[1] == true then
      NoFogv1()
    end
    if SSR[2] == true then
      NoFogv2()
    end
    if SSR[3] == true then
      NoGrassv1()
    end
    if SSR[4] == true then
      NoGrassv2()
    end
    if SSR[5] == true then
      NoGrassTrees()
    end
    if SSR[6] == true then
      HOME()
    end
  end
end
function NoFogv1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2.3805679e21;-1.3620439e28;-1.3978205e24:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.3620439e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
end
function NoFogv2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(":Default__ExponentialHeightFog", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
end
function NoGrassv1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(":Default__MaterialExpressionLandscapeGrassOutput", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
end
function NoGrassv2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8.0F;1.20000004768F;0.80000001192F;1.5F;0.80000001192F;1.5F::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
end
function NoGrassTrees()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("0.00390625;1;0.99900001287;2", gg.TYPE_FLOAT, false)
  gg.searchNumber("1", gg.TYPE_FLOAT, false)
  gg.getResults(30)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
end
function SpeedMenu()
  SS = gg.multiChoice({
    "🔫 Fix No Damage Menu\n             🕹(game)",
    "☑[ON]\n🏃❗(️risky) Speed Player\n             🕹(game)",
    "☒[OFF]\n🏃❗(️risky) Speed Player\n             🕹(game)",
    "☑[ON]\n🏃❗(️risky) Mirco Speed\n             🕹(game)",
    "☒[OFF]\n🏃 ❗(️risky) Micro Speed\n             🕹(game)",
    "🔫 ❗(️risky) SpeedKnock\n             🔆🕹(game)",
    "🚙 Speed Jeep\n             🕹(game)",
    "🚙 Speed Car\n             🕹(game)",
    "✈️ ❗(️risky) Speed Parachute\n             🕹(game)",
    "🤸 ❗(️risky) High Jump\n             🕹(game)",
    "🔙 BACK"
  }, nil, "📁 Speed Menu")
  if SS == nil then
  else
    if SS[1] == true then
      FixDamageMenu()
    end
    if SS[2] == true then
      SpeedhackON()
    end
    if SS[3] == true then
      SpeedhackOFF()
    end
    if SS[4] == true then
      MircoSpeedON()
    end
    if SS[5] == true then
      MircoSpeedOFF()
    end
    if SS[6] == true then
      SpeedKnock()
    end
    if SS[7] == true then
      SpeedJeep()
    end
    if SS[8] == true then
      SpeedCar()
    end
    if SS[9] == true then
      SpeedParachute()
    end
    if SS[10] == true then
      HighJump()
    end
    if SS[11] == true then
      HOME()
    end
  end
end
function SpeedhackON()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
  gg.clearResults()
end
function SpeedhackOFF()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
  gg.clearResults()
end
function MircoSpeedON()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("1.06", gg.TYPE_FLOAT)
  gg.clearResults()
end
function MircoSpeedOFF()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.06;1.06;1.06;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
end
function SpeedKnock()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.7", gg.TYPE_FLOAT)
  gg.clearResults()
end
function SpeedJeep()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.647058857", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.647058857", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-9999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function SpeedCar()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000;10;4D;4D;50;5;2;0.03::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  gg.clearResults()
end
function SpeedParachute()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.75;150;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("0.75;150;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FixDamageMenu()
  FD = gg.multiChoice({
    "🔫 Fix All Weapon",
    "🔫 M416",
    "🔫 SCAR",
    "🔫 M16A4",
    "🔫 AKM",
    "🔫 KAR",
    "🔫 AWM",
    "🔫 SKS",
    "🔫 MINI",
    "🔫 M249",
    "🔫 DP28",
    "🔫 QBZ",
    "🔫 G36",
    "🔫 AUG",
    "🔫 BERYL",
    "🔫 GROZA",
    "🔫 MUTAN",
    "🔫 M24",
    "🔫 MK",
    "🔫 SLR",
    "🔫 QBU",
    "🔙 BACK"
  }, nil, "📁 Fix No Damage Menu")
  if FD == nil then
  else
    if FD[1] == true then
      fixallweaponnnn()
    end
    if FD[2] == true then
      M416D()
    end
    if FD[3] == true then
      SCARD()
    end
    if FD[4] == true then
      M16A4D()
    end
    if FD[5] == true then
      AKMD()
    end
    if FD[6] == true then
      KARD()
    end
    if FD[7] == true then
      AWMD()
    end
    if FD[8] == true then
      SKSD()
    end
    if FD[9] == true then
      MINID()
    end
    if FD[10] == true then
      M249D()
    end
    if FD[11] == true then
      DP28D()
    end
    if FD[12] == true then
      FD1()
    end
    if FD[13] == true then
      FD2()
    end
    if FD[14] == true then
      FD3()
    end
    if FD[15] == true then
      FD4()
    end
    if FD[16] == true then
      FD5()
    end
    if FD[17] == true then
      FD6()
    end
    if FD[18] == true then
      FD7()
    end
    if FD[19] == true then
      FD8()
    end
    if FD[20] == true then
      FD9()
    end
    if FD[21] == true then
      FD10()
    end
    if FD[22] == true then
      SpeedMenu()
    end
  end
end
function fixallweaponnnn()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88000;0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000;0.09600000083", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90000;0.07500000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000;0.09229999781", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000;0.86", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("94000;0.08570999652", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("94000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500;0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500;0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("78000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("78000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("91000;2.2;2.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("79000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("79000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("80000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("80000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("85300;0.09000000358", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("85300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("84000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("84000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("94500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("94500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("91500;0.07500000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("91500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500;0.109", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function M416D()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88000;0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function SCARD()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000;0.09600000083", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function M16A4D()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90000;0.07500000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function AKMD()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500;0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function KARD()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function AWMD()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("91000;2.2;2.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function SKSD()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("80000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("80000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function MINID()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function M249D()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("91500;0.07500000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("91500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function DP28D()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500;0.109", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FD1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000;0.09229999781", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FD2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000;0.86", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FD3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("94000;0.08570999652", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("94000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FD4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FD5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500;0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FD6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("78000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("78000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FD7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("79000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("79000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FD8()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("85300;0.09000000358", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("85300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FD9()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("84000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("84000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FD10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("94500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("94500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("37401", gg.TYPE_FLOAT)
  gg.clearResults()
end
function OtherFunctionMenu()
  SSE = gg.multiChoice({
    "🗼 Antenna Always\n             🕹(game)",
    "🦅 Ipad View\n             🕹(game)",
    "🧑 Big Head\n             🕹(game)",
    "👼 Esp\n             🕹(game)",
    "🛫 FlyCar\n             🕹(game)",
    "🔙 BACK"
  }, nil, "📁 Other Function Menu ")
  if SSE == nil then
  else
    if SSE[1] == true then
      AlwaysAntenna()
    end
    if SSE[2] == true then
      IpadView()
    end
    if SSE[3] == true then
      BigHead()
    end
    if SSE[4] == true then
      Esp()
    end
    if SSE[5] == true then
      FlyCar()
    end
    if SSE[6] == true then
      HOME()
    end
  end
end
function AlwaysAntenna()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function IpadView()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("440", gg.TYPE_FLOAT)
  gg.clearResults()
end
function BigHead()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.13140678406;1;1;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.clearResults()
end
function Esp()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("324009984;-348261320:165", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("324009984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("324009985", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-336586203;-511702015:105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511702015", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-511633406;-352273285;-511633406:809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511633406", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-335545007;-511702015:85", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511702015", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2046820353", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("324009984;-348261320:165", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("324009984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("324009985", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-511,702,015;-301,463,024:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511702015", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
end
function FlyCar()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45F;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45F;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("700", gg.TYPE_FLOAT)
  gg.clearResults()
end
function HighJump()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("443", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("2500", gg.TYPE_FLOAT)
  gg.clearResults()
end
function WallhackColors()
  W = gg.choice({
    "📚 Sky Colors",
    "🔲~Universal SnapWallhack~🔳",
    "✴️ Fix Blink",
    "⭕ Fix Scope",
    "🗂️ [855 SnapDragon]",
    "🗂️ [845 SnapDragon]",
    "🗂️ [835-435 SnapDragon]",
    "🗂️ [800-400 SnapDragon]",
    "🗂️ [710 SnapDragon]",
    "🗂️ [675 SnapDragon]",
    "🗂️ [660 SnapDragon]",
    "🔶 BACK"
  }, nil, "📁 WALLHACK/COLORS\n\n🕹(GAME/ISLAND)")
  if W == 1 then
    skycolormenupro()
  end
  if W == 2 then
    UNIVERSAL8SNAP()
  end
  if W == 3 then
    FixBlink()
  end
  if W == 4 then
    FixScope()
  end
  if W == 5 then
    SNAP7MENU()
  end
  if W == 6 then
    SNAP6MENU()
  end
  if W == 7 then
    SNAP5MENU()
  end
  if W == 8 then
    SNAP4MENU()
  end
  if W == 9 then
    SNAP3MENU()
  end
  if W == 10 then
    SNAP2MENU()
  end
  if W == 11 then
    SNAP1MENU()
  end
  if W == 12 then
    HOME()
  end
  HOMEDM = -1
end
function FixBlink()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
end
function FixScope()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("2.001", gg.TYPE_FLOAT)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("2.001", gg.TYPE_FLOAT)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function UNIVERSAL8SNAP()
  snap1wallhack()
  snap2wallhack()
  snap3wallhack()
  snap4wallhack()
  snap5wallhack()
  snap6wallhack()
  snap7wallhack()
end
function SNAP1MENU()
  SNAP = gg.multiChoice({
    "— 660 Wallhack —",
    "— 660 Color Red —",
    "— 660 Color Yellow —",
    "— Color Red v2 HDR —",
    "— Color Red v3 —",
    "🔶 BACK"
  }, nil, "📁 MENU")
  if SNAP == nil then
  else
    if SNAP[1] == true then
      snap1wallhack()
    end
    if SNAP[2] == true then
      snap3colorred()
    end
    if SNAP[3] == true then
      snap3coloryellow()
    end
    if SNAP[4] == true then
      red2color()
    end
    if SNAP[5] == true then
      red3color()
    end
    if SNAP[6] == true then
      WallhackColors()
    end
  end
end
function snap1wallhack()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("135215D;4140D;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function snap1colorred()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.3912525e-19F;8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("8199", gg.TYPE_DWORD)
  gg.clearResults()
end
function snap1coloryellow()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(228)
  gg.editAll("8198", gg.TYPE_DWORD)
  gg.clearResults()
end
function SNAP2MENU()
  SNAP = gg.multiChoice({
    "— 675 Wallhack —",
    "— 675 Wallhack + Color —",
    "— 675 Color Red —",
    "— 675 Color Yellow —",
    "— Color Red v2 HDR —",
    "— Color Red v3 —",
    "🔶 BACK"
  }, nil, "📁 MENU")
  if SNAP == nil then
  else
    if SNAP[1] == true then
      snap2wallhack()
    end
    if SNAP[2] == true then
      snap2wallhackcolor2()
    end
    if SNAP[3] == true then
      snap2colorred()
    end
    if SNAP[4] == true then
      snap2coloryellow()
    end
    if SNAP[5] == true then
      red2color()
    end
    if SNAP[6] == true then
      red3color()
    end
    if SNAP[7] == true then
      WallhackColors()
    end
  end
end
function snap2wallhack()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200")
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("930")
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function snap2wallhackcolor2()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200")
  gg.getResults(999)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("930")
  gg.getResults(999)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(140)
  gg.refineAddress("0B8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("286,999", gg.TYPE_DWORD)
  gg.clearResults()
end
function snap2colorred()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8196D;8192D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("8199", gg.TYPE_DWORD)
  gg.clearResults()
end
function snap2coloryellow()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8196D;8192D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("8198", gg.TYPE_DWORD)
  gg.clearResults()
end
function SNAP3MENU()
  SNAP = gg.multiChoice({
    "— 710 Wallhack —",
    "— 710 Color Red —",
    "— 710 Color Yellow —",
    "— Color Red v2 HDR —",
    "— Color Red v3 —",
    "🔶 BACK"
  }, nil, "📁 MENU")
  if SNAP == nil then
  else
    if SNAP[1] == true then
      snap3wallhack()
    end
    if SNAP[2] == true then
      snap3colorred()
    end
    if SNAP[3] == true then
      snap3coloryellow()
    end
    if SNAP[4] == true then
      red2color()
    end
    if SNAP[5] == true then
      red3color()
    end
    if SNAP[6] == true then
      WallhackColors()
    end
  end
end
function snap3wallhack()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200")
  gg.getResults(999)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("930")
  gg.getResults(999)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function snap3colorred()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8196D;8192D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("8199", gg.TYPE_DWORD)
  gg.clearResults()
end
function snap3coloryellow()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8196D;8192D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("8198", gg.TYPE_DWORD)
  gg.clearResults()
end
function SNAP4MENU()
  SNAP = gg.multiChoice({
    "— 800-400 Wallhack —",
    "— 800-400 Color Red —",
    "— 800-400 Color Yellow —",
    "— Color Red v2 HDR —",
    "— Color Red v3 —",
    "🔶 BACK"
  }, nil, "📁 MENU")
  if SNAP == nil then
  else
    if SNAP[1] == true then
      snap4wallhack()
    end
    if SNAP[2] == true then
      snap4colorred()
    end
    if SNAP[3] == true then
      snap4coloryellow()
    end
    if SNAP[4] == true then
      red2color()
    end
    if SNAP[5] == true then
      red3color()
    end
    if SNAP[6] == true then
      WallhackColors()
    end
  end
end
function snap4wallhack()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function snap4colorred()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("E70", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_DWORD)
  gg.clearResults()
end
function snap4coloryellow()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(228)
  gg.editAll("8198", gg.TYPE_DWORD)
  gg.clearResults()
end
function SNAP5MENU()
  SNAP = gg.multiChoice({
    "— 835-435 Wallhack —",
    "— 835-435 Color Red —",
    "— 835-435 Color Yellow —",
    "— Color Red v2 HDR —",
    "— Color Red v3 —",
    "🔶 BACK"
  }, nil, "📁 MENU")
  if SNAP == nil then
  else
    if SNAP[1] == true then
      snap5wallhack()
    end
    if SNAP[2] == true then
      snap5colorred()
    end
    if SNAP[3] == true then
      snap5coloryellow()
    end
    if SNAP[4] == true then
      red2color()
    end
    if SNAP[5] == true then
      red3color()
    end
    if SNAP[6] == true then
      WallhackColors()
    end
  end
end
function snap5wallhack()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function snap5colorred()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("098", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("8199", gg.TYPE_DWORD)
  gg.clearResults()
end
function snap5coloryellow()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(228)
  gg.editAll("8198", gg.TYPE_DWORD)
  gg.clearResults()
end
function SNAP6MENU()
  SNAP = gg.multiChoice({
    "— 845 Wallhack —",
    "— 845 Color Blue —",
    "— 845 Color Green —",
    "— Color Red v2 HDR —",
    "— Color Red v3 —",
    "🔶 BACK"
  }, nil, "📁 MENU")
  if SNAP == nil then
  else
    if SNAP[1] == true then
      snap6wallhack()
    end
    if SNAP[2] == true then
      snap6colorblue()
    end
    if SNAP[3] == true then
      snap6colorgreen()
    end
    if SNAP[4] == true then
      red2color()
    end
    if SNAP[5] == true then
      red3color()
    end
    if SNAP[6] == true then
      WallhackColors()
    end
  end
end
function snap6wallhack()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("930", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function snap6colorblue()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0A0")
  gg.getResults(100)
  gg.editAll("8198", gg.TYPE_DWORD)
  gg.clearResults()
end
function snap6colorgreen()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8201;8 200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8201")
  gg.refineAddress("0B0")
  gg.getResults(228)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
end
function SNAP7MENU()
  SNAP = gg.multiChoice({
    "— 855 Wallhack —",
    "— 855 Color Red —",
    "— 855 Color Yellow —",
    "— Color Red v2 HDR —",
    "— Color Red v3 —",
    "🔶 BACK"
  }, nil, "📁 MENU")
  if SNAP == nil then
  else
    if SNAP[1] == true then
      snap7wallhack()
    end
    if SNAP[2] == true then
      snap7colorred()
    end
    if SNAP[3] == true then
      snap7coloryellow()
    end
    if SNAP[4] == true then
      red2color()
    end
    if SNAP[5] == true then
      red3color()
    end
    if SNAP[6] == true then
      WallhackColors()
    end
  end
end
function snap7wallhack()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("95D;2;9.2194229e-41::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function snap7colorred()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
end
function snap7coloryellow()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0A8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("8198", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("8199", gg.TYPE_DWORD)
  gg.clearResults()
end
function red2color()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("298", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
end
function red3color()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
end
function skycolormenupro()
  PDQ = gg.multiChoice({
    "— Clear Sky —",
    "— White Sky —",
    "— Black Sky —",
    "🔙 BACK"
  }, nil, "MENU")
  if PDQ == nil then
  else
    if PDQ[1] == true then
      clearsky()
    end
    if PDQ[2] == true then
      whitesky()
    end
    if PDQ[3] == true then
      blackskyall()
    end
    if PDQ[4] == true then
      WallhackColors()
    end
  end
end
function clearsky()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.clearResults()
  gg.searchNumber("100F;1F;1,008,981,770D:99", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function blackskyall()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("000", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-90", gg.TYPE_FLOAT)
  gg.clearResults()
end
function whitesky()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.5;0.16513200104", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  lgg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("-99", gg.TYPE_FLOAT)
  gg.clearResults()
end
function exit()
  gg.setVisible(true)
  print([[


Telegram:
tme.run/joinchat/AAAAAE6rI6Y9HgzcF_5n4Q
Discord:
discordapp.com/invite/CkKBkRz
@Memory]])
  os.exit()
end
startscript()
while true do
  if gg.isVisible(true) then
    HOMEDM = 1
    gg.setVisible(false)
  end
  if HOMEDM == 1 then
    HOME()
  end
end
