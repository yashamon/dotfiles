/* Utilities
/* -----------------------------------------------
/* These are single function utilities that rely on
/* no external libraries or files
–––––––––––––––––––––––––––––––––––––––––––––––––– */
function arrayHasValues(checkArray) {
  return checkArray.filter(value => value && typeof value !== 'undefined');
}
function getBool(value) {
  return value === true || value === 'true' || value === 1 || parseInt(value, 10) === 1;
}

export { arrayHasValues as a, getBool as g };
