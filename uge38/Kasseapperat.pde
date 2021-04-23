
float taxedPayment = 0;

float calculateTax(float payment, float tax){
  return payment*tax;
}

void kasseApperat(int payment, float tax, String name) {
  
  noLoop();  
  taxedPayment = calculateTax(payment, tax);
  
  println(String.format("Tak for dit køb %s", name));
  println(String.format("Du har købt for %f", taxedPayment));
  println();
  println(String.format("Beløb uden moms: %d", payment));
  println(String.format("Beløb med moms:  %f", taxedPayment));
  println(String.format("Momsbeløb udgør: %f", (tax-1)*payment));
  println();
  println(String.format("Dato: %d/%d - %d kl: %d:%d", day(), month(), year(), hour(), minute()));
}

/*
    Tak for dit køb Jens,
    Du har købt for 125 kroner.

    Beløb uden moms: 100
    Beløb med moms: 125
    Momsbeløbet udgør: 25
*/
