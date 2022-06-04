/**
 * testing JShint inline configuration
 * http://www.jshint.com/docs/#options
 *
 */


//#region AceDefaultOptions
/*
    options set in ace''s worker-javascript file:
 */
var boolOptions = {
    asi: true, // if automatic semicolon insertion should be tolerated
    bitwise: true, // if bitwise operators should not be allowed
    boss: true, // if advanced usage of assignments should be allowed
    browser: true, // if the standard browser globals should be predefined
    camelcase: true, // if identifiers should be required in camel case
    couch: true, // if CouchDB globals should be predefined
    curly: true, // if curly braces around all blocks should be required
    debug: true, // if debugger statements should be allowed
    devel: true, // if logging globals should be predefined (console, alert, etc.)
    dojo: true, // if Dojo Toolkit globals should be predefined
    eqeqeq: true, // if === should be required
    eqnull: true, // if == null comparisons should be tolerated
    notypeof: true, // if should report typos in typeof comparisons
    es3: true, // if ES3 syntax should be allowed
    es5: true, // if ES5 syntax should be allowed (is now set per default)
    esnext: true, // if es.next specific syntax should be allowed
    moz: true, // if mozilla specific syntax should be allowed
    evil: true, // if eval should be allowed
    expr: true, // if ExpressionStatement should be allowed as Programs
    forin: true, // if for in statements must filter
    funcscope: true, // if only function scope should be used for scope tests
    globalstrict: true, // if global  should be allowed (also enables 'strict')
    immed: true, // if immediate invocations must be wrapped in parens
    iterator: true, // if the `__iterator__` property should be allowed
    jquery: true, // if jQuery globals should be predefined
    lastsemic: true, // if semicolons may be ommitted for the trailing
    laxbreak: true, // if line breaks should not be checked
    laxcomma: true, // if line breaks should not be checked around commas
    loopfunc: true, // if functions should be allowed to be defined within
    mootools: true, // if MooTools globals should be predefined
    multistr: true, // allow multiline strings
    freeze: true, // if modifying native object prototypes should be disallowed
    newcap: true, // if constructor names must be capitalized
    noarg: true, // if arguments.caller and arguments.callee should be
    node: true, // if the Node.js environment globals should be
    noempty: true, // if empty blocks should be disallowed
    nonbsp: true, // if non-breaking spaces should be disallowed
    nonew: true, // if using `new` for side-effects should be disallowed
    nonstandard: true, // if non-standard (but widely adopted) globals should
    phantom: true, // if PhantomJS symbols should be allowed
    plusplus: true, // if increment/decrement should not be allowed
    proto: true, // if the `__proto__` property should be allowed
    prototypejs: true, // if Prototype and Scriptaculous globals should be
    rhino: true, // if the Rhino environment globals should be predefined
    shelljs: true, // if ShellJS globals should be predefined
    typed: true, // if typed array globals should be predefined
    undef: true, // if variables should be declared before used
    scripturl: true, // if script-targeted URLs should be tolerated
    strict: true, // require the  pragma
    sub: true, // if all forms of subscript notation are tolerated
    supernew: true, // if `new function () { ... };` and `new Object;`
    validthis: true, // if 'this' inside a non-constructor function is valid.
    withstmt: true, // if with statements should be allowed
    worker: true, // if Web Worker script symbols should be allowed
    wsh: true, // if the Windows Scripting Host environment globals
    yui: true, // YUI variables should be predefined
    mocha: true, // Mocha functions should be predefined
    noyield: true, // allow generators without a yield
    onecase: true, // if one case switch statements should be allowed
    regexp: true, // if the . should not be allowed in regexp literals
    regexdash: true // if unescaped first/last dash (-) inside brackets
},
valOptions = {
    maxlen: false,
    indent: false,
    maxerr: false,
    predef: false, // predef is deprecated and being replaced by globals
    globals: false,
    quotmark: false, // 'single'|'double'|true
    scope: false,
    maxstatements: false, // {int} max statements per function
    maxdepth: false, // {int} max nested block depth per function
    maxparams: false, // {int} max params per function
    maxcomplexity: false, // {int} max cyclomatic complexity per function
    shadow: false, // if variable shadowing should be tolerated
    unused: true, // warn if variables are unused. Available options:
    latedef: false, // warn if the variable is used before its definition
    ignore: false // start/end ignoring lines of code, bypassing the lexer
},
invertedOptions = {
    bitwise: true,
    forin: true,
    newcap: true,
    plusplus: true,
    regexp: true,
    undef: true,
    eqeqeq: true,
    strict: true
},
renamedOptions = {
    eqeq: "eqeqeq",
    windows: "wsh",
    sloppy: "strict"
},
removedOptions = {
    nomen: true,
    onevar: true,
    passfail: true,
    white: true,
    gcl: true,
    smarttabs: true,
    trailing: true
};
//#endregion


//#region tests


//LINE BELOW SETS INLINE OPTIONS: (can include as many times as needed in one file)
/* jshint laxcomma: false, unused: true, laxbreak:false */

//laxcomma (note, extra commas are allowed since eca5)
var laxComma = {
    a: 1,
    b: 2
};


//eqeqeq
if (x == null) {

}


/* jshint asi:false */
//-- setting asi to true will turn off missing semi colon errors
var x = {

}

/* jshint funcscope:false */
    function test() {
        if (true) {
            var x = 0;
        }

        x += 1; // Default: 'x' used out of scope.
        // No warning when funcscope:true
    }


    //#endregion
