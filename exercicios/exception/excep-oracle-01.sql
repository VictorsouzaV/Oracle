declare
    codigo number(10) := &cod;
    nome scott.dept.dname%type;
    tamanho exception;
begin
    if codigo > 99 then
        raise tamanho;
    end if;

    select d.dname into nome
    from scott.dept d
    where d.deptno = codigo;

    dbms_output.put_line('Departamento: ' || nome);

    exception
        when tamanho then
            dbms_output.put_line('Codigo do departamento entre 1 e 99!');

        when no_data_found then
            dbms_output.put_line('Esse departamento não existe ou não está cadastrado!');
        
  
end;