# doublejob
[ESX only] A simple demonstrative resource of the metadata use to create a simple doublejob system without needing any other modification.

*Note: this is a simple implementation that suffice as basic functionality and demonstration*
---

Obviously this requires ESX > 1.9.0 and will never work on another framework

## Export usage

```lua
local faction = exports["nkt-doublejob"]:getFaction(xPlayer.source).faction
local grade =  exports["nkt-doublejob"]:getFaction(xPlayer.source).grade

exports["nkt-doublejob"]:setFaction(xPlayer.source, "MyFaction", 1)  
```
