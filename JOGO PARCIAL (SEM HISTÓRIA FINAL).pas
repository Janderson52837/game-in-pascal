Program Pzim ;
var
vida,life,lifeop,tot,contvida,cont,level:integer;
nome,verif,resp,reiniciar:string[10];

procedure JOGO;
Begin
vida:=3;
life:=100;
  textbackground(red);
  clrscr;
  textcolor(1);
  textcolor(12);
  gotoxy(40,0);
  writeln('          --------_�����������_--------'                   );
  writeln('          -----_�����������������_-----'                   );
  writeln('          ----���������������������----'                   );
  writeln('          ---�����������������������---'                   );
  writeln('          --�������������������������--');
  writeln('          -�����������       �����������-');
  writeln('          ����������� ���������  ���������');
  writeln('          ���������� ��      �� ���������');
  writeln('          ��������� ��  ����  �� ��������');
  writeln('          ��������� ��    ��   �� ��������');
  textcolor(0);
  writeln('          �������������������������������');
  textcolor(15);
  write('          ��        ��   ��   ��       ��');
  writeln('       S    S		S	SSSSSS' );
  write('          ��         ��      ��        �� ');
  writeln('      S    S		S	    S	');
  write('          ��          ��������         �� ');
  writeln('	S    S		S	   S	');
  write('          -��                         ��- ');
  writeln('  	S    S		S	  S	');
  write('          --��                       ��-- ');
  writeln('      S    S		S	 S	');
  write('          ---��                     ��---   ');
  writeln('	SSSSSS		S       SSSSSS');
  write('          ----���                 ���---- ');
  textcolor(14);
  writeln('            > NOVO JOGO');
  textcolor(15);
  writeln('          -----����             ���---- ');
  write('          --------���������������----   ');
  textcolor(14);
  writeln('PRESSIONE QUALQUER TECLA PARA INCIAR...');
  textcolor(15);
  writeln('                               �����  ');
  writeln('	                         �����');
  writeln('                                     ��');
  readkey;
  textcolor(white);
  writeln('');
  write('                                         DIGITE SEU NOME DE TREINADOR : ');
  read(nome);
  clrscr;
  // CAMPO DE REGRAS
writeln('------------------------------------------------------------------------------------------------------------');
writeln('	                                                 REGRAS:											');
writeln('------------------------------------------------------------------------------------------------------------');
writeln('												');
writeln('	1 - Cada GIN�SIO ter� uma MAT�RIA, com uma s�rie de PERGUNTAS para voc� responder.											');
writeln('	2 - Por n�o ter pokebolas, voc� s� pode usar UM pok�mon por gin�sio.											');
writeln('	3 - O seu pok�mon ganha HP (Pontos de vida) a cada gin�sio superado, e perde a cada resposta errada.										'	);
writeln('	4 - Se o seu HP chegar a zero, voc� perde UMA VIDA, e REINICIAR� O GIN�SIO.										'	);
writeln('	5 - Se voc� perder todas as 03 vidas, FIM DE JOGO.										'	);
writeln('	6 - Seu objetivo final � derrotar os l�deres de todos os gin�sios,										'	);
writeln('	7 - Se voc� acertar TODAS as perguntas, voc� obter� o pok�mon mais raro de todos.									'		);
writeln('	8 - Para usar seu Pokemon, basta digitar a Letra "P" no campo de respsta.											');
writeln('	9- Todas as Perguntas cont�m 4 alternativas. Para responde-l�s basta inserir ou num�ro da mesma (1,2,3,ou 4).											');
writeln('	10 - Leia atentamente todos os Dial�gos, pois eles ter�o informa��es importantes para o seu jogo.										'	);
writeln('	BOA SORTE!											');
writeln('');
// MODO PARA PASSAR PARA PROX. TELA
writeln('                                ***PRESSIONE QUALQUER TECLA PARA CONTINUAR...***');
readkey;

   // Apresenta��o da primeira parte do jogo
   clrscr;
   writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8      H� tempos atr�s, a bela ILHA de Asl�ndia era o lar  de                  8');
   writeln('8      v�rios pok�mons, criaturas ex�ticas com poderes extraordin�rios,        8');
   writeln('8      que viviam em sua rica fauna e flora.                                   8');                                 
   writeln('8                                                                              8');
   writeln('8                  .    :Fv                                                    8');
   writeln('8              ..J7jUJ1i.7:q                                                   8');
   writeln('8            qj,,X:.M:u.:UviJri                                                8');
   writeln('8           iE :: i rNuL,7i  :,r.          iS:                                 8');
   writeln('8        v. uri J2:0S1:  . :G. .M.        vii.YuLri                            8');
   writeln('8         Mj7 F.vii@v: :j.:  :r .E      r7vLr.7Lj:F::ui                        8');
   writeln('8        .;,L   :Y     :X.77k: 7:G    ,:i  J.LjZ i.,,,@                        8');
   writeln('8       S , YF: rLr.7, i. ii J..7G   .2..5.   rkBrYr:rr7v;                     8');
   writeln('8       G,.7i i r Liu8OM      :iM,   L.,i.,.U.::0:7:i.,7v.                     8');
   writeln('8       B .:  :r:      M7v,    0B    5r.iur.J    :1: 7v:..                     8');
   writeln('8       @,7    ;Z       iOiuS.       ur:, i ,vYNrL 7 i.v.:                     8');
   writeln('8       rk                ;UZ77      :B     rB,    L;   :                      8');
   writeln('8         :                  ji ui     L  :ik7      2    :1                    8');
   writeln('8                             MY 7:     ,LMr.                                  8');
   writeln('8                              P  j.   v:Li                                    8');
   writeln('8                              YJ kU  7.Lv                                     8');
   writeln('8                               P.:1 i .Y                                      8');
   writeln('8                               j :J@Bvi                                       8');
   writeln('8                            .81Bu,.B1P@                                       8');
   writeln('8                        :v7: OM.   .  5M:i7vri                                8');
   writeln('8                .:::7vGGi                    :YGjv:,:::                       8');
   writeln('8               rB7: ,0i:.:i7:. ..::,...i7vr7:,.:U7.::vk                       8');
	 writeln('8                                                                              8');                                                                   
   writeln('8                      PRESSIONE QUALQUER TECLA..                              8');
	 writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');		 
	 readkey;
	 
	 clrscr;
	 // Apresenta��o da segunda parte da historia do jogo
   writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8      Por�m, a f�ria da natureza chegou a Asl�ndia,e ap�s uma misteriosa      8');
   writeln('8      tempestade, a ilha afundou no oceano, onde ningu�m poderia salv�-la.    8');
   writeln('8      Com a ilha, foram perdidos v�rios pok�mons,uma dessas criaturas era     8');                                 
   writeln('8      ARCHEN, uma bela ave-r�ptil multi-colorida.                             8');
   writeln('8                                                                              8');
   writeln('8                  .vi               .:i777:                                   8');
   writeln('8                 .::r          :q0EOBOOOBOMMX                                 8');
   writeln('8         vMOGGB0i7iir7;      2BGrBBBMOZMBBB@B                                 8');
   writeln('8          rqBZ8G2,:::v:     u@F J @MOO@B2B@B7 iijr                            8');
   writeln('8         jX0XkZi :,:,ir     BMu   B@B@B8.    JruiL,r:                         8');
   writeln('8        7B0SGXkGNv,.:,J,    PM8;,ZME:X0     .L:::ijG@OOE:                     8');
   writeln('8           BMZFMv:r:,::2.    8PMBBNOq.Su    L:,,..7OkEB8                      8');
   writeln('8          :quJ@8@Bki7..,77:  B@BOGBM@B@N  ,u:,. rU2qXPMBY                     8');
   writeln('8             :OP7:. iF.  .::i@BBO@M@ijj::7v:::Yu7MN0O@ui:                     8');
   writeln('8                     B@SiS: j8MO@MB@M:.:i::7riLB@B@PL1:                       8');
   writeln('8                     .BBB@B:,...,::u.,:;r77:     i7.                          8');
   writeln('8             :vUNSr uukMOMO .,,... r                                          8');
   writeln('8        .j8@B@B@B@B@B@@@8@v .,,,..,q                                          8');
   writeln('8       .71FFPNZ8Mqi  .qO@B@7::iii75.                                          8');
   writeln('8                        r.iU5JUGN@                                            8');
   writeln('8                            @B  uB.                                           8');
   writeln('8                         E5EB@   @BqB@Ev                                      8');
   writeln('8                        :51:J:,  .Si::.:                                      8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');                                                                   
   writeln('8                      PRESSIONE QUALQUER TECLA..                              8');
	 writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   readkey;
   
   clrscr;
// Apresenta��o da terceira parte da historia do jogo
   writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8      Por sorte ou por destino, voc� recebeu um ovo de Archen de seu av�,     8');
   writeln('8      que lhe dizia que este era o �ltimo da esp�cie, e assim voc�            8');
   writeln('8      acreditava...                                                           8');                                 
   writeln('8      At� o dia em que voc� viu o famoso Campe�o da Liga Quiz Go!,carregando  8');
   writeln('8      nada mais, nada menos, que OUTRO ovo de Archen, fazendo um an�ncio      8');
   writeln('8      que � exibido em todos os canais de televis�o:                          8');
   writeln('8                                                                              8');
   writeln('8                                  ,7rrrr:                                     8');
   writeln('8                                rLi.   .iLr                                   8');
   writeln('8                              .Y,         :u:                                 8');
   writeln('8                             ij             Lv                                8');
   writeln('8                            u@vP:       .:.  rJ                               8');
   writeln('8                           ;O::i@      1qUk5  rL                              8');
   writeln('8                          .@i:::q7    8J::,@,  Ui                             8');
   writeln('8                          ML7ri,8,   :@vJjqi    5                             8');
   writeln('8                         7BirvvES     ,ri:  rXkvLi                            8');
   writeln('8                         GB0Pq0v          :OSL7L@B                            8');
   writeln('8                         1 ,,            7B7r7rvY@                            8');
   writeln('8                        ,2               B7r7vjjLB.                           8');
   writeln('8                         E .. 75Yr.     :@7JjujJv@                            8');
   writeln('8                         Oi. i@SN8MZ: ...MMujLLu@B                            8');
   writeln('8                         :G, :BLvYLSB: .  LZGOOM@.                            8');
   writeln('8                          7qi SBESkq@, ... .:ii2:                             8');
   writeln('8                           ,1u:vPZZE:.,:::,:iLJ,                              8');
   writeln('8                             .7r7rr:irvLYj1jv.                                8');
   writeln('8                                  .:::::..                                    8');
   writeln('8                                                                              8');                                                                   
   writeln('8                      PRESSIONE QUALQUER TECLA..                              8');
	 writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   readkey;
   
   clrscr;
