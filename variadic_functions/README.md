# Variadic functions

### Useful links



## C Variadic Macros

> [Source here](https://www.thegeekstuff.com/2017/05/c-variadic-functions/)

In order to use variadic functions we need to understand these macros:

```
va_list
va_start
va_arg
va_end
va_copy
```

All these macros are in the stdarg.h which should be included in your code as shown below:

```
#include <stdarg.h>. 
```

Atleast one mandatory argument is required. The order is important in this case. So, you will have mandatory arguments first and then you will have optional arguments.
