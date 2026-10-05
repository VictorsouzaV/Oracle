declare
    numero number(2) := &tabuada;
begin
    dbms_output.put_line('TABUADA DO ' || numero);

    for i in 1..20 loop
        dbms_output.put_line(i || ' x ' || numero || ' = ' || (i * numero));

    end loop;
end;