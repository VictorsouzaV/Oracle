declare
    numero number(10);
    numero2 number(10);
    numero3 number(10);

    msg varchar2(50);

begin
    numero := 5;
    numero2 := 6;
    numero3 := 4;

    if (numero < numero2) and numero2 < numero3 then
        msg := 'Em ordem crescente';

    elsif (numero > numero2) and numero2 > numero3 then
        msg := 'Em ordem decrescente';

    else
        msg := 'Em ordem aleatoria';

    end if;

    dbms_output.put_line(msg);
end;