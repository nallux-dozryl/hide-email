:-  %say
|=  [* [email=tape ~] ~]
:-  %noun
=<  (complete email)
|%
++  complete
  |=  email=tape
  (weld (masked (scag (pat-check email) email)) "@[domain]")
++  masked
  |=  email=tape
  =|  [count=@ud final=tape]
  =/  email-length  (lent email)
  |-  ^+  final
  ?:  =(count email-length)  final
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
  (need (find "@" message))                                   
--