// Apresenta��o da quarta parte da historia do jogo
   writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8      "Treinadores de todo o mundo! Eu tenho aqui a �ltima esp�cie do         8');
   writeln('8      Pok�mon Archen! E ele ser� o pr�mio daquele que derrotar todos os       8');
   writeln('8      l�deres do meu gin�sio QUIZ GO! Mas fiquem alerta! O perdedor ter�      8');                                 
   writeln('8      que ceder seu Pok�mon mais valioso! QUE SE INICIE O DESAFIO!"           8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                 QQQ   U   U III ZZZZZ   GGG   OOO  !!!                       8');
   writeln('8                Q   Q  U   U  I     Z   G     O   O !!!                       8');
   writeln('8                Q   Q  U   U  I    Z    G  GG O   O !!!                       8');
   writeln('8                Q  QQ  U   U  I   Z     G   G O   O                           8');
   writeln('8                 QQQQ   UUU  III ZZZZZ   GGG   OOO  !!!                       8');
   writeln('8                      Q                                                       8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');                                                                   
   writeln('8                      PRESSIONE QUALQUER TECLA..                              8');
	 writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   readkey;
   
   clrscr;
// Apresenta��o da ultima parte da historia do jogo
   writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8      E assim sua busca se inicia, voc� pega sua BICICLETA, seu �nico         8');
   writeln('8      pok�mon crescido, e pedala at� o gin�sio que abriga os campe�es         8');
   writeln('8      da liga Quiz Go! , determinado a enfrentar o maior desafio de           8');                                 
   writeln('8      sua vida!                                                               8');
   writeln('8                                                                              8');
   writeln('8                       EvvYXX                                                 8');
   writeln('8                     i7:i.:ui       ...,....                                  8');
   writeln('8                     O: Xr         k@r:.....jB                                8');
   writeln('8                      Lr M           :i;L,7iL.                                8');
   writeln('8                      ,7 Br7vvLvLvv7i:iBi @7                                  8');
   writeln('8                      5 YXivLLLLvLvvr:1S @JrX                                 8');
   writeln('8               :vLYY7Jv Bu:  .....,. :@ 2jrUiq7  ,iiri:                       8');
   writeln('8             PNquj;iu@ ME.rv         B .B  :X,;@OJuJL1kGX;                    8');
   writeln('8           .@7L. .  Z J2vBrrUU:     22 B     BL.kj :  7:7PM                   8');
   writeln('8           @.i,,  12 Y;.i7B,vvuS,  .B Or    O7vX.iLr .  .7YZ                  8');
   writeln('8          @:i   rvPrSJ  ,.@  7uruu B :N    :@.: 8LjBLi . ,:S                  8');
   writeln('8          B 7 ..Gv :O    :N:   uv:B0 @ .:i:5jrii,O5  @:.  ii                  8');
   writeln('8          @Y:  ::ru77   J:@     .B, UMrvJLLrLivi5Xv77S  .:iU                  8');
   writeln('8           MLLi   .  r  i@J      r7,JSiri:,.B1ii   J  r  iJ8                  8');
   writeln('8            Oqv: 7   iU2Bv         .         MXi. ,:  .JrNB                   8');
   writeln('8              7uuj7LuUvi                      .LuuY7ivYUL:                    8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');                                                                   
   writeln('8                      PRESSIONE QUALQUER TECLA..                              8');
	 writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
	 readkey;
	 
	 clrscr;  
  writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
  writeln('8                                  1� GIN�SIO                                  8');
  writeln('8                                  PORTUGU�S                                   8');
  writeln('8                                                                              8');     
  writeln('8                                                                              8');     
  writeln('8                                                                              8');      
  writeln('8                                                                              8');  
  writeln('8                            ..,:iirr77vvLvLv7rrii::..                         8');
  writeln('8                    .:7uUSqk55JJvv7ririi:i:ri;r7vYY11Skk1uLr:.                8');
  writeln('8              :vUZqFvv:,                               .:r7UFGPui.            8');
  writeln('8            vEMS7:                                             .iuGOSi        8');
  writeln('8         ,MMu,    "Aqui come�a sua jornada, meu caro estudante      rPB5      8');
  writeln('8        Z@:       E para inici�-la, voc� tem que derrotar o grande     0B,    8');
  writeln('8       G@         Professor Pasquale, que vos fala. Voc� est� pronto    ,B    8');
  writeln('8       @:         para as minhas perguntas de PORTUGU�S?                 @,   8');
  writeln('8       Y@                                                               UB    8');
  writeln('8        7@U                                                           :@@     8');
  writeln('8          uMGr.                                                     :2MZi     8');
  writeln('8           ,UqOF7:.                                          .;LE8Xr          8');
  writeln('8                :r2PNku7;:,.                                @NFJi.            8');
  writeln('8                    .,i7JuXSFS12uYJYLvLvLvLJjj1J;,        J@                  8');
  writeln('8                                ..,:::i:i:i:::,,;LXPq5ur:  Bv                 8');
  writeln('8                                                     ,iY1SE@                  8');
  writeln('8                                                         1SE@                 8');
  writeln('8                                                                              8');        
  writeln('8                                                   PROFESSOR PASQUALE         8');     
  writeln('8                                                                              8');     
  writeln('8                                                                              8');      
  writeln('8                                                                              8'); 
  writeln('8                                                                              8');     
  writeln('8                                                                              8');     
  writeln('8                                                                              8'); 
  writeln('8                            PRESSIONE QUALQUER TECLA..                        8');
  writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');		 
  readkey; 

