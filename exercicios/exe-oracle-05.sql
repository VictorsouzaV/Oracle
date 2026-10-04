declare
    num1 number := &n1;
    num2 number := &n2;
    total number := 0;
    op varchar2(1) := '&sinal';

begin
    if (op = '+') then
        total := num1 + num2;
        dbms_output.put_line('Valor ds soma: ' || total);

    elsif (op = '-') then
        total := num1 - num2;
        dbms_output.put_line('Valor da subtração: ' || total);

    elsif (op = '*') then
        total := num1 * num2;
        dbms_output.put_line('Valor da multiplicação: ' || total);

    elsif (op = '/') then 
        total := num1 / num2;
        dbms_output.put_line('Valor da divisão: ' || total);

    else
        dbms_output.put_line('Operador invalido, digite outro!');

    end if;
end;