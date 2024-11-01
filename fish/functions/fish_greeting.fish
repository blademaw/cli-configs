function fish_greeting
  # set -l ascii_choice (random 1 2)
  set -l ascii_choice 2

  if test $LINES -gt 15; and [ $ascii_choice = 1 ]; and [ (pwd) = $HOME ]
    echo '                 '(set_color F00)'___
  ___======____='(set_color FF7F00)'-'(set_color FF0)'-'(set_color FF7F00)'-='(set_color F00)')
/T            \_'(set_color FF0)'--='(set_color FF7F00)'=='(set_color F00)')    '(set_color red)(whoami)'@'(hostnamectl hostname)'
[ \ '(set_color FF7F00)'('(set_color FF0)'0'(set_color FF7F00)')   '(set_color F00)'\~    \_'(set_color FF0)'-='(set_color FF7F00)'='(set_color F00)')'(set_color yellow)'    Uptime: '(set_color white)(uptime | sed 's/.*up \([^,]*\), .*/\1/')(set_color red)'
 \      / )J'(set_color FF7F00)'~~    \\'(set_color FF0)'-='(set_color F00)')    Date: '(set_color white)(date '+%d %b %Y')(set_color red)'
  \\\\___/  )JJ'(set_color FF7F00)'~'(set_color FF0)'~~   '(set_color F00)'\)     '(set_color yellow)'Version (🐟): '(set_color white)(echo $FISH_VERSION)(set_color red)'
   \_____/JJJ'(set_color FF7F00)'~~'(set_color FF0)'~~    '(set_color F00)'\\
   '(set_color FF7F00)'/ '(set_color FF0)'\  '(set_color FF0)', \\'(set_color F00)'J'(set_color FF7F00)'~~~'(set_color FF0)'~~     '(set_color FF7F00)'\\
  (-'(set_color FF0)'\)'(set_color F00)'\='(set_color FF7F00)'|'(set_color FF0)'\\\\\\'(set_color FF7F00)'~~'(set_color FF0)'~~       '(set_color FF7F00)'L_'(set_color FF0)'_
  '(set_color FF7F00)'('(set_color F00)'\\'(set_color FF7F00)'\\)  ('(set_color FF0)'\\'(set_color FF7F00)'\\\)'(set_color F00)'_           '(set_color FF0)'\=='(set_color FF7F00)'__
   '(set_color F00)'\V    '(set_color FF7F00)'\\\\'(set_color F00)'\) =='(set_color FF7F00)'=_____   '(set_color FF0)'\\\\\\\\'(set_color FF7F00)'\\\\
          '(set_color F00)'\V)     \_) '(set_color FF7F00)'\\\\'(set_color FF0)'\\\\JJ\\'(set_color FF7F00)'J\)
                      '(set_color F00)'/'(set_color FF7F00)'J'(set_color FF0)'\\'(set_color FF7F00)'J'(set_color F00)'T\\'(set_color FF7F00)'JJJ'(set_color F00)'J)
                      (J'(set_color FF7F00)'JJ'(set_color F00)'| \UUU)
                       (UU)'(set_color normal)
  else
    # F00 - dark red
    # FF7F00 - orangeish
    # FF0 - yellow
    echo -e '     '(set_color F00)',_     _
     |\\_,-~/
     / '(set_color FF7F00)'_  _ '(set_color F00)'|    ,--.
    (  '(set_color FF0)'@  @ '(set_color F00)')   / ,-\'    '(set_color red)(whoami)'@'(hostnamectl hostname)(set_color red)'
     \  '(set_color FF7F00)'_T_'(set_color F00)'/-._( (       '(set_color yellow)'Uptime: '(set_color white)(uptime | sed 's/.*up \([^,]*\), .*/\1/')(set_color red)'
     /         `. \      '(set_color F00)'Date: '(set_color white)(date '+%d %b %Y')(set_color red)'
    |         _  \ |     '(set_color yellow)'Version (🐟): '(set_color white)(echo $FISH_VERSION)(set_color red)'
     \ '(set_color FF7F00)'\ ,  /      '(set_color F00)'|
      |'(set_color FF7F00)'| |'(set_color F00)'-_'(set_color FF7F00)'\__'(set_color F00)'   /
     '(set_color FF7F00)'((_/`'(set_color FF7F00)'(____'(set_color F00)',-\''
  end
end
