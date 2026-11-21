const cds = require('@sap/cds');
const {employees} = cds.entities('student.db.master')
module.exports = (srv) =>{
    srv.on('pokieman', req=> `Hello ${req.data.name}`);

    srv.on('READ', 'ReadEmployeeSrv', async(req)=>{
         const tx = await cds.tx(req);

         //replacing all emplyee nameMiddle property to DHANA
        //  var results = await tx.run(SELECT.from(employees).limit(5));
        //  for (let i=0; i <results.length; i++ ){
        //     const element = results[i];
        //     element.nameMiddle = "Dhana";
        //  } 
        //  return results;

        //returning the employee details if they provided the ID;
        // if not provided ID return the top 2 Female candidate
        var whereCondition = req.data;
        if(whereCondition.hasOwnProperty('ID')){
            return await tx.run(SELECT.from(employees).where(whereCondition));
        }else{
            return await tx.run(SELECT.from(employees).limit(2).where({'sex':'F'}))
        }
    })
}