module.exports = function(){

    this.on('getEmbeddings', async(req)=>{
        return req.data;
    })
}