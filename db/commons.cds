namespace studentdb.commons;
using {Currency} from '@sap/cds/common';


type Gender : String(1) enum{
    male = 'M';
    female= 'F';
    undisclosed= 'U';
}

type AmountT: Decimal (10,2)@(
    Semantic.amount.CurrencyCode : 'CURRENCY_Code',
    sap.unit : 'CURRENCY_Code'
);

aspect Amount:{
    CURRENCY : Currency;
    GROSS_AMOUNT: AmountT @(title: 'Gross Amount');
    NET_AMOUNT : AmountT @(title: 'Net Amount');
    TAX_AMOUNT: AmountT @(title:'Tax Amount');

}

type PhoneNumber: String(30) @assert.format: '^[0-9]{10}$';
type EmailAddress:String(80)@assert.format: '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

type Guid : String(32);

aspect Address{
    HOUSE: Int16;
    STREET: String(40);
    CITY: String(80);
    COUNTRY:String(3);
}