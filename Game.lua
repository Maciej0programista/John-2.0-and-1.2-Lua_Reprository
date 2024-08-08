print("ZGADNIJ LICZBĘ")
print("-------------")

math.randomseed(os.time())
local liczba = math.random(1, 100)
local proby = 0

while true do
  print("Zgadnij liczbę od 1 do 100:")
  local strzal = tonumber(input())

  if strzal then
    proby = proby + 1
    if strzal == liczba then
      print("Brawo! Zgadłeś za " .. proby .. " razem.")
      break
    elseif strzal < liczba then
      print("Za mało!")
    else
      print("Za dużo!")
    end
  else
    print("To nie jest liczba!")
  end
end
