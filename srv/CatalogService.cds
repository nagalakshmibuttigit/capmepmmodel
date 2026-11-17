using {student.db.master , student.db.transaction } from '../db/data-model';


service CatalogService @(path: 'CatalogService'){

    entity BusinessPartnerSet as projection on master.businesspartner;
    entity AddressSet as projection on master.address;
    entity ProductSet as projection on master.product;
    entity EmployeeSet as projection on master.employees;

    entity POs as projection on transaction.purchaseorder;
    entity POItemSet as projection on transaction.poitems;
}