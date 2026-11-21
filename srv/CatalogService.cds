using {student.db.master , student.db.transaction } from '../db/data-model';


service CatalogService @(path: 'CatalogService'){

    @Capabilities : { Insertable,Updatable,Deletable}
    entity BusinessPartnerSet as projection on master.businesspartner;
    entity AddressSet as projection on master.address;
    entity ProductSet as projection on master.product;
    // @readonly
    entity EmployeeSet as projection on master.employees;

    entity POs as projection on transaction.purchaseorder
    actions{
        action boost() returns POs;
        function getLargestPo() returns POs;
    }
    ;
    entity POItemSet as projection on transaction.poitems;
}