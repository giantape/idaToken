var IdaToken = artifacts.require('./IdaToken.sol')

contract('IdaToken', function(accounts){
    it('sets the total supply upon deployment', function(){
        return IdaToken.deployed().then(function(instance){
            tokenInstance = instance
            return tokenInstance.totalSupply()
        }).then(function(totalSupply){
            assert.equal(totalSupply.toNumber(), 1000000, 'set the total supply of 1.000.000')
        })
    })
})