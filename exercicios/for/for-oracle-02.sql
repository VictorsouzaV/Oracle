declare
    departamento scott.dept.deptno%type;
    qtde number(2) := 0;
begin
    for i in 1..4 loop
        select e.deptno, count(e.empno)
        into departamento, qtde
        from scott.emp e
        where e.deptno = i * 10
        group by e.deptno;

        dbms_output.put_line('Departamento: ' || departamento || ' Quantidade de empregados: ' || qtde);
    end loop;

    exception
            when no_data_found then
                dbms_output.put_line('Departamento não contém empregados!');
end;