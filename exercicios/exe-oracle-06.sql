declare
    d_cod scott.dept.deptno%type := &codigo;
    d_nome scott.dept.dname%type;

begin
    select d.dname
        into d_nome
    from scott.dept d
    where d.deptno = d_cod;

    dbms_output.put_line('Nome do departamento: ' || d_nome);
    
exception
    when no_data_found then
        dbms_output.put_line('Depsrtamento não cadastrado!');

end;