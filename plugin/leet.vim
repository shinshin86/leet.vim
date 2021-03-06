scriptencoding utf-8
command! -nargs=1 Leet call s:InsertLeetText(<f-args>)

function! s:ConvertToLeet(text)
  let res = []

  " reference : https://ja.wikipedia.org/wiki/Leet
  let A = ["A","4","/\\","@","/-\\", "^", "aye", "(L","Д"]
  let B = ["B","I3","8","13","|3","ß","P>","|:","!3","(3","/3",")3","|-]","j3"]
  let C = ["C","[","¢","<","(","©"]
  let D = ["D",")","|)","(|","|o","[)","I>","|>","T)","I7","cl","|}","|]"]
  let E = ["E","3","&","£","€","ë","[-","|=-"]
  let F = ["F","|=","ƒ","|#","ph","/=","v"]
  let G = ["G","6","&","(_+","9","C-","gee","(?,","[,","{,","<-","(.","₲"]
  let H = ["H","#","/-/","[-]","]-[",")-(","(-)",":-:","|~|","|-|","]~[","}{","!-!","1-1","\-/","I+I","}-{"]
  let I = ["I","1","!","¡","|","eye","3y3","][","]","/me"]
  let J = ["J","_|","_/","¿","</","_]","(/"]
  let K = ["K","X","|<","|{","]{","|X"]
  let L = ["L","1","£","7","1_","|","|_","el","[]_","[_"]
  let M = ["M","|v|","[V]","{V}","\\/V\\","em","AA","|\\/|","/\\/\\","(u)","(V)","(\/)","/|\\","^^","/|/|","//\\","|\|\\","]\\/["]
  let N = ["N","^/","|\\|","/\\/","[\\]","<\\>","en","[]\\","//","[]","/V","1V","И","^","ท"]
  let O = ["O","0","()","oh","[]","p","<>","Ø"]
  let P = ["P","|*","|o","|º","|^(o)","|>","|\"","9","[]D","|°","|7"]
  let Q = ["Q","(_,)","()_","0_","<|","&"]
  let R = ["R","I2","|`","|~","|?","/2","|^","lz","|9","2","12","®","[z","Я",".-","|2","|-"]
  let S = ["S","5","$","z","§","ehs","es","2"]
  let T = ["T","7","+","-|-","']['","†","\\\"|\\"]
  let U = ["U","(_)","|_|","v","L|","µ","บ"]
  let V = ["V","\\/","|/","\\|"]
  let W = ["W","\\/\\/","vv","\\N","'//","\\\\'","\\^/","dubya","(n)","\\V/","\\X/","\\|/","\\_|_/","\\_:_/","Ш","uu","2u","\\\\//\\\\//","พ","ω"]
  let X = ["X","><","Ж","}{","ecks","×","?",")(","][","}{"]
  let Y = ["Y","j","`/","Ч","7","\\|/","¥"]
  let Z = ["Z","2","7_","-/_","%",">_","s","~/_","-\\_","-|_"]

  let LEET_LIST = [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z]

  for i in range(0, len(a:text))
    for j in range(0, len(LEET_LIST) - 1)
      if(toupper(a:text[i]) == LEET_LIST[j][0])
        call add(res, LEET_LIST[j][s:Rand(len(LEET_LIST[j]))])
      endif
    endfor
  endfor
  
  return join(res, '')
endfunction

function! s:Rand(num)
  if has('reltime')
    let match_end = matchend(reltimestr(reltime()), '\d\+\.') + 1
    let rand = reltimestr(reltime())[match_end : ] % a:num
    return rand
  else
    return a:num - 1
  endif
endfunction

function! s:InsertLeetText(input_text)
  let leet_text = s:ConvertToLeet(a:input_text)
  execute ":normal a" . leet_text
endfunction
