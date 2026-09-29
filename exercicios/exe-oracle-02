declare
    palavra char(1);
    msg varchar2(60);

begin
    palavra := 'B';

    if upper(palavra) in ('A', 'E', 'I', 'O', 'U') then 
        if palavra = upper(palavra) then
            msg := 'Vogal e maiuscula';

        else
            msg := 'Vogal e minuscula';
        
        end if;

    else
        if palavra = upper(palavra) then 
            msg := 'Consoante e maiuscula';

        else
            msg := 'Consoante e minuscula';

        end if;
    end if;

    dbms_output.put_line(msg);

end;