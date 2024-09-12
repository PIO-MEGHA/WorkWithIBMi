        Ctl-opt dftactgrp(*no);

        Dcl-s Num1 zoned(7:2) inz(0);
        Dcl-s Num2 zoned(7:2) inz(0);
        Dcl-s Result zoned(14:2) inz(0);



        Dcl-Pr AddNum zoned(14:2);
            Parm1 zoned(7:2);
            Parm2 zoned(7:2);
        End-Pr;

        Dcl-Pr SubNum;
            Parm1 zoned(7:2);
            Parm2 zoned(7:2);
        End-Pr;



        // Main Program.
        Num1 = 40;
        Num2 = 50;
        Result = AddNum(Num1:Num2);
        SubNum(Num1:Num2);
        dsply Result;

        *Inlr = *On;


        Dcl-Proc AddNum;
          Dcl-Pi AddNum zoned(14:2);
            Parm1 zoned(7:2);
            Parm2 zoned(7:2);
          End-Pi;

          Result = Parm1 + Parm2;
          Return Result;
        End-Proc;


        Dcl-Proc SubNum;
          Dcl-Pi SubNum;
            Parm1 zoned(7:2);
            Parm2 zoned(7:2);
          End-Pi;

          Result = Parm1 - Parm2;
        End-Proc;