clrscr;
repeat
level:=1;
contvida:=0;  
  // Pergunta PORT 1
  // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
  while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: 0');
    writeln('');
    writeln('OPONENTE = PROFESSOR PASCAL - Portugon     HP = 100 ');
    // CAMPO DE PERGUNTAS
    writeln('I) Qual das alternativas � uma ora��o do tipo Adversidade?');
    writeln('');
    writeln('1)A aula do professor � muito interessante, e divertida ');
    writeln('2)N�o fui � aula hoje porque estava doente.             ');
    writeln('3)Eu gosto de bolo de chocolate, ela, de baunilha       ');
    writeln('4)O time jogou bem, mas perdeu o jogo                   ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
    
    textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='4' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='2') or (resp='3') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -10 DE HP');
				writeln('');
		    life:=life-10
		    end
		    // SEN�O PARA RESPOSTA INV�LIDA
						else
							begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
								end;			
    // MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		textcolor(white);
  end;
  //ATRIBUI��O DE DADOS
  verif:='F';
  
  // Pergunta PORT 2
    // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
    
  while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: 0');
    writeln('');
    writeln('OPONENTE = PROFESSOR PASCAL - Portugon     HP = 60 ');
    // CAMPO DE PERGUNTAS
    writeln('II) Qual a figura de linguagem utilizada na frase "Est� chovendo canivetes!"');
    writeln('');
    writeln('1)Pleonasmo ');
    writeln('2)Elipse            ');
    writeln('3)Met�fora      ');
    writeln('4)Meton�mia                 ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
    
    textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='3' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='2') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -10 DE HP');
				writeln('');
		    life:=life-10
		    end
		    // SEN�O PARA RESPOSTA INV�LIDA
						else
							begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
								end;			
       // MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
    textcolor(white);
  end;
  //ATRIBUI��O DE DADOS
  verif:='F';

  // Pergunta PORT 3
  // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0  
  while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: 0');
    writeln('');
    writeln('OPONENTE = PROFESSOR PASCAL - Portugon   HP = 20 ');
    // CAMPO DE PERGUNTAS
    writeln('III)"Me disseram que os filmes do Senhor dos An�is s�o muito bons." Qual o tipo de sujeito?');
    writeln('');
    writeln('1)Oculto ');
    writeln('2)Simples            ');
    writeln('3)Um nerd     ');
    writeln('4)Indeterminado                 ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
    textcolor(lightgreen);
    clrscr;
     // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='4' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='2') or (resp='3') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -10 DE HP');
				writeln('');
		    life:=life-10
		    end
		    // SEN�O PARA RESPOSTA INV�LIDA
						else
							begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
								end;			
    // MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
       textcolor(white);
  end;
  //ATRIBUI��O DE DADOS
  verif:='F';
  cont:=0;
  
  until contvida=0; 

  if vida>0 then 
  begin  
 clrscr;
    writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   writeln('8                                                                              8');
   writeln('8                                 PORTUGON                                     8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8   Ao som de pequenas engrenagens girando e bips, voc� nota que se aproxima   8');
   writeln('8   um pequeno rob� n�o chegando nem a bater em seu joelho: Portugon.          8');
   writeln('8   Um rob�zinho de duas pernas rotat�rias que se assemelha a uma ave,         8');
   writeln('8   mas por ser feito de metal da cabe�a aos p�s, �  incapaz de voar.          8');
   writeln('8   A criaturinha rob�tica tira um momento de sua cuidadosa leitura,           8');
   writeln('8   para se apr�ximar de voc� e come�ar o combate.                             8');
   writeln('8                                                                              8');
   writeln('8 ##SEU POK�MON TEM A CAPACIDADE DE DAR DICAS EM 1 PERGUNTA NO PR�X. GIN�SIO## 8');
   writeln('8                           :uZ2@ZY       ,                                    8');
   writeln('8                          LU2.: 20@    .B@                                    8');
   writeln('8                         X1757ivB@B   iYB7                                    8');
   writeln('8                        .vv8@B@@@Br,727B@                                     8');
   writeln('8                       Jr2OSB@B@B:iLL7L@7                                     8');
   writeln('8                          :2: ..rvi:vjvB                                      8');
   writeln('8                         r,XMU7:7q7O57uY:r                                    8');
   writeln('8                        i8X@@B@B@B@B,..rMO@                                   8');
   writeln('8                          r1.   :PBr,,v@BM:                                   8');
   writeln('8                                :F2Z@F:                                       8');
   writeln('8                                                                              8');
   writeln('8     *** LEMBRE-SE: PARA US�-LO BASTA INSERIR "P" NO CAMPO DE RESPOSTA ***    8'); 
	 writeln('8                                                                              8');                                                                   
   writeln('8                      PRESSIONE QUALQUER TECLA..                              8');
	 writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
	 readkey;   

clrscr;  
writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
writeln('8                                   2� GIN�SIO                                 8');
writeln('8                                    CI�NCIAS                                  8');
writeln('8                                                                              8');     
writeln('8                                                                              8');     
writeln('8                                                                              8');      
writeln('8                                                                              8'); 
writeln('8                            ..,:iirr77vvLvLv7rrii::..                         8');
writeln('8                    .:7uUSqk55JJvv7ririi:i:ri;r7vYY11Skk1uLr:.                8');
writeln('8              :vUZqFvv:,                               .:r7UFGPui.            8');
writeln('8            vEMS7:                                             .iuGOSi        8');
writeln('8         ,MMu,    "Ol� e bem-vindo ao gin�sio de CI�NCIAS,          rPB5      8');
writeln('8        Z@:       eu serei seu advers�rio, Professor Valtinho Branco.  0B,    8');
writeln('8       G@         espero que ainda se lembre das suas aulas de          ,B    8');
writeln('8       @:         Biologia, Qu�mica e F�sica. VAI, BIOSSAURO!"           @,   8');
writeln('8       Y@                                                               UB    8');
writeln('8        7@U                                                           :@@     8');
writeln('8          uMGr.                                                     :2MZi     8');
writeln('8           ,UqOF7:.                                          .;LE8Xr          8');
writeln('8                :r2PNku7;:,.                                @NFJi.            8');
writeln('8                    .,i7JuXSFS12uYJYLvLvLvLJjj1J;,        J@                  8');
writeln('8                                ..,:::i:i:i:::,,;LXPq5ur:  Bv                 8');
writeln('8                                                     ,iY1SE@                  8');
writeln('8                                                         1SE@                 8');
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                                              PROFESSOR VALTINHO BRANCO       8');     
writeln('8                                                                              8');      
writeln('8                                                                              8'); 
writeln('8                                                                              8');     
writeln('8                                                                              8');     
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                            PRESSIONE QUALQUER TECLA..                        8');
writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');		 
readkey;
end;
  
clrscr; 
repeat
contvida:=0;
level:=2;   
  // Pergunta CIENCIAS 1
    // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
  while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: Portugon  "P"');
    writeln('');
    writeln('OPONENTE = Valtinho Branco (Walter White) - Biossauro   HP = 100 ');
    // CAMPO DE PERGUNTAS
    writeln('I) Em quantos Graus CelsiuS a �gua entra em ponto de fus�o?');
    writeln('');
    writeln('1)100 ');
    writeln('2)0             ');
    writeln('3)-1      ');
    writeln('4)200                  ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
    
    clrscr;
      textcolor(lightgreen);
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='2' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='3') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -15 DE HP');
				writeln('');
		    life:=life-15
		    end
		    // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
		       if (resp='P') or (resp='p') then
						if (cont=0) then
							begin
							cont:=1;
							writeln('VOC� USOU O POK�MON PORTUGON!');
							writeln('DICA: ACHO QUE A RESPOSTA SER� A SUA NOTA SE VOC� N�O ACERTAR');
							writeln('');
							end
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� J� USOU SUA DICA! :)');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
									
		// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
		    textcolor(white);
		      //ATRIBUI��O DE DADOS
		      verif:='F';
		      
	 // Pergunta CIENCIAS 2
     // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
  while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: Portugon  "P"');
    writeln('');
    writeln('OPONENTE = Valtinho Branco (Walter White) - Biossauro    HP = 60 ');
    // CAMPO DE PERGUNTAS
    writeln('II) Quantas Liga��es o Carbono pode fazer?');
    writeln('');
    writeln('1)1 ');
    writeln('2)2             ');
    writeln('3)3      ');
    writeln('4)4                  ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
    clrscr;
    textcolor(lightgreen);
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='4' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='2') or (resp='3') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -15 DE HP');
				writeln('');
		    life:=life-15
		    end
		    	// SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
					 if (resp='P') or (resp='p') then
						 if (cont=0) then
						begin
							cont:=1;
							writeln('VOC� USOU O POK�MON PORTUGON!');
							writeln('DICA: ELE N�O ENTRARIA PRO P�DIO..');
							writeln('');
							end
								// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
							if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� J� USOU SUA DICA! :)');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
			// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
		    //ATRIBUI��O DE DADOS
		    verif:='F';
		   textcolor(white);
			   
	 // Pergunta CIENCIAS 3
     // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: Portugon  "P"');
    writeln('');
    writeln('OPONENTE = Valtinho Branco (Walter White) - Biossauro    HP = 20 ');
    // CAMPO DE PERGUNTAS
    writeln('III) Qual desses elementos n�o existe na tabela peri�dica?');
    writeln('');
    writeln('1) Tungst�nio ');
    writeln('2) Germ�nico  ');
    writeln('3) Iodo   ');
    writeln('4) Hisp�nico ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
    clrscr;
      textcolor(lightgreen);
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='4' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='2') or (resp='3') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -15 DE HP');
				writeln('');
		    life:=life-15
		    end
		    	// SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
					   if (resp='P') or (resp='p') then
					  	if (cont=0) then
							begin
							cont:=1;
							writeln('VOC� USOU O POK�MON PORTUGON!');
							writeln('DICA: �STED SABE LA RESPUESTA, NIEGRO.. ');
							writeln('');
							end
								// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� J� USOU SUA DICA! :)');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
			// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
        //ATRIBUI��O DE DADOS
 		    verif:='F';
 		    cont:=0;
 		    textcolor(white);  
 		until contvida=0; 

  if vida>0 then 
  begin 		
	 clrscr;  
	 writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                BIOSSAURO                                     8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8   Voc� se espanta por um momento quando nota  uma repentina agita��o         8');
   writeln('8   no meio  das diversas folhagens que carpetam o gin�sio,� quando uma        8');
   writeln('8   das plantas sai do meio das folhagens e d� um rosnado brincalh�o           8');
   writeln('8   Voc� percebe que n�o se trata de uma planta,mas sim do Pok�mon BIOSSAURO.  8');
   writeln('8   Um pequeno dinossauro verde, n�o chegando meio metro de altura,            8');
   writeln('8   com um bulbo de planta em suas costas,                                     8');
   writeln('8   vestido com um pequeno jaleco branco de cientista, pronto pra atacar       8');
   writeln('8                                                                              8');
   writeln('8     ##SEU POK�MON TEM A CAPACIDADE DE PULAR 1 PERGUNTA NO PR�X. GIN�SIO##    8');
   writeln('8                                                 .vZGu,                       8');
   writeln('8                                         iJX0NjL7LL2j@U                       8');
   writeln('8                                 iLr    7uNuvr7;77YLYBP                       8');
   writeln('8                                ,7rvuEB@v;i,:iZUuuYvLBB7                      8');
   writeln('8                                ri77@BML;::ii:2O277rU8@B:                     8');
   writeln('8                               :M7Nr;F,::rZ@i::FqSY1EEG@B                     8');
   writeln('8                               rMJ::11ii:r@:@:i:vM@8Z0OM@                     8');
   writeln('8                              rJNr,i:::r  B5B7::L@B@OBO@B                     8');
   writeln('8                              L0Sv:iii;;r,Y2i:;i,7MOru@E                      8');
   writeln('8                               .5@O11PEM@0Lr:;ii:i,. :7                       8');
   writeln('8                                 .7rYr7rv7rYrii:78Jv0ir,                      8');
   writeln('8                                  Y@JPX00NGi:X5:kOr@B2ir                      8');
   writeln('8                                  EBJ0@;.BPL@iiq@MYuUrGi                      8');
   writeln('8                                  rLO@L  :UMF;EL rBZ1@G                       8');
   writeln('8                                    .     .:iU:   :i7i                        8');
   writeln('8                                                                              8');
   writeln('8     *** LEMBRE-SE: PARA US�-LO BASTA INSERIR "P" NO CAMPO DE RESPOSTA ***    8'); 
	 writeln('8                                                                              8');                                                                   
   writeln('8                      PRESSIONE QUALQUER TECLA..                              8');
	 writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
	 readkey; 		
 
  
clrscr;  
writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
writeln('8                                  3� GIN�SIO                                  8');
writeln('8                                   HIST�RIA                                   8');
writeln('8                                                                              8');     
writeln('8                                                                              8');     
writeln('8                                                                              8');      
writeln('8                                                                              8'); 
writeln('8                            ..,:iirr77vvLvLv7rrii::..                         8');
writeln('8                    .:7uUSqk55JJvv7ririi:i:ri;r7vYY11Skk1uLr:.                8');
writeln('8              :vUZqFvv:,                               .:r7UFGPui.            8');
writeln('8            vEMS7:                                             .iuGOSi        8');
writeln('8         ,MMu,    "Ahhh, sim, sim. Os professores me informaram     rPB5      8');
writeln('8        Z@:       da sua chegada. Eu sou o professor Dumb Bulldog,     0B,    8');
writeln('8       G@         e irei avaliar se voc� est� pronto pra continuar      ,B    8');
writeln('8       @:         sua jornada com minhas perguntas de HIST�RIA.          @,   8');
writeln('8       Y@         VAI, AEROD�TICO!"                                     UB    8');
writeln('8        7@U                                                           :@@     8');
writeln('8          uMGr.                                                    :2MZi      8');
writeln('8           ,UqOF7:.                                          .;LE8Xr          8');
writeln('8                :r2PNku7;:,.                                @NFJi.            8');
writeln('8                    .,i7JuXSFS12uYJYLvLvLvLJjj1J;,        J@                  8');
writeln('8                                ..,:::i:i:i:::,,;LXPq5ur:  Bv                 8');
writeln('8                                                     ,iY1SE@                  8');
writeln('8                                                         1SE@                 8');
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                                               PROFESSOR  DUMB BULL DOG       8');     
writeln('8                                                                              8');      
writeln('8                                                                              8'); 
writeln('8                                                                              8');     
writeln('8                                                                              8');     
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                            PRESSIONE QUALQUER TECLA..                        8');
writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');		 
readkey;
end;
 		
