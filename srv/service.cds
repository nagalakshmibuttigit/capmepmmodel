using {studentdb.master as master, studentdb.trans as transacation } from '../db/schema';

Service myService{
    entity StudentSet as projection on master.Student;
    entity BooksSet as projection on master.Books;
    entity StandardSet as projection on master.Standards;
    entity BookRentalSet as projection on transacation.Rentals;
    
}