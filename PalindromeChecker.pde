
public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}



public String noCapitals(String str)
{
  return str.toLowerCase();
}

public String noSpace (String str)
{
  String hi = noCapitals(str);
   for (int i = hi.length()-1; i>=0; i--)
  {
    if (hi.substring(i,i+1).equals(" "))
    hi = hi.substring(0,i)+hi.substring(i+1);
  }
  return hi;
}

public String reverse(String str)
{
    String sNew = "";
    for (int i = str.length()-1; i>=0; i--)
    {
      sNew = sNew + str.substring(i,i+1);
    }
    return sNew;
}

public String onlyLetters(String str)
{

  String bye = "";
   for (int i = 0; i < str.length(); i++)
  {
    if(Character.isLetter(str.charAt(i)))
    bye = bye + str.charAt(i);
    
  }
  return bye;

}


public boolean palindrome(String str)
{
  String sNew = onlyLetters(noSpace(str));
  String hi = onlyLetters(reverse(sNew));
  if (sNew.equals(hi))
  return true; 
  
  else
  return false;
}





