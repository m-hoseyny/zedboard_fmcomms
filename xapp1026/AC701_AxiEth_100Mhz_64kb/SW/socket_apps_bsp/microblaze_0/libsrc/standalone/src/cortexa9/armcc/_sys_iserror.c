
// Stub for iserror() function
__weak int _sys_iserror(int status)
{
   if(status<0)
      return 1;

   return 0;
}
