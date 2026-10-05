declare
    nome scott.emp.ename%type;
    salario scott.emp.sal%type;
    codigo scott.emp.empno%type := &cod;
begin
    select e.ename, e.sal
    into nome, salario
    from scott.emp e
    where e.empno = codigo;

    dbms_output.put_line('Empregado: ' || nome || ' Salario: ' || salario);

    exception
        when no_data_found then
            dbms_output.put_line('Empregado não encontrado!');
end;