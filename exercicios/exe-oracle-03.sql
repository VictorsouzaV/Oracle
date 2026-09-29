declare
    numero number(1);
    msg varchar2(50);

begin
    numero := 5;

    if mod(numero, 2) = 0 then
        msg := 'O número é par';

    else
        msg := 'O número é impar';

    end if;

    dbms_output.put_line(msg);

end;