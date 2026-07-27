$data modify storage jbt:book pages.$(page_number) set from storage jbt:temp register
scoreboard players add $global_book_page jbt.dummy 1
data remove storage jbt:temp register
function jbt.main:book/page_number