clrscr;
repeat
contvida:=0;
level:=3;     
  // Pergunta HIST�RIA 1
      // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: BIOSSAURO ');
    writeln('');
    writeln('OPONENTE = Dumb bulldog  - Aerod�tico   HP = 100 ');
    // CAMPO DE PERGUNTAS
    writeln('I)Na Idade Antiga existia uma escrita feita pelos eg�pcios. Qual � o nome desta escrita?');
    writeln('');
    writeln('1)Cuneiforme ');
    writeln('2)Hier�glifo   ');
    writeln('3)Acadiano    ');
    writeln('4)Eg�pcia       ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
      textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='2' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA		 
			else
				if (resp='1') or (resp='3') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -20 DE HP');
				writeln('');
		    life:=life-20
		    end
		    // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
		       if (resp='P') or (resp='p') then
						if (cont=0) then
							begin
							writeln('VOC� USOU O POK�MON BIOSSAURO!');
							writeln('VOC� PULOU');
							writeln('');
							verif:='V';
							cont:=cont+1 ;
							end
						// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� J� PULOU UMA PERGUNTA! :)');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
									
			// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
		    textcolor(white);
		      //ATRIBUI��O DE DADOS		  
		      verif:='F';
		      
	// Pergunta HIST�RIA 2
  // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: BIOSSAURO ');
    writeln('');
    writeln('OPONENTE = Dumb bulldog     HP = 70 ');
    // CAMPO DE PERGUNTAS
    writeln('II) Qual era o estilo pol�tico da Inglaterra anterior a Revolu��o Inglesa?');
    writeln('');
    writeln('1)Monarquia Absolutista. ');
    writeln('2)Democracia   ');
    writeln('3)Monarquia Parlamentarista    ');
    writeln('4)Ditadura      ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
    
    clrscr;
      textcolor(lightgreen);
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='1' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA	
			else
				if (resp='2') or (resp='3') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -20 DE HP');
		    life:=life-20
		    end
		    // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
					  if (resp='P') or (resp='p') then
						  if (cont=0) then
							begin
							writeln('VOC� USOU O POK�MON BIOSSAURO!');
							writeln('VOC� PULOU');
							writeln('');
							verif:='V';
							cont:=cont+1 ;
							end
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� J� PULOU UMA PERGUNTA! :)');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
												
      // MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
		      //ATRIBUI��O DE DADOS		
		      verif:='F';
		    textcolor(white);    
	// Pergunta HIST�RIA 3
	// USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
  
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: BIOSSAURO ');
    writeln('');
    writeln('OPONENTE = Dumb bulldog     HP = 40 ');
    // CAMPO DE PERGUNTAS
    writeln('III) Que per�odo durou a Ditadura Militar no Brasil?');
    writeln('');
    writeln('1)1964-1985 ');
    writeln('2)1914-1919   ');
    writeln('3)2000-2016    ');
    writeln('4)1939-1945    ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
    
    textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='1' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA	
			else
				if (resp='2') or (resp='3') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -20 DE HP');
		    life:=life-20
		    end
		    	else
						if (resp='P') or (resp='p') then
						  if (cont=0) then
							begin
						  writeln('VOC� USOU O POK�MON BIOSSAURO!');
							writeln('VOC� PULOU');
							writeln('');
							verif:='V';
							cont:=cont+1 ;
							end
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� J� PULOU UMA PERGUNTA! :)');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;			
      
			 // MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
		    textcolor(white);
		      //ATRIBUI��O DE DADOS		
		      verif:='F';
  // Pergunta HIST�RIA 4
  // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
  
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: BIOSSAURO ');
    writeln('');
    writeln('OPONENTE = Dumb bulldog     HP = 10 ');
    // CAMPO DE PERGUNTAS
    writeln('IV) Qual era o nome do Rei dos Deuses para os eg�pcios?');
    writeln('');
    writeln('1)Os�ris ');
    writeln('2)Tot  ');
    writeln('3)H�rus   ');
    writeln('4)R�   ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
    
    textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='4' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA	
			else
				if (resp='1') or (resp='2') or (resp='3') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -20 DE HP');
		    life:=life-20
		    end
		    	else
						if (resp='P') or (resp='p') then
					   	if (cont=0) then
							begin
							writeln('VOC� USOU O POK�MON BIOSSAURO!');
							writeln('VOC� PULOU');
							writeln('');
							verif:='V';
							cont:=cont+1 ;
							end
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� J� PULOU UMA PERGUNTA! :)');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;			
     
		  // MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
		    textcolor(white);
		      //ATRIBUI��O DE DADOS		
		      verif:='F';
		      cont:=0;
	   until contvida=0; 
	 
   if vida>0 then 
   begin
   clrscr;
   writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                AEROD�TICO                                    8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8   Voc� ouve um rugido agudo ecoando metros acima de sua cabe�a,              8');
   writeln('8   olha pra cima e v� a forma gigante do drag�o AEROD�TICO,                   8');
   writeln('8   voando por cima das v�rias estantes de livros de hist�ria                  8');
   writeln('8   que constituem o magn�fico "gin�sio-biblioteca",                           8');
   writeln('8   sua forma de drag�o cinzento de pele dura fazendo eclipses                 8');
   writeln('8   em cada raio de luz por onde voa at� finalmente pousar                     8');
   writeln('8   sua forma intimidadora em sua frente, suas asas terminando de bater,       8');
   writeln('8   fazendo a poeira voar por entre seus p�s...                                8');
   writeln('8   Finalmente optando por disfar�ar o medo... Voc� d� um passo a frente.      8');
   writeln('8                                                                              8');
   writeln('8  ## SEU POK�MON TEM A CAPACIDADE DE ANULAR 2 RESPOSTAS NO PR�X. GIN�SIO ##   8');
   writeln('8                                              7                               8');
   writeln('8                         .,   :               ii:.,..                         8');
   writeln('8                        iqBi ;OBrujrr:       ,5@BBM@B@MP7.                    8');
   writeln('8                      :B@MBB:  B@1iL:        v@uLjPFi                         8');
   writeln('8                     ii: .:kB7 rB@75        :@jLjqr                           8');
   writeln('8                            7@SFrvq@,      :MBqXZi                            8');
   writeln('8                             @Mijuiu7Y1  PB@GFuuX                             8');
   writeln('8                             uUJuXBirr7L@Mi        :L5J.                      8');
   writeln('8                                  ii;r:rS.      .r7i:j                        8');
   writeln('8                                   .7;;rSE;,,iUXU:                            8');
   writeln('8                                  ,uBXE@XL@BNS7.                              8');
	 writeln('8                                   OB   .L@:                                  8');
   writeln('8                                                                              8');
   writeln('8     *** LEMBRE-SE: PARA US�-LO BASTA INSERIR "P" NO CAMPO DE RESPOSTA ***    8'); 
	 writeln('8                                                                              8');                                                                   
   writeln('8                      PRESSIONE QUALQUER TECLA..                              8');
	 writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
	 readkey;	   

clrscr;  
writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
writeln('8                                  4� GIN�SIO                                  8');
writeln('8                                  MATEM�TICA                                  8');
writeln('8                                                                              8');     
writeln('8                                                                              8');     
writeln('8                                                                              8');      
writeln('8                                                                              8'); 
writeln('8                            ..,:iirr77vvLvLv7rrii::..                         8');
writeln('8                    .:7uUSqk55JJvv7ririi:i:ri;r7vYY11Skk1uLr:.                8');
writeln('8              :vUZqFvv:,                               .:r7UFGPui.            8');
writeln('8            vEMS7:                                             .iuGOSi        8');
writeln('8         ,MMu,    "Voc� deve ser bem "mizer�vi" pra chegar at� aqui.  PB5     8');
writeln('8        Z@:       Mas lamento te informar que aqui termina sua batalha.  0B,  8');
writeln('8       G@         Duvida? Ent�o testemunhe meu teste de matem�tica!     ,B    8');
writeln('8       @:         VAI, PI DE OITO!"                                      @,   8');
writeln('8       Y@                                                               UB    8');
writeln('8        7@U                                                           :@@     8');
writeln('8          uMGr.                                                    :2MZi      8');
writeln('8           ,UqOF7:.                                          .;LE8Xr          8');
writeln('8                :r2PNku7;:,.                                @NFJi.            8');
writeln('8                    .,i7JuXSFS12uYJYLvLvLvLJjj1J;,        J@                  8');
writeln('8                                ..,:::i:i:i:::,,;LXPq5ur:  Bv                 8');
writeln('8                                                     ,iY1SE@                  8');
writeln('8                                                         1SE@                 8');
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                                                   PROFESSOR  PEL�ZINHO       8');     
writeln('8                                                                              8');      
writeln('8                                                                              8'); 
writeln('8                                                                              8');     
writeln('8                                                                              8');     
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                            PRESSIONE QUALQUER TECLA..                        8');
writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');		 
readkey;  
end;

	   
clrscr;
repeat
contvida:=0;
level:=4;    
  // Pergunta MATEMATICA 1
  // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: Aerod�tico ');
    writeln('');
    writeln('OPONENTE = Professor Pel�zinho  - Pi de Oito  HP = 100 ');
    // CAMPO DE PERGUNTAS
    writeln('I) Qual �ngulo em radianos representa 360�? ');
    writeln('');
    writeln('1)PI');
    writeln('2)2PI   ');
    writeln('3)3PI/2   ');
    writeln('4)PI/2       ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
    textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='2' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='3') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -25 DE HP');
		    life:=life-25
		    end
		     // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
		       if (resp='P') or (resp='p') then
						if (cont=0) then
							begin
							writeln('VOC� USOU O POK�MON AEROD�TICO!');
							writeln('ALTERNATIVAS 3 E 4 EST�O ERRADAS ');
							writeln('');
							cont:=cont+1 ;
							end
							
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� J� USOU O SEU POKEMON! :)');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
									
		// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
        //ATRIBUI��O DE DADOS
		      verif:='F';
		    textcolor(white);
				    
	// Pergunta MATEMATICA 2
   // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: Aerod�tico ');
    writeln('');
    writeln('OPONENTE = Professor Pel�zinho   HP = 70 ');
    // CAMPO DE PERGUNTAS
    writeln('II) Qual a formula de Delta? ');
    writeln('');
    writeln('1)Delta = -b�*4*a*c  ?');
    writeln('2)Delta = b�-4*a-c   ?');
    writeln('3)Delta= b�-4*a*c  ');
    writeln('4)Delta= b�+a�+c�      ');
   //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
      textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='3' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='2') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -25 DE HP');
		    life:=life-25
		    end
		     // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
		       if (resp='P') or (resp='p') then
						if (cont=0) then
							begin
							writeln('VOC� USOU O POK�MON AEROD�TICO!');
							writeln('ALTERNATIVAS 2 E 4 EST�O ERRADAS ');
							writeln('');
							cont:=cont+1 ;
							end
							
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� J� USOU O SEU POKEMON! :)');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
									
			// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
        //ATRIBUI��O DE DADOS
		      verif:='F';
		     textcolor(white);   
