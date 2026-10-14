declare
    numero number := &numero;
    fatorial number := &fatorial;
    total number := 0;

begin
    dbms_output.put_line('Número escolhido: ' || numero);
    dbms_output.put_line('Fatorial escolhido: ' || fatorial);

    loop
        total := (numero * fatorial);
        numero := total;
        fatorial := fatorial - 1;

    exit when fatorial = 0;
end loop;

    dbms_output.put_line('Resulatdo final da soma: ' || total);
end;