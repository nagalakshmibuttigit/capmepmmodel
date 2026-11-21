namespace student.cds;

using {student.db.master, student.db.transaction} from './data-model';

Context CDSViews{

    define view![POWorklist] as select from transaction.purchaseorder{
        key PO_ID as![purchaseOrderNo],
        key Items.PO_ITEM_POS as ![Position],
        PARTNER_GUID.BP_ID as ![vendor],
        PARTNER_GUID.COMPANY_NAME as ![companyName],
        Items.GROSS_AMOUNT as ![grossAmount],
        Items.NET_AMOUNT as ![netAmount],
        case OVERALL_STATUS 
            when 'N' then 'New'
            when 'C' then 'Pending'
            end
        as ![status],
        Items.PRODUCT_GUID.DESCRIPTION as ![product],
        PARTNER_GUID.ADDRESS_GUID.COUNTRY as ![country]
    }
}