// Pergunta MATEMATICA 3
 // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0  
   while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: Aerod�tico ');
    writeln('');
    writeln('OPONENTE = Professor Pel�zinho   HP = 40 ');
     // CAMPO DE PERGUNTAS
    writeln('III) Qual a formula do per�metro de uma circunfer�ncia? ');
    writeln('');
    writeln('1)Pi*r� ');
    writeln('2)2pi * r� ');
    writeln('3)2pi * r  ');
    writeln('4)pi*r     ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
      textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='3' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='2') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -25 DE HP');
		    life:=life-25
		    end
		     // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
		       if (resp='P') or (resp='p') then
						if (cont=0) then
							begin
							writeln('VOC� USOU O POK�MON AEROD�TICO!');
							writeln('ALTERNATIVAS 1 E 4 EST�O ERRADAS ');
							writeln('');
							cont:=cont+1 ;
							end
							
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� J� USOU O SEU POKEMON! :)');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
									
			// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
        //ATRIBUI��O DE DADOS
		      verif:='F';
		      textcolor(white);  
// Pergunta MATEMATICA 4
 // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0  
  while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: Aerod�tico ');
    writeln('');
    writeln('OPONENTE = Professor Pel�zinho   HP = 10 ');
    // CAMPO DE PERGUNTAS
    writeln('IV) Qual o resultado da seguinte equa��o: x� + 2x  + 4 = 0 ? ');
    writeln('');
    writeln('1) (-2 + 2i)/2 e (2 + 2i)/2 ');
    writeln('2) 2i ');
    writeln('3) (-1 + 2i)/2 e (2 + 2i)/2 ');
    writeln('4) 4i     ');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
      textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='1' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='2') or (resp='3') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -25 DE HP');
		    life:=life-25
		    end
		     // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
		       if (resp='P') or (resp='p') then
						if (cont=0) then
							begin
							writeln('VOC� USOU O POK�MON AEROD�TICO!');
							writeln('ALTERNATIVAS 2 E 4 EST�O ERRADAS ');
							writeln('');
							cont:=cont+1 ;
							end
							
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� J� USOU O SEU POKEMON! :)');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
									
			// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
        //ATRIBUI��O DE DADOS
		      verif:='F';
					cont:=0;
			textcolor(white);		
	  until contvida=0; 
	  
	  
	  if vida>0 then 
    begin 
   clrscr;
   writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8                                 PI DE OITO                                   8');
   writeln('8                                                                              8');
   writeln('8                                                                              8');
   writeln('8   No meio do gin�sio de matem�tica, onde existe uma gigantesca �rvore seca   8');
   writeln('8   completamente coberta por somas, equa��es e logar�tmos variados,           8');
   writeln('8   voc� v�, apoiado no galho mais alto, o PI DE OITO!                         8');
   writeln('8   Uma bel�ssima ave, de pelo menos dois metros de altura e penas             8');
   writeln('8   nas cores branca, magenta, e marrom.Ela vira os olhos afiados para voc�,   8');
   writeln('8   como um falc�o que acaba de detectar sua presa,                            8');
   writeln('8   e ent�o levanta as asas e d� um rasante  em sua dire��o.                   8');
   writeln('8   Mas enquanto o v�o da ave � rapido e turbulento,                           8');
   writeln('8   o pouso � delicado e calculado. Voc� se prepara para um �rduo desafio.     8');
   writeln('8                                                                              8');
   writeln('8    ## SEU POK�MON TEM A CAPACIDADE DE DAR +50 DE HP NO PR�X. GIN�SIO ##      8');
   writeln('8                                                  :X                          8');
   writeln('8                                                 ,:                           8');
   writeln('8                                 .Y           :EJjv.                          8');
   writeln('8                                 .uL  7kMNX7  B7 rJ.                          8');
   writeln('8                                 ri5B@B@B@B@B7 .iS.                           8');
   writeln('8                                 ir5@BSF@O@BL .rLv.                           8');
   writeln('8                                  :Yik2 k8B: :vvvi                            8');
   writeln('8                                    :LviYki ivj:                              8');
   writeln('8                                     ,.  ,rF7.                                8');
   writeln('8                                 r.  i: .kPB                                  8');
   writeln('8                               :7@B i77ruZuqSY7.                              8');
   writeln('8                                ::7OG,,  7B0@BEBZ                             8');
   writeln('8                                    7     BSF@XSL                             8');
	 writeln('8                                          jP.uE:                              8');
   writeln('8                                                                              8');
   writeln('8     *** LEMBRE-SE: PARA US�-LO BASTA INSERIR "P" NO CAMPO DE RESPOSTA ***    8'); 
	 writeln('8                                                                              8');                                                                   
   writeln('8                      PRESSIONE QUALQUER TECLA..                              8');
	 writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
	 readkey;
clrscr;  
writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');
writeln('8                                 �LTIMO GIN�SIO                               8');
writeln('8                                  INFORM�TICA                                 8');
writeln('8                                                                              8');     
writeln('8                                                                              8');     
writeln('8                                                                              8');      
writeln('8                                                                              8'); 
writeln('8                            ..,:iirr77vvLvLv7rrii::..                         8');
writeln('8                    .:7uUSqk55JJvv7ririi:i:ri;r7vYY11Skk1uLr:.                8');
writeln('8              :vUZqFvv:,                               .:r7UFGPui.            8');
writeln('8            vEMS7:                                             .iuGOSi        8');
writeln('8         ,MMu,    "Ora, ora, ora. O que temos aqui?                 rPB5      8');
writeln('8        Z@:       Um desafiante que se acha capaz de se tornar         0B,    8');
writeln('8       G@         o novo campe�o do Quiz GO!? Eu te alerto, jovem.      ,B    8');
writeln('8       @:         Todos os desafios que voc� enfrentou,                  @,   8');
writeln('8       Y@         Prepare-se para o confronto de sua vida!              UB    8');
writeln('8        7@U       VAI, MIL !"                                         :@@     8');
writeln('8          uMGr.                                                    :2MZi      8');
writeln('8           ,UqOF7:.                                          .;LE8Xr          8');
writeln('8                :r2PNku7;:,.                                @NFJi.            8');
writeln('8                    .,i7JuXSFS12uYJYLvLvLvLJjj1J;,        J@                  8');
writeln('8                                ..,:::i:i:i:::,,;LXPq5ur:  Bv                 8');
writeln('8                                                     ,iY1SE@                  8');
writeln('8                                                         1SE@                 8');
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                                                      BILL JOBS               8');     
writeln('8                                                                              8');      
writeln('8                                                                              8'); 
writeln('8                                                                              8');     
writeln('8                                                                              8');     
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                                                                              8');
writeln('8                            PRESSIONE QUALQUER TECLA..                        8');
writeln('88888888888888888888888888888888888888888888888888888888888888888888888888888888');		 
readkey;
end;	 
	 
	  clrscr;	  
	  repeat
	  level:=5;
contvida:=0;    
  // Pergunta INFORMATICA 1
   // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: PI DE OITO ');
    writeln('');
    writeln('OPONENTE = Bill Jobs  - Mil HP = 100 ');
    // CAMPO DE PERGUNTAS
    writeln('I) Quem foi o criador da primeira calculadora anal�tica? ');
    writeln('');
    writeln('1)Blaise Pascal');
    writeln('2)Charles Babbage ');
    writeln('3)Steve Jobs ');
    writeln('4)Johnny C�lculo');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
       textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='2' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='3') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -30 DE HP');
		    life:=life-30
		    end
		    	 // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
		       if (resp='P') or (resp='p') then
						if (cont=0) then
						begin						
							life:=life+50;
							writeln('VOC� USOU O POK�MON PI DE OITO!');
							writeln('VOC� USOU UM HP DE +50');
							writeln('');
							cont:=cont+1 ;
							end
							
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� N�O PODE USAR MAIS NENHUM POK�MON ,SORRY :) !');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
									
		// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
		    textcolor(white);
		  // ATRIBUI��O DE VALORES
		      verif:='F';
		      
