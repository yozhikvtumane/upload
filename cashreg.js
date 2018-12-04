function checkCashRegister(price, cash, cid) {
    var change = cash - price;
    var regObj = {status: null, change: []};
    var t = cid.reduce( (p, n)=>{
        return p.concat(n);
    }, [] );
    var sum = 0;

    for (var i = 1; i < t.length; i += 2) {
        sum = sum + t[i];
    }

    if (sum < change) {
        regObj.status = "INSUFFICIENT_FUNDS";
        return regObj;
    }

    if (sum === change) {
        regObj.status = "CLOSED";
        regObj.change = cid;
        return regObj;
    }

    var cashObj = {
        "ONE HUNDRED": 100,
        "TWENTY": 20,
        "TEN": 10,
        "FIVE": 5,
        "ONE": 1,
        "QUARTER": 0.25,
        "DIME": 0.1,
        "NICKEL": 0.05,
        "PENNY": 0.01
    }

    for (var i in cashObj) {
        if (cashObj[i] < change) {
            var howMany = parseInt( change / cashObj[i] );

            if ( howMany  * cashObj[i] <= t[t.indexOf(i) + 1] ) {
               change = Math.round( (change - howMany  * cashObj[i]) * 100) / 100;
               regObj.change.push([i, howMany * cashObj[i]]);
               console.log(change);
            } else {
                 change = Math.round( (change - t[t.indexOf(i) + 1] ) * 100 ) / 100;
                 regObj.change.push([i, t[t.indexOf(i) + 1]]);
                 console.log(change);
            }
            
        }
    }
    
    var checkSum = 0;

    for (var i = 0; i < regObj.change.length; i++) {
        checkSum += regObj.change[i][1];
        console.log(checkSum);
    }

    if ( Math.round(checkSum * 100) / 100 === Math.round( (cash - price) * 100 ) / 100) {
        regObj.status = "OPEN"
    } else {
        regObj.status = "INSUFFICIENT_FUNDS";
        regObj.change = [];
    }

    return regObj;
}

checkCashRegister(19.5, 20, [["PENNY", 1.01], ["NICKEL", 2.05], ["DIME", 3.1], ["QUARTER", 4.25], ["ONE", 90], ["FIVE", 55], ["TEN", 20], ["TWENTY", 60], ["ONE HUNDRED", 100]]);
checkCashRegister(3.26, 100, [["PENNY", 1.01], ["NICKEL", 2.05], ["DIME", 3.1], ["QUARTER", 4.25], ["ONE", 90], ["FIVE", 55], ["TEN", 20], ["TWENTY", 60], ["ONE HUNDRED", 100]])
checkCashRegister(19.5, 20, [["PENNY", 0.01], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 0], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]]);
checkCashRegister(19.5, 20, [["PENNY", 0.01], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 1], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]])
checkCashRegister(19.5, 20, [["PENNY", 0.5], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 0], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]])
