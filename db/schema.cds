namespace studentdb;

using {studentdb.commons as common} from './commons';

using {cuid, managed, temporal} from '@sap/cds/common';

Context master{

    entity Student : common.Address {
        key ID : String(20);
        NAME: String(20);
        CLASS : Association to one Standards;
        GENDER:String(7);
        CITY:String(20);

    }

    entity Books{
        key ID: common.Guid;
        BOOKNAME:String(40);
        AUTHOR:String(50);
    }

    entity Standards{
        KEY ID: Int16;
        CLASSNAME: String(10);
        SECTIONS : Int16;
        CLASSTEACHER:String(80);
    }
}


Context trans{
        entity Rentals: cuid,managed,temporal {   
            Student : Association to one master.Student;
            Book : Association to one master.Books;
        }
}