// Pergunta INFORMATICA 2
   // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0  
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: PI DE OITO ');
    writeln('');
    writeln('OPONENTE = Bill Jobs  - Mil HP = 70 ');
    // CAMPO DE PERGUNTAS
    writeln('II) Qual o nome do Primeiro v�rus de Computador ');
    writeln('');
    writeln('1)The Creeper');
    writeln('2)I Love You');
    writeln('3)Jubileu');
    writeln('4)The Zombie');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
   textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='1' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='2') or (resp='3') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -30 DE HP');
		    life:=life-30
		    end
		    	 // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
		       if (resp='P') or (resp='p') then
						if (cont=0) then
						begin						
							life:=life+50;
							writeln('VOC� USOU O POK�MON PI DE OITO!');
							writeln('VOC� USOU UM HP DE +50');
							writeln('');
							cont:=cont+1 ;
							end
							
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� N�O PODE USAR MAIS NENHUM POK�MON ,SORRY :) !');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
									
			// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
		     textcolor(white);
		  // ATRIBUI��O DE VALORES
		      verif:='F';
		      
		  // Pergunta INFORMATICA 3
      // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: PI DE OITO ');
    writeln('');
    writeln('OPONENTE = Bill Jobs  - Mil HP = 40 ');
    // CAMPO DE PERGUNTAS
    writeln('III) Qual dos perif�ricos abaixo � um perif�rico de entrada de dados? ');
    writeln('');
    writeln('1)Datashow.');
    writeln('2)Teclado.');
    writeln('3)Impressora.');
    writeln('4)Gabinete');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
      textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='2' then
		 begin
		 verif:='V';
		 writeln('BILL JOBS USOU O MIL PARA GANHAR +50 DE HP');
		 writeln('');
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='3') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -30 DE HP');
		    life:=life-30
		    end
		    	 // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
		       if (resp='P') or (resp='p') then
						if (cont=0) then
						begin						
							life:=life+50;
							writeln('VOC� USOU O POK�MON PI DE OITO!');
							writeln('VOC� USOU UM HP DE +50');
							writeln('');
							cont:=cont+1 ;
							end
							
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� N�O PODE USAR MAIS NENHUM POK�MON ,SORRY :) !');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
									
		// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
		    textcolor(white);
		  // ATRIBUI��O DE VALORES
		      verif:='F';
		      
	// Pergunta INFORMATICA 4
     // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: PI DE OITO ');
    writeln('');
    writeln('OPONENTE = Bill Jobs  - Mil HP = 60 ');
    // CAMPO DE PERGUNTAS
    writeln('IV) O que � um Sistema de Informa��o?');
    writeln('');
    writeln('1)Sistema de informa��o � um conjunto de componentes(entrada de recursos de dados,processamento) que tem como objetivo');
    writeln('apresentar entrada de produto de informa��o �teis ao usu�rio final..');
    writeln('');
    writeln('2)Sistema de informa��o � um conjunto de componentes(entrada de recursos de dados,processamento) que tem como objetivo');
    writeln('apresentar sa�da de produto de informa��o �teis ao usu�rio final..');
    writeln('');
    writeln('3)Sistema de informa��o � um conjunto de componentes(entrada de recursos de dados,processamento) que tem como objetivo');
    writeln('apresentar o valor do produto de informa��o �teis ao usu�rio final..');
    writeln('');
    writeln('4)Sistema de informa��o � um conjunto de componentes(entrada de recursos de dados,processamento) que tem como objetivo');
    writeln('apresentar entrada de produto de informa��o �teis ao usu�rio prim�tio..');
//ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
       textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='2' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='3') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -30 DE HP');
		    life:=life-30
		    end
		    	 // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
		       if (resp='P') or (resp='p') then
						if (cont=0) then
						begin						
							life:=life+50;
							writeln('VOC� USOU O POK�MON PI DE OITO!');
							writeln('VOC� USOU UM HP DE +50');
							writeln('');
							cont:=cont+1 ;
							end
							
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� N�O PODE USAR MAIS NENHUM POK�MON ,SORRY :) !');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
									
		// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
		    textcolor(white);
		  // ATRIBUI��O DE VALORES
		      verif:='F';
		      
	// Pergunta INFORMATICA 5
    // USO DO ENQUANTO PARA VERIFICADOR=FALSO E VIDA MAIOR QUE 0 
    while (verif<>'V') and (vida>0) and (contvida=0) do
  Begin
  textcolor(white);
    //Cabe�alho
    writeln('TREINADOR = ',nome,' HP: ',life,' VIDAS: ',vida);
    writeln('POKEMONS DISPONIVEIS: PI DE OITO ');
    writeln('');
    writeln('OPONENTE = Bill Jobs  - Mil HP = 30 ');
    // CAMPO DE PERGUNTAS
    writeln('V) Qual a ordem correta das camadas? ');
    writeln('');
    writeln('1)Sess�o, apresenta��o, f�sica, enlace, rede, transporte e aplica��o.');
    writeln('2)Apresenta��o, aplica��o, sess�o, rede, transporte, enlace e f�sica.');
    writeln('3)Aplica��o, apresenta��o, sess�o, transporte, rede, enlace e f�sica.');
    writeln('4)F�sica, Enlace, Rede, Transporte, Sess�o, Apresenta��o e Aplica��o.');
    //ENTRADA DE DADOS
    write('RESPOSTA = ');
    read(resp);
      textcolor(lightgreen);
    clrscr;
    // USO DO SE CASO RESPOSTA SEJA CORRETA
    if resp='2' then
		 begin
		 verif:='V'
		 end
		 // SEN�O-SE PARA RESPOSTA ERRADA
			else
				if (resp='1') or (resp='3') or (resp='4') then
				begin
				// MEC�NICA PARA SUBTRA��O DO HP
				writeln('RESPOSTA ERRADA: -30 DE HP');
		    life:=life-30
		    end
		    	 // SEN�O-SE PARA USO DO SUPORTE POK�MON
		    	else
		       if (resp='P') or (resp='p') then
						if (cont=0) then
						begin						
							life:=life+50;
							writeln('VOC� USOU O POK�MON PI DE OITO!');
							writeln('VOC� USOU UM HP DE +50');
							writeln('');
							cont:=cont+1 ;
							end
							
							// SEN�O-SE PARA POK�MON J� USADO ANTERIORMENTE
							else
								if (resp='P') or (resp='p') then
					      	if (cont=1) then
								begin
								writeln('VOC� N�O PODE USAR MAIS NENHUM POK�MON ,SORRY :) !');
								writeln('')
								end
								// SEN�O PARA RESPOSTA INV�LIDA
							  	else
									begin
									writeln('RESPOSTA INV�LIDA');
									writeln(''); 
									end;
									
		// MEC�NICA COM SE PARA SUBTRA��O DE VIDA
    if (life<=0) then
    begin
      life:=100 ;
      writeln('VOC� TER� QUE REINICIAR O GIN�SIO!');
        writeln('VOC� PERDEU UMA VIDA, TENHA CUIDADO...');
        writeln('');
        verif:='V';
        contvida:=1;
      vida:=vida-1;
    end;
		  end;
		  
		  // ATRIBUI��O DE VALORES
		      verif:='F';
		      cont:=0;
	  until contvida=0; 
	    textcolor(white);
end;
begin
JOGO;	    
	  if vida=0 then
  begin
    clrscr;
    writeln('   ____    _    __  __ _____    _____     _______ ____          __  ');
    writeln('  / ___|  / \  |  \/  | ____|  / _ \ \   / / ____|  _ \    _   / /  ');
    writeln(' | |  _  / _ \ | |\/| |  _|   | | | \ \ / /|  _| | |_) |  (_) | |    ');
    writeln(' | |_| |/ ___ \| |  | | |___  | |_| |\ V / | |___|  _ <    _  | |    ');
    writeln('  \____/_/   \_\_|  |_|_____|  \___/  \_/  |_____|_| \_\  (_) | |    ');
    writeln('                                                               \_\   ');
    case level of
    1:writeln('PROF PASQUALE = N�o desista, voc� s� est� come�ando!');
    2:writeln('PROF VALTINHO BRANCO = NEst� na hora de revisar seus estudos.');
    3:writeln('PROF DUMB BULLDOG = Lamento, mas parece que voc� pulou algumas p�ginas do seu livro de hist�ria.');
    4:writeln('PROF PEL�ZINHO  = Aaaaah, eu sabia que voc� n�o estava pronto!');
    5:writeln('PROF BILL JOBS = Voc� n�o vai desistir agora, vai? Eu sinceramente ficaria decepcionado.');
		END;
		writeln('');
		writeln('               VC DESEJA REINICIAR O JOGO? S/N?        ');
		read(reiniciar);
		if (reiniciar ='S') or (reiniciar ='s') then
		JOGO
		else
  end
  
// SEN�O PARA SE USU�RIO CONSEGUIU FINALIZAR O JOGO  
  else
  begin
    clrscr;
    writeln('');
    writeln('');
    writeln('');
    writeln('-----------------------------------------------------------------------');
    writeln('	 __   _____  _   _  __        __  ___   _   _   _  ');
    writeln('	 \ \ / / _ \| | | | \ \      / / |_ _| | \ | | | | ');
    writeln('	  \ V / | | | | | |  \ \ /\ / /   | |  |  \| | | | ');
    writeln('	   | || |_| | |_| |   \ V  V /    | |  | |\  | |_| ');
    writeln('	   |_| \___/ \___/     \_/\_/    |___| |_| \_| (_) ');
    writeln('-----------------------------------------------------------------------');
    writeln('      Bill Jobs : E-Eu n�o acredito! Voc� me derrotou!................. ');
    writeln('      Bem... S� me resta dar-lhe os parab�ns, campe�o.');
    writeln('      Voc� finalizou o Quiz GO!, e como pr�mio, eu lhe');
    writeln('      darei meu pok�mon mais raro, Mil. ');
    writeln('');
  writeln('      WE ARE THE CHAMPIONS, MY FRIEND.....');
  writeln('');
  writeln('      PARAB�NS,');
  writeln('');
  writeln('      VOC� ACABA DE CONQUISTAR A LIGA QUIZ GO!!!');
  writeln('      A JORNADA N�O FOI F�CIL, MAS VOC� FOI RECOMPENSADO!');
  writeln('');
  writeln('');
  writeln('     \O/\O/\O/\O/\O/\O/\O/\O/\O/\O/\O/\O/\O/\O/\O/\O/\O/ ');
  writeln('           PRESSIONE ALGUMA TECLA PARA CONTINUAR          ');
  READKEY;


clrscr;
writeln(' TURMA 52837 - 2016.2 ');
writeln('     PARTICIPANTES');
WRITELN('');
writeln('         CAROL SENA');
writeln('     (  )   (   )  ) ');
writeln('      ) (   )  (  (   ');
writeln('      ( )  (    ) )   ');
writeln('      _____________    ');
writeln('     <_____________> ___   ');
writeln('     |             |/ _ \   ');
writeln('     |               | | |   ');
writeln('     |               |_| |   ');
writeln('  ___|             |\___/    ');
writeln(' /    \___________/    \     ');
writeln(' \_____________________/     ');
writeln('PRESSIONE ALGUMA TECLA..');
readkey;

