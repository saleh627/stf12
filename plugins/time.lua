function run(msg, matches)
local url = http.request('http://api.gpmod.ir/time/')
local jdat = json:decode(url)
 local text =  '🕒 ساعت '..jdat.FAtime..' \n📆 امروز '..jdat.FAdate..' میباشد.\n    —--\n🕒 '..jdat.ENtime..'\n📆 '..jdat.ENdate.. '\n\n@stf_tem'
return text
end
return {
  patterns = {"^[#/!]([Tt][iI][Mm][Ee])$"}, 
run = run, 
}