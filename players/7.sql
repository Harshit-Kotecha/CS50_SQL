SELECT COUNT("id") FROM "players"
WHERE ("bats" = 'L' AND "throws" = 'R')
OR ("throws" = 'R' AND "bats" = 'L');