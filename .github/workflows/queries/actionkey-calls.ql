/**
 * @description Find tests that call a function named "pressActionKey"
 * @kind problem
 * @id javascript/test-calls-pressActionKey
 * @problem.severity recommendation
 */
import javascript

from Function testFunction, CallExpr call
where 
  testFunction.getName().matches("%test%") and  // assuming test functions contain 'test' in their name
  call.getCalleeName() = "pressActionKey" and
  call.getEnclosingFunction() = testFunction
select testFunction, "Test function calls 'pressActionKey'."
