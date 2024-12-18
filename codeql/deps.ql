/**
 * @name dependencies
 * @description Finds and lists referenced dependencies
 * @kind problem
 * @problem.severity recommendation
 * @tags setup_check
 * @id setup
 */

import javascript

from PackageDependencies deps, string name
where
  deps.getADependency(name, _) and
  (
    name.matches("dotenv") or
    name.matches("nx") or
    name.matches("lodash")
  )
select deps, "Dependency found: '" + name + "'."
