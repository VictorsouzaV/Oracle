declare
    quantidade scott.emp.empno%type;
    maior_salario scott.emp.sal%type;
    menor_salario scott.emp.sal%type;
    media_salarial number;
begin
    select count(e.empno), max(e.sal), min(e.sal), round(avg(e.sal), 2)
    into quantidade, maior_salario, menor_salario, media_salarial
    from scott.emp e
    where e.deptno = 30;

    dbms_output.put_line('Quantidade de empregados: ' || quantidade);
    dbms_output.put_line('Maior salario: ' || maior_salario);
    dbms_output.put_line('Menor salario: ' || menor_salario);
    dbms_output.put_line('Média salarial: ' || media_salarial);
end;