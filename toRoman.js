function convertToRoman(num) {
    var decimals = [1,2,3,4,5,6,7,8,9,10 , 50, 100, 500, 1000];
    var romans = ["I", "II","III" ,"IV" ,"V" ,"VI", "VII", "VIII" , "IX" , "X" , "L" , "C", "D" , "M"];
    var newNum = num.toString().split("");
//     console.log(newNum.length);
//     console.log(num[0]);
    console.log(Number(newNum[0]));
    if (newNum.length === 1) {
     return romans[decimals.indexOf(num)];
    } else if (newNum.length === 2) {
        return romans[Number(newNum[0])] + romans.indexOf( Number(newNum[1]) ) ;
    }
}

// convertToRoman(2);
// convertToRoman(45);
// convertToRoman(35);
convertToRoman(59);
