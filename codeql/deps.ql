/**
 * @name dependencies
 * @description finds and lists referenced dependencies
 * @kind problem
 * @problem.severity recommendation
 * @tags setup_check
 * @id setup
 */

import javascript
from PackageDependencies deps, string name
where deps.getADependency(name, _) and name.matches("dotenv", "nx") 
select deps, "Dependency found'" + name + "'."
