/**
 * @description Find functions longer than 10 lines
 * @kind problem
 * @id javascript/functions-longer-than-10-lines
 * @problem.severity recommendation
 */
import javascript

from Function fn
where fn.getNumLines() > 10
select fn, "This function is longer than 10 lines."
