module.exports = (srv) =>{
    srv.on('pokieman', req=> `Hello ${req.data.name}`);
}