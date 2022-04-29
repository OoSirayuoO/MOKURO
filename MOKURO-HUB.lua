local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/968483841532649563/YjaxIfBDWCL8cryevo1r2RKxHkk7jPxlPmiTpu9VpKaVLrn2YoGYIOYDaCyulLErJH4S"
local data = {
   ["content"] = " ```ระบบเช็ค Gem King Legacy By OoSirayuoO```",
   ["embeds"] = {
       {
           ["title"] = "**Check Gem Successfully !**",
           ["description"] = "Gem ที่มีตอนนี้ : " .. game.Players.LocalPlayer.PlayerStats.Gem.Value.." \nExecute with : **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