clrscr;
writeln('                        JANDERSON NASCIMENTO      ');
writeln('                 __________________________________          ');
writeln('                /                | /   \    |   _  \         ');
writeln('               |   (-----|  |----`/  ^  \   |  |_)  |        ');
writeln('                 \   \    |  |    /  /_\  \  |      /        ');
writeln('            .-----)   |   |  |   /  _____  \ |  |\  \-------. ');
writeln('            |________/    |__|  /__/     \__\| _| `.________| ');
writeln('             ____    __    ____  ___     .______    ________.');
writeln('             \   \  /  \  /   / /   \    |   _  \  /        | ');
writeln('              \   \/    \/   / /  ^  \   |  |_)  ||   (-----` ');
writeln('               \            / /  /_\  \  |      /  \   \ ');
writeln('                \    /\    / /  _____  \ |  |\  \---)   | ');
writeln('                 \__/  \__/ /__/     \__\|__| `._______/  ');
writeln('PRESSIONE ALGUMA TECLA..');
readkey;


clrscr;
writeln('                  KARINE MARIA');
writeln('      (    ');
writeln('       \    ');
writeln('        )   ');
writeln(' ##------------->        (  * )'); 
writeln('        )   ');
writeln('       /   '); 
writeln('      (      ');
writeln('PRESSIONE ALGUMA TECLA..');
readkey;

