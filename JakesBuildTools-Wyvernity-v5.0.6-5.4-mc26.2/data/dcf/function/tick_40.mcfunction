schedule function dcf:tick_40 40 replace
execute if data storage dcf:settings {enabled: true} run function dcf:check_open/tick
