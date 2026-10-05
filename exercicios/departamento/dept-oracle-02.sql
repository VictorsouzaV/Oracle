declare
    departamento scott.dept.deptno%type;
    local scott.dept.loc%type;
    nome scott.dept.dname%type := '&funcionario';

begin
    select d.deptno, d.loc
    into departamento, local
    from scott.dept d
        inner join scott.emp e on d.deptno = e.deptno
    where upper(e.ename) = upper(nome);

    dbms_output.put_line('Departamento: ' || departamento || ' local: ' || local);

    exception
        when no_data_found then
            dbms_output.put_line('Funcionario não encontrado!');

end;