clrscr;
writeln('                  KEVIN ALMEIDA             ');
writeln('       _==/          i     i          \==_  ');
writeln('     /XX/            |\___/|            \XX\ ');
writeln('   /XXXX\            |XXXXX|            /XXXX\');
writeln('  |XXXXXX\_         _XXXXXXX_         _/XXXXXX|');
writeln(' XXXXXXXXXXXxxxxxxxXXXXXXXXXXXxxxxxxxXXXXXXXXXXX ');
writeln('|XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX| ');
writeln('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX ');
writeln('|XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX|');
writeln(' XXXXXX/^^^^"\XXXXXXXXXXXXXXXXXXXXX/^^^^^\XXXXXX ');
writeln('  |XXX|       \XXX/^^\XXXXX/^^\XXX/       |XXX|');
writeln('    \XX\       \X/    \XXX/    \X/       /XX/ ');
writeln('       "\       "      \X/      "      /"   ');
writeln('PRESSIONE ALGUMA TECLA..');
readkey;

clrscr;

writeln('... E NOSSO PRINCIPAL PARTICIPANTE...');
writeln('           VOC� ',nome,' !!! ');
writeln('           ___________    ____      ');                                     
writeln('     ______/   \__//   \__/____\     ');                        
writeln('   _/   \_/  :           //____\\    ');                         
writeln('  /|      :  :  ..      /        \   ');                      
writeln(' | |     ::     ::      \        /   ');                          
writeln(' | |     :|     ||     \ \______/    ');                           
writeln(' | |     ||     ||      |\  /  |    ');                                 
writeln('  \|     ||     ||      |   / | \    '); 
writeln('   |     ||     ||      |  / /_\ \   ');
writeln('   | ___ || ___ ||      | /  /    \  ');  
writeln('    \_-_/  \_-_/ | ____ |/__/      \  '); 
writeln('                 _\_--_/    \      / ');  
writeln('                /____             / '); 
writeln('               /     \           /  ');  
writeln('               \______\_________/  ');
writeln('PRESSIONE ALGUMA TECLA..');
readkey;

clrscr;

textcolor(lightgreen);                                                                                                                                                                
writeln('                                                         PRESSIONE ALGUMA TECLA PARA FECHAR  ');                                                                                                                                                                 
writeln('                                                     OBRIGADO POR JOGAR :D!!! AT� O PR�XIMO SEMESTRE!!                                           ');                          
writeln('                                                                                                                                                  ');                             
writeln('                                                                                                                                `    .i*         ');                                  
writeln('                                                                                                                              `*x+i#xWWW.        ');                                      
writeln('                                                                                                                          .;;inWWWWWWWWx`        ');                                          
writeln('                                                                                                                        `+MWWWWWWWWWWWn.         ');                                              
writeln('                                                                                                                       ,xWWWWWWWWWWWW#`          ');                                                  
writeln('                                                                                                                     `*MWWWWWWWWWWWW*            ');                                                      
writeln('                                                                                                                    `nWWWWWWWWWWWWM;             ');                                                          
writeln('                                                                                                                   .nWWWWWWWWWWWWM:              ');                                                              
writeln('                                                                                                                .+MWWWWWWWWWWWWWW:               ');                                                                  
writeln('                                                                                                               ;MWWWWWWWWWWWWWWW*               ');                                                                       
writeln('                                                                                                              ,:`:#WWWWWWWWWWWWW+                ');                                                                          
writeln('                                                                                                              `    ,MWWWWWWWWWWWW#iiii;,         ');                                                                              
writeln('                                                                                                           ,i##*,   iWWWWWWWWWWWWWWWWWWWz        ');                                                                                  
writeln('                                                                                                         ,*zz####i` `MWWWWWWWWWWWWWWWWWWM        ');                                                                                      
writeln('                                                                                                       .*zz#######;  nWWWWWWWWWWWWWWWWWW+        ');                                                                                          
writeln('                                                                                                     .i#z#########* `MWMMWWWWWWWWWWWWMx#`        ');                                                                                              
writeln('                                                                                                    :#z##########+* ;z, `.;+##+i;::,.`            ');                                                                                                 
writeln('                                                                                                  `*zz##########++i`;                             ');                                                                                                     
writeln('                                                                                                `:#z############++.                              ');                                                                                                          
writeln('                                                                                               ,+##############+*.                               ');                                                                                                              
writeln('                                                ```                                          .*###############+i`                                 ');                                                                                                                 
writeln('                                             :i++*;:,,:`..                                 `;################+:                                   ');      
writeln('                                            :Mi:::::::;;**                                `*################+,                                    ');      
writeln('                                           ,n;,,,,,,:::::i.                              .+################+,                                     ');      
writeln('                                          `#;;:,:::ii:::::i`             `,`    `..`` ``,+#################;                                      ');      
writeln('                                          +zi;;;;:;i*;;;i;:`           :n@@@x+;++i;;i+####################*`                                      ');      
writeln('                                         `Mx*izz:,;;;;;iWn*,..,.`  `;#x@@@@n*;:xWWx+;;*#################+*`                                      ');       
writeln('                                         *Wn+*;+i::;+;+n@MzMWWWWMznW@@@@@xi;i##z@WWWz;;+########+##++++#+.                                      ');        
writeln('                                        :@z#+;;;iz+;###W@WM@@@@@@WWWWWxz*;*z#i:;z@WWW#;;#####+++++++++#+,                                        ');       
writeln('                                       .W@nz#i;;+**;iMz@@W@@@@@@@@@W+:;i#z+;:;+zx@@@WW*;i###+++++++++##,                                         ');       
writeln('                                      z@@xn#+;**ii+++M@@WW@@@@@@@Wi:+Mzi::*nx#*i#@@WWWi;+++++++++++#+.                                            ');     
writeln('                                      .@@@xx#+nM++**ii#W@WMW@@@@@Mi:zxi;izxzi;;;i#W@@WWz;*++++++++++*`                                            ');      
writeln('                                      *@@@xn++Mnnxnn*#nWWW#W@@@@x;;nM;;zM#;:;*nMWWW@@WWM;*#++++++++*`                                             ');      
writeln('                                     x@@@Mxz+Mn+zz+#ix@WM#W@Mx+:;Mx;;nn;:;#MWWW@WW@@WWW;*#++++###*`                                              ');      
writeln('                                     .W@@@MMz#znnz##nnM@W+x+::;:+M+:ix+:;#WW@@@WWWW@@WWW;+++**++i,                                              ');       
writeln('                                     ;@@@@WxnMn#xn#iW@@@x*x+;#n+*::+zi:+MWW@W@@WWWW@@WWM:+i,`                                                    ');       
writeln('                                     +@@@@WzMz++xz+;+@@W#+xz#*:;*#z*;ixWW@W@###@WWW@@WWz:.                                                       ');       
writeln('                                    `z@@@@@xWn#nnzi;*@@xzzx+:;inni;;#MWWWW@@###@WWW@@WMi.,nxzixxn#:      ;nnn;    ,nnziznzz*`                   ');        
writeln('                                    .n@@@@@WWxMnn+*;*@@xnxMxMz+;:;#MWW@@WW@####@WWW@@Mi. ,W#@######z`    x###x    :#MM###@@#W,                   ');       
writeln('                                    :z@@@@@WxnMWM#*;*@W+nMxz;:;i#MW@W@WWWW@####@WWW@W*,  :W@@+WW####;   .#####.   :##W#@@@WW@n                   ');       
writeln('                                    ;z@@@@@WxnzWMMx#iWM+xMx+*#MWW@WWWWWWWWW@##@WWW@@+,   :x@@`  .M##n   *##@##*   :##@```.+Mx@`                  ');       
writeln('                                    izW@@@@WWMznxxzz*#z+xx#z##nWWWWWWWWWWWWW@@@WWW@#.    :W#@`   *##W   x#####M   :##@`   ,@Wn                    ');      
writeln('                                 `;nxzx@@@@@Wn#zxnxxxn++xz+###xWWWWWWWWW@@@@@@WWW@#`     :@#@`   i##W  ,##@.@##,  :##@,:::nMW;                   ');       
writeln('                               ,+W@@WzzM@@@@@WzzMMMnMz++n++###xWWWWWWWW@@@@@@@@WWW`      :##@`   i##W  +##x x##+  :##W###@#W+                   ');        
writeln('                             ;x@@@@@WzzzM@@@@@WMMMMMn++#+++###MWWWWWWW@@@@@@@@@WWx       :@@W`   i##W  x##* *##W  :@@W###@@@n,                  ');        
writeln('                           .n@@@@@@@WzzzznM@@@@@WMMz+++#+++###WWWWW@@@@@@@@@@@@@@*       ,W@n`   i##W .@##:.:###: :WW#:ii*n@x#`                   ');      
writeln('                         ,W@@@@@@@@Mzzzzzzznnxxxz++++++++###nWWW@@@@@@@@@@@@@@@MM;      :W#W`   i##W *#@Wz###### ,zMM`   `WM#;                   ');      
writeln('                          x@@@@@@@@@xzzzzzzzz++++++++++++++##MWW@@@@@@WiM@@@@@WMM@i      :@@W`   +##M M@##W#####W`,xWW`   `W#M*                  ');       
writeln('                         i@@@@@@@@@@Mzzzzzzz#++++++++++++++#nWW@@@@@nz@*M@@@@MMMWx`      :@#W...;@##z,@@#i###z###;:@@M...,*x+M:                   ');      
writeln('                        `W@@@@@@@@@@WMzzzzzz#++++++++++++++M@@@@@@@@#+@@@@@WMMMWn`       :#@W*M@###@,*@@W`    W##z,@#W#WWW@W@i                     ');     
writeln('                        i@@@@@@@@@@@MnMnzzzz#+++++++++++++#@@@@@@@@@@@Wiz@MMMMWW.,;*+zz, ,@WM#####@i +@xz     z##@:@@M#@@@W#M,                    ');      
writeln('                        x@@@@@@@@xW@#zznn###+++++##zzz++++z@@@@@@@@+z@++;xMMWWWMMMMMWWW* .+++;##+i.  ;#+:     :###:++*;#+**,`                    ');       
writeln('                       :@@@@@@@WiiWz;zz##z######znxxz+++++n@@@@@@@@zxWi*xMMMMMMMMWWWWM+.                                                           ');     
writeln('                       #@@@@@@Wi;Wn;zxzz######znnzz#++++++x@@@@@@@@@@MxMMMMMMMMWWWWW#*+:                                                           ');     
writeln('                      `W@@@@@Wi:Mx:+Mi#zzzz######++++++++z@@@@@@@@@@@MMMMMMWWWWMMMMW@WWM                                                          ');      
writeln('                      ;@@@@WWMnWz;*Mi;nzzz###++++++++++#x@@@@@@@@@@WMMMMMMMMMMMMMMWWWWMi                                                          ');      
writeln('                      n@@@@i`.,+MMWi;x@nzz###++++++++++W@@@@@@@@@WMMMMMMMMMMMMMMWWWx+;`                                                           ');      
writeln('                     i@@@@n.iii,.#z:x@@Wz###++++++++++M@@@@@@@@WMMMMMMMMMMMMMMWWz;.                                                               ');      
writeln('                     M@@@@;:+,,**.;M@@@@nz##+++++++++n@@@@@@WWMMMMMMMMMMMMMMMW#.                                                                  ');      
writeln('                     W@@@M``:+i.:*,z@@@@Wzz####+++++#@@@@@@WMMMMMMMMMMMMMMMWWW.                                                                   ');      
writeln('                     W@@@M:```:iii:@@@@@@nzzzz++++++M@@WWMMW@MMMMMMMMMMMMMWWWW,                                                                   ');      
writeln('                    .@@@@@@z:`````*@@@@@@Wz###++#++x@MMMMMMMMMMMMMMMMMMMMWWMzW;               `,.,`     :::     ,::.                             ');       
writeln('                    xW+ii+zW@xi```x@@@@@@@@z#####+nxnnxMMMMMMMWMMMMMMMMMWWx;;W*             .z@#+#@z.  `x##i    x#@*                              ');      
writeln('                   ;n;;i;:::iz@x::@@@@@@@@@@z##########MMMMMMM@MMMMMMMWWWM;:;M#            :W###+###W: ,+@#W.   x@#*                              ');      
writeln('                   *#zz##+*i;:;#WM@@@@@@Wxnz###########xMMMMMMWMMMMMWWWW#;;x;Mz           .@##@#.+@##@.,W####   x#@*                               ');     
writeln('                  ;####++++++i;:i@@WMnz################nMMMMMMWWMMWWW@Wx::n@:Wn           ###W,   .W##z,#+MWx,  ###*                               ');     
writeln('                 .#####++++++++**zz#####################MMMMMM@WMWW@MnnW::MM:WM          `W##*     ;#@x.#*;x#*  n##*                               ');     
writeln('                 ;####++++++############################MMMMW@@WWWWz;:;z*:##*WM`         ,##@.     `W+M:nn*izWi n##*                               ');     
writeln('                `####+++################################xMMW@WWWWW#:*+;;+:::xWW.         :@nW`      #xM;WWW,@@W`n##*                               ');     
writeln('                ,#############z#######################xWW@@WWWWWWx;*W#;z+:+MWWW;         ,Wxx`      x@W;@W@ +###z##*                               ');     
writeln('                i##################################zM@@@WWWW@@WMW+;;;#x++:nWWWW*         .nxW,     `W@#i##@``W#@*##*                                ');    
writeln('               `#################################nM@WWWWWMM@Wz***;;;Mx;z*iMWWWW#         `zxW#     i@#W,##@` ;##xz#*                               ');     
writeln('               ,###############################nM@@@W@@W+*nW++n+**:;*;iWzMWWWWWn          *@@W;   :W@#*,##@`  n##+W*                                 ');   
writeln('               i#############################nM@@@@@@@@n**x#*xn+xM;::iM@WWWW@WWx          `n@W@+`+###M`,##@`  ,@#W+*                                  ');  
writeln('               +###########################nM@@@@@@@@@@z**x**+nn#WMzx@@WWWW@@WWM           .n@@M,M##x. ,##@`   +###;                                ');    
writeln('               ##########################nM@@@@@W++#@@@+*+n**n+#W@@@@WWWW@@@WWWM`           `iz*;Wxi`  ,@@@`   `x@W,                               ');     
writeln('               ########################nM@@@@@@@W**+nMz**nM**+nW@@@WWWWW@@@@WWWW`                `      ```     ```                                 ');    
writeln('               +#####################zx@@@@@@@@@@n+****#n@@WW@@@@@WWWW@@@@@WWWWW`                                                                   ');    
writeln('               ;###################zxW@@@@@@@WWW@@@WMMW@@@@@@@@WWWWW@@@@@@@WWWWW.                                                                   ');    
writeln('               `zzz##############znW@@@@@@@@@@@WWWWWWWWWWWWWWWWWW@@@@@@@@@WW@WWW,                                                                  ');     
writeln('                inn#########zzznxM@@@@@@@@@@@@@@@@@WWWWWWWWWWW@@@@@@@@@@@WWW@WWW:                                                                  ');     
writeln('                .znnzzzznnnnn#i;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWW@WWWW*                                                                  ');     
writeln('                 innnnnnz+i:.  .@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWWW@@@@@@@WWWW@WWWWz                                                                 ');      
writeln('                 `*nnzi,`      ,@@@@@@@@@@@@@@@@@@@@@@@@WWWWWWWWWWWWWWWWWW@@WWWWM                                                                 ');      
writeln('                   ..          ,@@@@@@@@@@@@@@@@@@@@@@@WWWWWWWWWWWWWWWWWWW@WWWWWW.                                                                ');      
writeln('                               ,@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWWWWWWWWWWW@@@WWWWWW,                                                                ');      
writeln('                               ,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWWW@`       ,*nnixMxMxM,zMM:         zMM:                            ');      
writeln('                               .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWWW@i       .*Wx+@##@@#:+##M`       i##x:                           ');       
writeln('                               `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWW@W@W.      `x@x*xMxMMM,Mn##*      `W#@+*                           ');       
writeln('                                n@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWWWW@@#      ,#MM`      `##@#W.     +@##W*                           ');       
writeln('                                ;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWW@W@@@W,     .+zW`      `M*;x##    .xMx##+                           ');       
writeln('                                `W@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWW@WW@WW@#     ,#xx,;ii;i,`zxi*i+:   n@W#@#*                            ');       
writeln('                                `W@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWWWW@WW@WWW@W`    :xxWiM@#@xz`nxM;@@x` i@@x###+                             ');     
writeln('                                ,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWWWW@@WWWWWW@@;    :xn#iW@#W#n`WW@.z##*`W#@,z##+                            ');      
writeln('                               ;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWWW@@WWWWWWW@@#    :nMW.,:,::.`@@#..@#W*### n##+                              ');    
writeln('                                :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWWW@@WWWWWWW@@@x    :@@x`      `###. *#@*#W` z##*                             ');     
writeln('                                `M@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWW@@WWWWWWWW@@@W`   :W@x`      `###. `M@*#i  ###*                            ');      
writeln('                                 z@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWW@@@@WWWWWWW@@@@@,   :@#W`,::,:,.###.  :W*x   x##*                            ');      
writeln('                                 #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWWWW@@@@WW@WWWW@@@@@@:   ,xMn,x@@@@@;###.   #*,   x@#*                            ');      
writeln('                                :@@@@@@@@@@@@@@@@@@@@WWWWWWWWWWWWW@@@@@WW@WWWW@@@@@@@;   ,+;M*+WMM@W;###.   ``    x#@*                            ');       
writeln('                              `M@@@@@@@@@@@@@@@WWWWWWWWW@@@@@@@@@@@@@WW@WWW@@@@@@@@@:   `.,;,::;i**,i**`         ;**,                             ');     
writeln('                               z@@@@@@@@@@@@@@@@WWW@@@@@@@@@@@@@@@@@WW@WWW@@@@@@@@@@z`                                                            ');      
writeln('                               ;M@@@@@@@@@@@@@@WW@@@@@@@@@@@@@@@@@WWW@WW@@@@@@@@@@xi                                                               ');     
writeln('                                .M@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@WWW@@@@@@@@@@@@M+,                                                                 ');     
writeln('                                 :nW@@@@@@@@@@@@@@@@@@@@@@@@@@WWW@@@@@@@@@WWni.                                                                   ');      
writeln('                                    .;+nW@@@@@@@@@@@@@@@@@@@WWW@@@@@@MMn*:`                                                                        ');     
writeln('                                        `;+nM@@@@@Wx##+#+#++#+#+#+++:`                                                                             ');     
writeln('                                           `:##*:`                                                                                                 ');    
writeln('');
writeln('                                               MAXIMIZE A TELA :)');
readkey;                                                                                                                                                      
end;                                                                                                                                                      
                                                                                                                                                      
                                                                                                                                                      
                                                                                                                                                      
                                                                                                                                                      
                                                                                                                                                      
                                                                                                                                                      
                                                                                                                        
End.
