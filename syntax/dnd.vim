syntax keyword dndKeywords
    \ SAV
    \ HP

syntax keyword dndAbilities
    \ STR
    \ DEX
    \ CON
    \ INT
    \ WIS
    \ CHA

syntax keyword dndSkills
    \ Acrobatics
    \ Arcana
    \ Athletics
    \ Deception
    \ History
    \ Insight
    \ Intimidation
    \ Investigation
    \ Medicine
    \ Nature
    \ Perception
    \ Performance
    \ Persuasion
    \ Religion
    \ Stealth
    \ Survival


syntax match num "\v[0-9]*"
syntax match posMod "\v\+[0-9]*"
syntax match negMod "\v\-[0-9]*"
highlight default link posMod Number
highlight default link negMod Number
highlight default link num Number

syntax match dndDice "\vd[0-9]+"
highlight default link dndDice Function

syntax match dndLabel "\v<[A-Z]+>"
highlight default link dndLabel Identifier

syntax match dndEquipment "\v^\=\= .* \=\=$"
highlight default link dndEquipment Underlined

syntax match sleightOfHand "\vSleight of hand"
highlight default link sleightOfHand dndSkills

syntax match animalHandling "\vAnimal Handling"
highlight default link animalHandling dndSkills



highlight default link dndDice Function

highlight default link dndAbilities Keyword
highlight default link dndKeywords Keyword
highlight default link dndSkills Type
