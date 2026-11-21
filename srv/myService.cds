using {student.db.master} from  '../db/data-model';
service myServiceOne @(path: 'myServiceone'){
    function pokieman(name:String(20)) returns String;

    entity ReadEmployeeSrv as projection on master.employees;
}