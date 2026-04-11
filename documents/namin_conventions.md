
----
### Principios Generales
- **Naming Conventions:** Usa snake_case, junto con letras en minuscula y guion bajo ( _ ) para separar palabras.
- **Language:** Usa ingles para todos los nombres.
- **Avoide Reserve Words:** No uses palabras reservadas de SQL.

### Convenciones Nombres Tablas
#### Reglas De la Capa "Bronce"
- Todos los nombres deben deben empezar con el nombre del *'source system'* y los nombres de las tablas deberan ser iguales a su nombre original.
-  `<sourcesystem>_<entity>`
    - `<sourcesyste>`: Nombre del sistema de origen ( ej., `crm` , `erp` ).
    - `entity`: Nombre exacto de la tabla de origen.
    - Ejemplo: `crm_customer_info` &rarr; Informacion del cliente proveniente del CRM. 
- 