/**
 * @description Find tests that call a function named "pressActionKey"
 * @kind problem
 * @id javascript/test-calls-pressActionKey
 * @problem.severity recommendation
 */
import javascript

from Function testFunction, FunctionCall call
where 
  testFunction.getName().matches("%test%") and  // assuming test functions contain 'test' in their name
  call.getTarget().getName() = "pressActionKey" and
  call.getEnclosingFunction() = testFunction
select testFunction, "Test function calls 'pressActionKey'."
