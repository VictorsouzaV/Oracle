declare
    nota number(1);
    nota2 number(1);
    nota3 number(1);

    msg varchar2(50);

begin
    nota := 8;
    nota2 := 6;
    nota3 := 3;

    if nota3 >= 7 then
        msg := 'Aprovado';

    elsif nota3 >= 5 then
        msg := 'Recuperação';

    else
        msg := 'Reprovado';

    end if;

    dbms_output.put_line(msg);

end;