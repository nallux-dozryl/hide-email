:-  %say
|=  [* [email=tape ~] ~]
:-  %noun
=<  (complete email)
|%
++  complete
  |=  [email=tape]
  (weld (masked (scag (pat-check email) email)) "@[domain]")
++  masked
  |=  [email=tape]
  =+  [count=0 final=""]
  |-  ^+  final
  ?:  =(count (lent email))  final
  %=  $
    final
      (weld final (censor (trip (snag count email)) count))
    count  (add 1 count)
  ==
++  censor
  |=  [letter=tape count=@ud]
  ?:  =((find letter ".!#$%&'*+-/=?^_`|~") ~)
    ?:  =((mod count 5) 0)  letter  "*"
  letter
++  pat-check                                                       
  |=  [message=tape]     
  u:[+3:(find "@" message)]                                       
--
