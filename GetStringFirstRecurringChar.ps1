function Get-StringFirstRecurringChar
{
    param(
        [Parameter(Mandatory=$true)]
        [string]$word
    )
    $chars = $word.ToCharArray() 
    foreach ($char in $chars){
        if (($chars -clike $char).count  -gt 1){
             return $char;
        }
    }
    return($null)
}
