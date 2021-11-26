(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[10],{

/***/ 109:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return isObject; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
function isObject(x) {
    return x !== null && typeof x === 'object';
}
//# sourceMappingURL=isObject.js.map


/***/ }),

/***/ 110:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return scheduleArray; });
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(15);
/* harmony import */ var _Subscription__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(22);
/** PURE_IMPORTS_START _Observable,_Subscription PURE_IMPORTS_END */


function scheduleArray(input, scheduler) {
    return new _Observable__WEBPACK_IMPORTED_MODULE_0__[/* Observable */ "a"](function (subscriber) {
        var sub = new _Subscription__WEBPACK_IMPORTED_MODULE_1__[/* Subscription */ "a"]();
        var i = 0;
        sub.add(scheduler.schedule(function () {
            if (i === input.length) {
                subscriber.complete();
                return;
            }
            subscriber.next(input[i++]);
            if (!subscriber.closed) {
                sub.add(this.schedule());
            }
        }));
        return sub;
    });
}
//# sourceMappingURL=scheduleArray.js.map


/***/ }),

/***/ 112:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ subscribeTo; });

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/subscribeToArray.js
var subscribeToArray = __webpack_require__(130);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/hostReportError.js
var hostReportError = __webpack_require__(65);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/subscribeToPromise.js
/** PURE_IMPORTS_START _hostReportError PURE_IMPORTS_END */

var subscribeToPromise = function (promise) {
    return function (subscriber) {
        promise.then(function (value) {
            if (!subscriber.closed) {
                subscriber.next(value);
                subscriber.complete();
            }
        }, function (err) { return subscriber.error(err); })
            .then(null, hostReportError["a" /* hostReportError */]);
        return subscriber;
    };
};
//# sourceMappingURL=subscribeToPromise.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/symbol/iterator.js
var symbol_iterator = __webpack_require__(72);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/subscribeToIterable.js
/** PURE_IMPORTS_START _symbol_iterator PURE_IMPORTS_END */

var subscribeToIterable = function (iterable) {
    return function (subscriber) {
        var iterator = iterable[symbol_iterator["a" /* iterator */]]();
        do {
            var item = void 0;
            try {
                item = iterator.next();
            }
            catch (err) {
                subscriber.error(err);
                return subscriber;
            }
            if (item.done) {
                subscriber.complete();
                break;
            }
            subscriber.next(item.value);
            if (subscriber.closed) {
                break;
            }
        } while (true);
        if (typeof iterator.return === 'function') {
            subscriber.add(function () {
                if (iterator.return) {
                    iterator.return();
                }
            });
        }
        return subscriber;
    };
};
//# sourceMappingURL=subscribeToIterable.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/symbol/observable.js
var observable = __webpack_require__(61);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/subscribeToObservable.js
/** PURE_IMPORTS_START _symbol_observable PURE_IMPORTS_END */

var subscribeToObservable = function (obj) {
    return function (subscriber) {
        var obs = obj[observable["a" /* observable */]]();
        if (typeof obs.subscribe !== 'function') {
            throw new TypeError('Provided object does not correctly implement Symbol.observable');
        }
        else {
            return obs.subscribe(subscriber);
        }
    };
};
//# sourceMappingURL=subscribeToObservable.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isArrayLike.js
var isArrayLike = __webpack_require__(129);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isPromise.js
var isPromise = __webpack_require__(131);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isObject.js
var isObject = __webpack_require__(109);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/subscribeTo.js
/** PURE_IMPORTS_START _subscribeToArray,_subscribeToPromise,_subscribeToIterable,_subscribeToObservable,_isArrayLike,_isPromise,_isObject,_symbol_iterator,_symbol_observable PURE_IMPORTS_END */









var subscribeTo = function (result) {
    if (!!result && typeof result[observable["a" /* observable */]] === 'function') {
        return subscribeToObservable(result);
    }
    else if (Object(isArrayLike["a" /* isArrayLike */])(result)) {
        return Object(subscribeToArray["a" /* subscribeToArray */])(result);
    }
    else if (Object(isPromise["a" /* isPromise */])(result)) {
        return subscribeToPromise(result);
    }
    else if (!!result && typeof result[symbol_iterator["a" /* iterator */]] === 'function') {
        return subscribeToIterable(result);
    }
    else {
        var value = Object(isObject["a" /* isObject */])(result) ? 'an invalid object' : "'" + result + "'";
        var msg = "You provided " + value + " where a stream was expected."
            + ' You can provide an Observable, Promise, Array, or Iterable.';
        throw new TypeError(msg);
    }
};
//# sourceMappingURL=subscribeTo.js.map


/***/ }),

/***/ 114:
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_FACTORY__, __WEBPACK_AMD_DEFINE_RESULT__;/**
 * lunr - http://lunrjs.com - A bit like Solr, but much smaller and not as bright - 2.3.9
 * Copyright (C) 2020 Oliver Nightingale
 * @license MIT
 */

;(function(){

/**
 * A convenience function for configuring and constructing
 * a new lunr Index.
 *
 * A lunr.Builder instance is created and the pipeline setup
 * with a trimmer, stop word filter and stemmer.
 *
 * This builder object is yielded to the configuration function
 * that is passed as a parameter, allowing the list of fields
 * and other builder parameters to be customised.
 *
 * All documents _must_ be added within the passed config function.
 *
 * @example
 * var idx = lunr(function () {
 *   this.field('title')
 *   this.field('body')
 *   this.ref('id')
 *
 *   documents.forEach(function (doc) {
 *     this.add(doc)
 *   }, this)
 * })
 *
 * @see {@link lunr.Builder}
 * @see {@link lunr.Pipeline}
 * @see {@link lunr.trimmer}
 * @see {@link lunr.stopWordFilter}
 * @see {@link lunr.stemmer}
 * @namespace {function} lunr
 */
var lunr = function (config) {
  var builder = new lunr.Builder

  builder.pipeline.add(
    lunr.trimmer,
    lunr.stopWordFilter,
    lunr.stemmer
  )

  builder.searchPipeline.add(
    lunr.stemmer
  )

  config.call(builder, builder)
  return builder.build()
}

lunr.version = "2.3.9"
/*!
 * lunr.utils
 * Copyright (C) 2020 Oliver Nightingale
 */

/**
 * A namespace containing utils for the rest of the lunr library
 * @namespace lunr.utils
 */
lunr.utils = {}

/**
 * Print a warning message to the console.
 *
 * @param {String} message The message to be printed.
 * @memberOf lunr.utils
 * @function
 */
lunr.utils.warn = (function (global) {
  /* eslint-disable no-console */
  return function (message) {
    if (global.console && console.warn) {
      console.warn(message)
    }
  }
  /* eslint-enable no-console */
})(this)

/**
 * Convert an object to a string.
 *
 * In the case of `null` and `undefined` the function returns
 * the empty string, in all other cases the result of calling
 * `toString` on the passed object is returned.
 *
 * @param {Any} obj The object to convert to a string.
 * @return {String} string representation of the passed object.
 * @memberOf lunr.utils
 */
lunr.utils.asString = function (obj) {
  if (obj === void 0 || obj === null) {
    return ""
  } else {
    return obj.toString()
  }
}

/**
 * Clones an object.
 *
 * Will create a copy of an existing object such that any mutations
 * on the copy cannot affect the original.
 *
 * Only shallow objects are supported, passing a nested object to this
 * function will cause a TypeError.
 *
 * Objects with primitives, and arrays of primitives are supported.
 *
 * @param {Object} obj The object to clone.
 * @return {Object} a clone of the passed object.
 * @throws {TypeError} when a nested object is passed.
 * @memberOf Utils
 */
lunr.utils.clone = function (obj) {
  if (obj === null || obj === undefined) {
    return obj
  }

  var clone = Object.create(null),
      keys = Object.keys(obj)

  for (var i = 0; i < keys.length; i++) {
    var key = keys[i],
        val = obj[key]

    if (Array.isArray(val)) {
      clone[key] = val.slice()
      continue
    }

    if (typeof val === 'string' ||
        typeof val === 'number' ||
        typeof val === 'boolean') {
      clone[key] = val
      continue
    }

    throw new TypeError("clone is not deep and does not support nested objects")
  }

  return clone
}
lunr.FieldRef = function (docRef, fieldName, stringValue) {
  this.docRef = docRef
  this.fieldName = fieldName
  this._stringValue = stringValue
}

lunr.FieldRef.joiner = "/"

lunr.FieldRef.fromString = function (s) {
  var n = s.indexOf(lunr.FieldRef.joiner)

  if (n === -1) {
    throw "malformed field ref string"
  }

  var fieldRef = s.slice(0, n),
      docRef = s.slice(n + 1)

  return new lunr.FieldRef (docRef, fieldRef, s)
}

lunr.FieldRef.prototype.toString = function () {
  if (this._stringValue == undefined) {
    this._stringValue = this.fieldName + lunr.FieldRef.joiner + this.docRef
  }

  return this._stringValue
}
/*!
 * lunr.Set
 * Copyright (C) 2020 Oliver Nightingale
 */

/**
 * A lunr set.
 *
 * @constructor
 */
lunr.Set = function (elements) {
  this.elements = Object.create(null)

  if (elements) {
    this.length = elements.length

    for (var i = 0; i < this.length; i++) {
      this.elements[elements[i]] = true
    }
  } else {
    this.length = 0
  }
}

/**
 * A complete set that contains all elements.
 *
 * @static
 * @readonly
 * @type {lunr.Set}
 */
lunr.Set.complete = {
  intersect: function (other) {
    return other
  },

  union: function () {
    return this
  },

  contains: function () {
    return true
  }
}

/**
 * An empty set that contains no elements.
 *
 * @static
 * @readonly
 * @type {lunr.Set}
 */
lunr.Set.empty = {
  intersect: function () {
    return this
  },

  union: function (other) {
    return other
  },

  contains: function () {
    return false
  }
}

/**
 * Returns true if this set contains the specified object.
 *
 * @param {object} object - Object whose presence in this set is to be tested.
 * @returns {boolean} - True if this set contains the specified object.
 */
lunr.Set.prototype.contains = function (object) {
  return !!this.elements[object]
}

/**
 * Returns a new set containing only the elements that are present in both
 * this set and the specified set.
 *
 * @param {lunr.Set} other - set to intersect with this set.
 * @returns {lunr.Set} a new set that is the intersection of this and the specified set.
 */

lunr.Set.prototype.intersect = function (other) {
  var a, b, elements, intersection = []

  if (other === lunr.Set.complete) {
    return this
  }

  if (other === lunr.Set.empty) {
    return other
  }

  if (this.length < other.length) {
    a = this
    b = other
  } else {
    a = other
    b = this
  }

  elements = Object.keys(a.elements)

  for (var i = 0; i < elements.length; i++) {
    var element = elements[i]
    if (element in b.elements) {
      intersection.push(element)
    }
  }

  return new lunr.Set (intersection)
}

/**
 * Returns a new set combining the elements of this and the specified set.
 *
 * @param {lunr.Set} other - set to union with this set.
 * @return {lunr.Set} a new set that is the union of this and the specified set.
 */

lunr.Set.prototype.union = function (other) {
  if (other === lunr.Set.complete) {
    return lunr.Set.complete
  }

  if (other === lunr.Set.empty) {
    return this
  }

  return new lunr.Set(Object.keys(this.elements).concat(Object.keys(other.elements)))
}
/**
 * A function to calculate the inverse document frequency for
 * a posting. This is shared between the builder and the index
 *
 * @private
 * @param {object} posting - The posting for a given term
 * @param {number} documentCount - The total number of documents.
 */
lunr.idf = function (posting, documentCount) {
  var documentsWithTerm = 0

  for (var fieldName in posting) {
    if (fieldName == '_index') continue // Ignore the term index, its not a field
    documentsWithTerm += Object.keys(posting[fieldName]).length
  }

  var x = (documentCount - documentsWithTerm + 0.5) / (documentsWithTerm + 0.5)

  return Math.log(1 + Math.abs(x))
}

/**
 * A token wraps a string representation of a token
 * as it is passed through the text processing pipeline.
 *
 * @constructor
 * @param {string} [str=''] - The string token being wrapped.
 * @param {object} [metadata={}] - Metadata associated with this token.
 */
lunr.Token = function (str, metadata) {
  this.str = str || ""
  this.metadata = metadata || {}
}

/**
 * Returns the token string that is being wrapped by this object.
 *
 * @returns {string}
 */
lunr.Token.prototype.toString = function () {
  return this.str
}

/**
 * A token update function is used when updating or optionally
 * when cloning a token.
 *
 * @callback lunr.Token~updateFunction
 * @param {string} str - The string representation of the token.
 * @param {Object} metadata - All metadata associated with this token.
 */

/**
 * Applies the given function to the wrapped string token.
 *
 * @example
 * token.update(function (str, metadata) {
 *   return str.toUpperCase()
 * })
 *
 * @param {lunr.Token~updateFunction} fn - A function to apply to the token string.
 * @returns {lunr.Token}
 */
lunr.Token.prototype.update = function (fn) {
  this.str = fn(this.str, this.metadata)
  return this
}

/**
 * Creates a clone of this token. Optionally a function can be
 * applied to the cloned token.
 *
 * @param {lunr.Token~updateFunction} [fn] - An optional function to apply to the cloned token.
 * @returns {lunr.Token}
 */
lunr.Token.prototype.clone = function (fn) {
  fn = fn || function (s) { return s }
  return new lunr.Token (fn(this.str, this.metadata), this.metadata)
}
/*!
 * lunr.tokenizer
 * Copyright (C) 2020 Oliver Nightingale
 */

/**
 * A function for splitting a string into tokens ready to be inserted into
 * the search index. Uses `lunr.tokenizer.separator` to split strings, change
 * the value of this property to change how strings are split into tokens.
 *
 * This tokenizer will convert its parameter to a string by calling `toString` and
 * then will split this string on the character in `lunr.tokenizer.separator`.
 * Arrays will have their elements converted to strings and wrapped in a lunr.Token.
 *
 * Optional metadata can be passed to the tokenizer, this metadata will be cloned and
 * added as metadata to every token that is created from the object to be tokenized.
 *
 * @static
 * @param {?(string|object|object[])} obj - The object to convert into tokens
 * @param {?object} metadata - Optional metadata to associate with every token
 * @returns {lunr.Token[]}
 * @see {@link lunr.Pipeline}
 */
lunr.tokenizer = function (obj, metadata) {
  if (obj == null || obj == undefined) {
    return []
  }

  if (Array.isArray(obj)) {
    return obj.map(function (t) {
      return new lunr.Token(
        lunr.utils.asString(t).toLowerCase(),
        lunr.utils.clone(metadata)
      )
    })
  }

  var str = obj.toString().toLowerCase(),
      len = str.length,
      tokens = []

  for (var sliceEnd = 0, sliceStart = 0; sliceEnd <= len; sliceEnd++) {
    var char = str.charAt(sliceEnd),
        sliceLength = sliceEnd - sliceStart

    if ((char.match(lunr.tokenizer.separator) || sliceEnd == len)) {

      if (sliceLength > 0) {
        var tokenMetadata = lunr.utils.clone(metadata) || {}
        tokenMetadata["position"] = [sliceStart, sliceLength]
        tokenMetadata["index"] = tokens.length

        tokens.push(
          new lunr.Token (
            str.slice(sliceStart, sliceEnd),
            tokenMetadata
          )
        )
      }

      sliceStart = sliceEnd + 1
    }

  }

  return tokens
}

/**
 * The separator used to split a string into tokens. Override this property to change the behaviour of
 * `lunr.tokenizer` behaviour when tokenizing strings. By default this splits on whitespace and hyphens.
 *
 * @static
 * @see lunr.tokenizer
 */
lunr.tokenizer.separator = /[\s\-]+/
/*!
 * lunr.Pipeline
 * Copyright (C) 2020 Oliver Nightingale
 */

/**
 * lunr.Pipelines maintain an ordered list of functions to be applied to all
 * tokens in documents entering the search index and queries being ran against
 * the index.
 *
 * An instance of lunr.Index created with the lunr shortcut will contain a
 * pipeline with a stop word filter and an English language stemmer. Extra
 * functions can be added before or after either of these functions or these
 * default functions can be removed.
 *
 * When run the pipeline will call each function in turn, passing a token, the
 * index of that token in the original list of all tokens and finally a list of
 * all the original tokens.
 *
 * The output of functions in the pipeline will be passed to the next function
 * in the pipeline. To exclude a token from entering the index the function
 * should return undefined, the rest of the pipeline will not be called with
 * this token.
 *
 * For serialisation of pipelines to work, all functions used in an instance of
 * a pipeline should be registered with lunr.Pipeline. Registered functions can
 * then be loaded. If trying to load a serialised pipeline that uses functions
 * that are not registered an error will be thrown.
 *
 * If not planning on serialising the pipeline then registering pipeline functions
 * is not necessary.
 *
 * @constructor
 */
lunr.Pipeline = function () {
  this._stack = []
}

lunr.Pipeline.registeredFunctions = Object.create(null)

/**
 * A pipeline function maps lunr.Token to lunr.Token. A lunr.Token contains the token
 * string as well as all known metadata. A pipeline function can mutate the token string
 * or mutate (or add) metadata for a given token.
 *
 * A pipeline function can indicate that the passed token should be discarded by returning
 * null, undefined or an empty string. This token will not be passed to any downstream pipeline
 * functions and will not be added to the index.
 *
 * Multiple tokens can be returned by returning an array of tokens. Each token will be passed
 * to any downstream pipeline functions and all will returned tokens will be added to the index.
 *
 * Any number of pipeline functions may be chained together using a lunr.Pipeline.
 *
 * @interface lunr.PipelineFunction
 * @param {lunr.Token} token - A token from the document being processed.
 * @param {number} i - The index of this token in the complete list of tokens for this document/field.
 * @param {lunr.Token[]} tokens - All tokens for this document/field.
 * @returns {(?lunr.Token|lunr.Token[])}
 */

/**
 * Register a function with the pipeline.
 *
 * Functions that are used in the pipeline should be registered if the pipeline
 * needs to be serialised, or a serialised pipeline needs to be loaded.
 *
 * Registering a function does not add it to a pipeline, functions must still be
 * added to instances of the pipeline for them to be used when running a pipeline.
 *
 * @param {lunr.PipelineFunction} fn - The function to check for.
 * @param {String} label - The label to register this function with
 */
lunr.Pipeline.registerFunction = function (fn, label) {
  if (label in this.registeredFunctions) {
    lunr.utils.warn('Overwriting existing registered function: ' + label)
  }

  fn.label = label
  lunr.Pipeline.registeredFunctions[fn.label] = fn
}

/**
 * Warns if the function is not registered as a Pipeline function.
 *
 * @param {lunr.PipelineFunction} fn - The function to check for.
 * @private
 */
lunr.Pipeline.warnIfFunctionNotRegistered = function (fn) {
  var isRegistered = fn.label && (fn.label in this.registeredFunctions)

  if (!isRegistered) {
    lunr.utils.warn('Function is not registered with pipeline. This may cause problems when serialising the index.\n', fn)
  }
}

/**
 * Loads a previously serialised pipeline.
 *
 * All functions to be loaded must already be registered with lunr.Pipeline.
 * If any function from the serialised data has not been registered then an
 * error will be thrown.
 *
 * @param {Object} serialised - The serialised pipeline to load.
 * @returns {lunr.Pipeline}
 */
lunr.Pipeline.load = function (serialised) {
  var pipeline = new lunr.Pipeline

  serialised.forEach(function (fnName) {
    var fn = lunr.Pipeline.registeredFunctions[fnName]

    if (fn) {
      pipeline.add(fn)
    } else {
      throw new Error('Cannot load unregistered function: ' + fnName)
    }
  })

  return pipeline
}

/**
 * Adds new functions to the end of the pipeline.
 *
 * Logs a warning if the function has not been registered.
 *
 * @param {lunr.PipelineFunction[]} functions - Any number of functions to add to the pipeline.
 */
lunr.Pipeline.prototype.add = function () {
  var fns = Array.prototype.slice.call(arguments)

  fns.forEach(function (fn) {
    lunr.Pipeline.warnIfFunctionNotRegistered(fn)
    this._stack.push(fn)
  }, this)
}

/**
 * Adds a single function after a function that already exists in the
 * pipeline.
 *
 * Logs a warning if the function has not been registered.
 *
 * @param {lunr.PipelineFunction} existingFn - A function that already exists in the pipeline.
 * @param {lunr.PipelineFunction} newFn - The new function to add to the pipeline.
 */
lunr.Pipeline.prototype.after = function (existingFn, newFn) {
  lunr.Pipeline.warnIfFunctionNotRegistered(newFn)

  var pos = this._stack.indexOf(existingFn)
  if (pos == -1) {
    throw new Error('Cannot find existingFn')
  }

  pos = pos + 1
  this._stack.splice(pos, 0, newFn)
}

/**
 * Adds a single function before a function that already exists in the
 * pipeline.
 *
 * Logs a warning if the function has not been registered.
 *
 * @param {lunr.PipelineFunction} existingFn - A function that already exists in the pipeline.
 * @param {lunr.PipelineFunction} newFn - The new function to add to the pipeline.
 */
lunr.Pipeline.prototype.before = function (existingFn, newFn) {
  lunr.Pipeline.warnIfFunctionNotRegistered(newFn)

  var pos = this._stack.indexOf(existingFn)
  if (pos == -1) {
    throw new Error('Cannot find existingFn')
  }

  this._stack.splice(pos, 0, newFn)
}

/**
 * Removes a function from the pipeline.
 *
 * @param {lunr.PipelineFunction} fn The function to remove from the pipeline.
 */
lunr.Pipeline.prototype.remove = function (fn) {
  var pos = this._stack.indexOf(fn)
  if (pos == -1) {
    return
  }

  this._stack.splice(pos, 1)
}

/**
 * Runs the current list of functions that make up the pipeline against the
 * passed tokens.
 *
 * @param {Array} tokens The tokens to run through the pipeline.
 * @returns {Array}
 */
lunr.Pipeline.prototype.run = function (tokens) {
  var stackLength = this._stack.length

  for (var i = 0; i < stackLength; i++) {
    var fn = this._stack[i]
    var memo = []

    for (var j = 0; j < tokens.length; j++) {
      var result = fn(tokens[j], j, tokens)

      if (result === null || result === void 0 || result === '') continue

      if (Array.isArray(result)) {
        for (var k = 0; k < result.length; k++) {
          memo.push(result[k])
        }
      } else {
        memo.push(result)
      }
    }

    tokens = memo
  }

  return tokens
}

/**
 * Convenience method for passing a string through a pipeline and getting
 * strings out. This method takes care of wrapping the passed string in a
 * token and mapping the resulting tokens back to strings.
 *
 * @param {string} str - The string to pass through the pipeline.
 * @param {?object} metadata - Optional metadata to associate with the token
 * passed to the pipeline.
 * @returns {string[]}
 */
lunr.Pipeline.prototype.runString = function (str, metadata) {
  var token = new lunr.Token (str, metadata)

  return this.run([token]).map(function (t) {
    return t.toString()
  })
}

/**
 * Resets the pipeline by removing any existing processors.
 *
 */
lunr.Pipeline.prototype.reset = function () {
  this._stack = []
}

/**
 * Returns a representation of the pipeline ready for serialisation.
 *
 * Logs a warning if the function has not been registered.
 *
 * @returns {Array}
 */
lunr.Pipeline.prototype.toJSON = function () {
  return this._stack.map(function (fn) {
    lunr.Pipeline.warnIfFunctionNotRegistered(fn)

    return fn.label
  })
}
/*!
 * lunr.Vector
 * Copyright (C) 2020 Oliver Nightingale
 */

/**
 * A vector is used to construct the vector space of documents and queries. These
 * vectors support operations to determine the similarity between two documents or
 * a document and a query.
 *
 * Normally no parameters are required for initializing a vector, but in the case of
 * loading a previously dumped vector the raw elements can be provided to the constructor.
 *
 * For performance reasons vectors are implemented with a flat array, where an elements
 * index is immediately followed by its value. E.g. [index, value, index, value]. This
 * allows the underlying array to be as sparse as possible and still offer decent
 * performance when being used for vector calculations.
 *
 * @constructor
 * @param {Number[]} [elements] - The flat list of element index and element value pairs.
 */
lunr.Vector = function (elements) {
  this._magnitude = 0
  this.elements = elements || []
}


/**
 * Calculates the position within the vector to insert a given index.
 *
 * This is used internally by insert and upsert. If there are duplicate indexes then
 * the position is returned as if the value for that index were to be updated, but it
 * is the callers responsibility to check whether there is a duplicate at that index
 *
 * @param {Number} insertIdx - The index at which the element should be inserted.
 * @returns {Number}
 */
lunr.Vector.prototype.positionForIndex = function (index) {
  // For an empty vector the tuple can be inserted at the beginning
  if (this.elements.length == 0) {
    return 0
  }

  var start = 0,
      end = this.elements.length / 2,
      sliceLength = end - start,
      pivotPoint = Math.floor(sliceLength / 2),
      pivotIndex = this.elements[pivotPoint * 2]

  while (sliceLength > 1) {
    if (pivotIndex < index) {
      start = pivotPoint
    }

    if (pivotIndex > index) {
      end = pivotPoint
    }

    if (pivotIndex == index) {
      break
    }

    sliceLength = end - start
    pivotPoint = start + Math.floor(sliceLength / 2)
    pivotIndex = this.elements[pivotPoint * 2]
  }

  if (pivotIndex == index) {
    return pivotPoint * 2
  }

  if (pivotIndex > index) {
    return pivotPoint * 2
  }

  if (pivotIndex < index) {
    return (pivotPoint + 1) * 2
  }
}

/**
 * Inserts an element at an index within the vector.
 *
 * Does not allow duplicates, will throw an error if there is already an entry
 * for this index.
 *
 * @param {Number} insertIdx - The index at which the element should be inserted.
 * @param {Number} val - The value to be inserted into the vector.
 */
lunr.Vector.prototype.insert = function (insertIdx, val) {
  this.upsert(insertIdx, val, function () {
    throw "duplicate index"
  })
}

/**
 * Inserts or updates an existing index within the vector.
 *
 * @param {Number} insertIdx - The index at which the element should be inserted.
 * @param {Number} val - The value to be inserted into the vector.
 * @param {function} fn - A function that is called for updates, the existing value and the
 * requested value are passed as arguments
 */
lunr.Vector.prototype.upsert = function (insertIdx, val, fn) {
  this._magnitude = 0
  var position = this.positionForIndex(insertIdx)

  if (this.elements[position] == insertIdx) {
    this.elements[position + 1] = fn(this.elements[position + 1], val)
  } else {
    this.elements.splice(position, 0, insertIdx, val)
  }
}

/**
 * Calculates the magnitude of this vector.
 *
 * @returns {Number}
 */
lunr.Vector.prototype.magnitude = function () {
  if (this._magnitude) return this._magnitude

  var sumOfSquares = 0,
      elementsLength = this.elements.length

  for (var i = 1; i < elementsLength; i += 2) {
    var val = this.elements[i]
    sumOfSquares += val * val
  }

  return this._magnitude = Math.sqrt(sumOfSquares)
}

/**
 * Calculates the dot product of this vector and another vector.
 *
 * @param {lunr.Vector} otherVector - The vector to compute the dot product with.
 * @returns {Number}
 */
lunr.Vector.prototype.dot = function (otherVector) {
  var dotProduct = 0,
      a = this.elements, b = otherVector.elements,
      aLen = a.length, bLen = b.length,
      aVal = 0, bVal = 0,
      i = 0, j = 0

  while (i < aLen && j < bLen) {
    aVal = a[i], bVal = b[j]
    if (aVal < bVal) {
      i += 2
    } else if (aVal > bVal) {
      j += 2
    } else if (aVal == bVal) {
      dotProduct += a[i + 1] * b[j + 1]
      i += 2
      j += 2
    }
  }

  return dotProduct
}

/**
 * Calculates the similarity between this vector and another vector.
 *
 * @param {lunr.Vector} otherVector - The other vector to calculate the
 * similarity with.
 * @returns {Number}
 */
lunr.Vector.prototype.similarity = function (otherVector) {
  return this.dot(otherVector) / this.magnitude() || 0
}

/**
 * Converts the vector to an array of the elements within the vector.
 *
 * @returns {Number[]}
 */
lunr.Vector.prototype.toArray = function () {
  var output = new Array (this.elements.length / 2)

  for (var i = 1, j = 0; i < this.elements.length; i += 2, j++) {
    output[j] = this.elements[i]
  }

  return output
}

/**
 * A JSON serializable representation of the vector.
 *
 * @returns {Number[]}
 */
lunr.Vector.prototype.toJSON = function () {
  return this.elements
}
/* eslint-disable */
/*!
 * lunr.stemmer
 * Copyright (C) 2020 Oliver Nightingale
 * Includes code from - http://tartarus.org/~martin/PorterStemmer/js.txt
 */

/**
 * lunr.stemmer is an english language stemmer, this is a JavaScript
 * implementation of the PorterStemmer taken from http://tartarus.org/~martin
 *
 * @static
 * @implements {lunr.PipelineFunction}
 * @param {lunr.Token} token - The string to stem
 * @returns {lunr.Token}
 * @see {@link lunr.Pipeline}
 * @function
 */
lunr.stemmer = (function(){
  var step2list = {
      "ational" : "ate",
      "tional" : "tion",
      "enci" : "ence",
      "anci" : "ance",
      "izer" : "ize",
      "bli" : "ble",
      "alli" : "al",
      "entli" : "ent",
      "eli" : "e",
      "ousli" : "ous",
      "ization" : "ize",
      "ation" : "ate",
      "ator" : "ate",
      "alism" : "al",
      "iveness" : "ive",
      "fulness" : "ful",
      "ousness" : "ous",
      "aliti" : "al",
      "iviti" : "ive",
      "biliti" : "ble",
      "logi" : "log"
    },

    step3list = {
      "icate" : "ic",
      "ative" : "",
      "alize" : "al",
      "iciti" : "ic",
      "ical" : "ic",
      "ful" : "",
      "ness" : ""
    },

    c = "[^aeiou]",          // consonant
    v = "[aeiouy]",          // vowel
    C = c + "[^aeiouy]*",    // consonant sequence
    V = v + "[aeiou]*",      // vowel sequence

    mgr0 = "^(" + C + ")?" + V + C,               // [C]VC... is m>0
    meq1 = "^(" + C + ")?" + V + C + "(" + V + ")?$",  // [C]VC[V] is m=1
    mgr1 = "^(" + C + ")?" + V + C + V + C,       // [C]VCVC... is m>1
    s_v = "^(" + C + ")?" + v;                   // vowel in stem

  var re_mgr0 = new RegExp(mgr0);
  var re_mgr1 = new RegExp(mgr1);
  var re_meq1 = new RegExp(meq1);
  var re_s_v = new RegExp(s_v);

  var re_1a = /^(.+?)(ss|i)es$/;
  var re2_1a = /^(.+?)([^s])s$/;
  var re_1b = /^(.+?)eed$/;
  var re2_1b = /^(.+?)(ed|ing)$/;
  var re_1b_2 = /.$/;
  var re2_1b_2 = /(at|bl|iz)$/;
  var re3_1b_2 = new RegExp("([^aeiouylsz])\\1$");
  var re4_1b_2 = new RegExp("^" + C + v + "[^aeiouwxy]$");

  var re_1c = /^(.+?[^aeiou])y$/;
  var re_2 = /^(.+?)(ational|tional|enci|anci|izer|bli|alli|entli|eli|ousli|ization|ation|ator|alism|iveness|fulness|ousness|aliti|iviti|biliti|logi)$/;

  var re_3 = /^(.+?)(icate|ative|alize|iciti|ical|ful|ness)$/;

  var re_4 = /^(.+?)(al|ance|ence|er|ic|able|ible|ant|ement|ment|ent|ou|ism|ate|iti|ous|ive|ize)$/;
  var re2_4 = /^(.+?)(s|t)(ion)$/;

  var re_5 = /^(.+?)e$/;
  var re_5_1 = /ll$/;
  var re3_5 = new RegExp("^" + C + v + "[^aeiouwxy]$");

  var porterStemmer = function porterStemmer(w) {
    var stem,
      suffix,
      firstch,
      re,
      re2,
      re3,
      re4;

    if (w.length < 3) { return w; }

    firstch = w.substr(0,1);
    if (firstch == "y") {
      w = firstch.toUpperCase() + w.substr(1);
    }

    // Step 1a
    re = re_1a
    re2 = re2_1a;

    if (re.test(w)) { w = w.replace(re,"$1$2"); }
    else if (re2.test(w)) { w = w.replace(re2,"$1$2"); }

    // Step 1b
    re = re_1b;
    re2 = re2_1b;
    if (re.test(w)) {
      var fp = re.exec(w);
      re = re_mgr0;
      if (re.test(fp[1])) {
        re = re_1b_2;
        w = w.replace(re,"");
      }
    } else if (re2.test(w)) {
      var fp = re2.exec(w);
      stem = fp[1];
      re2 = re_s_v;
      if (re2.test(stem)) {
        w = stem;
        re2 = re2_1b_2;
        re3 = re3_1b_2;
        re4 = re4_1b_2;
        if (re2.test(w)) { w = w + "e"; }
        else if (re3.test(w)) { re = re_1b_2; w = w.replace(re,""); }
        else if (re4.test(w)) { w = w + "e"; }
      }
    }

    // Step 1c - replace suffix y or Y by i if preceded by a non-vowel which is not the first letter of the word (so cry -> cri, by -> by, say -> say)
    re = re_1c;
    if (re.test(w)) {
      var fp = re.exec(w);
      stem = fp[1];
      w = stem + "i";
    }

    // Step 2
    re = re_2;
    if (re.test(w)) {
      var fp = re.exec(w);
      stem = fp[1];
      suffix = fp[2];
      re = re_mgr0;
      if (re.test(stem)) {
        w = stem + step2list[suffix];
      }
    }

    // Step 3
    re = re_3;
    if (re.test(w)) {
      var fp = re.exec(w);
      stem = fp[1];
      suffix = fp[2];
      re = re_mgr0;
      if (re.test(stem)) {
        w = stem + step3list[suffix];
      }
    }

    // Step 4
    re = re_4;
    re2 = re2_4;
    if (re.test(w)) {
      var fp = re.exec(w);
      stem = fp[1];
      re = re_mgr1;
      if (re.test(stem)) {
        w = stem;
      }
    } else if (re2.test(w)) {
      var fp = re2.exec(w);
      stem = fp[1] + fp[2];
      re2 = re_mgr1;
      if (re2.test(stem)) {
        w = stem;
      }
    }

    // Step 5
    re = re_5;
    if (re.test(w)) {
      var fp = re.exec(w);
      stem = fp[1];
      re = re_mgr1;
      re2 = re_meq1;
      re3 = re3_5;
      if (re.test(stem) || (re2.test(stem) && !(re3.test(stem)))) {
        w = stem;
      }
    }

    re = re_5_1;
    re2 = re_mgr1;
    if (re.test(w) && re2.test(w)) {
      re = re_1b_2;
      w = w.replace(re,"");
    }

    // and turn initial Y back to y

    if (firstch == "y") {
      w = firstch.toLowerCase() + w.substr(1);
    }

    return w;
  };

  return function (token) {
    return token.update(porterStemmer);
  }
})();

lunr.Pipeline.registerFunction(lunr.stemmer, 'stemmer')
/*!
 * lunr.stopWordFilter
 * Copyright (C) 2020 Oliver Nightingale
 */

/**
 * lunr.generateStopWordFilter builds a stopWordFilter function from the provided
 * list of stop words.
 *
 * The built in lunr.stopWordFilter is built using this generator and can be used
 * to generate custom stopWordFilters for applications or non English languages.
 *
 * @function
 * @param {Array} token The token to pass through the filter
 * @returns {lunr.PipelineFunction}
 * @see lunr.Pipeline
 * @see lunr.stopWordFilter
 */
lunr.generateStopWordFilter = function (stopWords) {
  var words = stopWords.reduce(function (memo, stopWord) {
    memo[stopWord] = stopWord
    return memo
  }, {})

  return function (token) {
    if (token && words[token.toString()] !== token.toString()) return token
  }
}

/**
 * lunr.stopWordFilter is an English language stop word list filter, any words
 * contained in the list will not be passed through the filter.
 *
 * This is intended to be used in the Pipeline. If the token does not pass the
 * filter then undefined will be returned.
 *
 * @function
 * @implements {lunr.PipelineFunction}
 * @params {lunr.Token} token - A token to check for being a stop word.
 * @returns {lunr.Token}
 * @see {@link lunr.Pipeline}
 */
lunr.stopWordFilter = lunr.generateStopWordFilter([
  'a',
  'able',
  'about',
  'across',
  'after',
  'all',
  'almost',
  'also',
  'am',
  'among',
  'an',
  'and',
  'any',
  'are',
  'as',
  'at',
  'be',
  'because',
  'been',
  'but',
  'by',
  'can',
  'cannot',
  'could',
  'dear',
  'did',
  'do',
  'does',
  'either',
  'else',
  'ever',
  'every',
  'for',
  'from',
  'get',
  'got',
  'had',
  'has',
  'have',
  'he',
  'her',
  'hers',
  'him',
  'his',
  'how',
  'however',
  'i',
  'if',
  'in',
  'into',
  'is',
  'it',
  'its',
  'just',
  'least',
  'let',
  'like',
  'likely',
  'may',
  'me',
  'might',
  'most',
  'must',
  'my',
  'neither',
  'no',
  'nor',
  'not',
  'of',
  'off',
  'often',
  'on',
  'only',
  'or',
  'other',
  'our',
  'own',
  'rather',
  'said',
  'say',
  'says',
  'she',
  'should',
  'since',
  'so',
  'some',
  'than',
  'that',
  'the',
  'their',
  'them',
  'then',
  'there',
  'these',
  'they',
  'this',
  'tis',
  'to',
  'too',
  'twas',
  'us',
  'wants',
  'was',
  'we',
  'were',
  'what',
  'when',
  'where',
  'which',
  'while',
  'who',
  'whom',
  'why',
  'will',
  'with',
  'would',
  'yet',
  'you',
  'your'
])

lunr.Pipeline.registerFunction(lunr.stopWordFilter, 'stopWordFilter')
/*!
 * lunr.trimmer
 * Copyright (C) 2020 Oliver Nightingale
 */

/**
 * lunr.trimmer is a pipeline function for trimming non word
 * characters from the beginning and end of tokens before they
 * enter the index.
 *
 * This implementation may not work correctly for non latin
 * characters and should either be removed or adapted for use
 * with languages with non-latin characters.
 *
 * @static
 * @implements {lunr.PipelineFunction}
 * @param {lunr.Token} token The token to pass through the filter
 * @returns {lunr.Token}
 * @see lunr.Pipeline
 */
lunr.trimmer = function (token) {
  return token.update(function (s) {
    return s.replace(/^\W+/, '').replace(/\W+$/, '')
  })
}

lunr.Pipeline.registerFunction(lunr.trimmer, 'trimmer')
/*!
 * lunr.TokenSet
 * Copyright (C) 2020 Oliver Nightingale
 */

/**
 * A token set is used to store the unique list of all tokens
 * within an index. Token sets are also used to represent an
 * incoming query to the index, this query token set and index
 * token set are then intersected to find which tokens to look
 * up in the inverted index.
 *
 * A token set can hold multiple tokens, as in the case of the
 * index token set, or it can hold a single token as in the
 * case of a simple query token set.
 *
 * Additionally token sets are used to perform wildcard matching.
 * Leading, contained and trailing wildcards are supported, and
 * from this edit distance matching can also be provided.
 *
 * Token sets are implemented as a minimal finite state automata,
 * where both common prefixes and suffixes are shared between tokens.
 * This helps to reduce the space used for storing the token set.
 *
 * @constructor
 */
lunr.TokenSet = function () {
  this.final = false
  this.edges = {}
  this.id = lunr.TokenSet._nextId
  lunr.TokenSet._nextId += 1
}

/**
 * Keeps track of the next, auto increment, identifier to assign
 * to a new tokenSet.
 *
 * TokenSets require a unique identifier to be correctly minimised.
 *
 * @private
 */
lunr.TokenSet._nextId = 1

/**
 * Creates a TokenSet instance from the given sorted array of words.
 *
 * @param {String[]} arr - A sorted array of strings to create the set from.
 * @returns {lunr.TokenSet}
 * @throws Will throw an error if the input array is not sorted.
 */
lunr.TokenSet.fromArray = function (arr) {
  var builder = new lunr.TokenSet.Builder

  for (var i = 0, len = arr.length; i < len; i++) {
    builder.insert(arr[i])
  }

  builder.finish()
  return builder.root
}

/**
 * Creates a token set from a query clause.
 *
 * @private
 * @param {Object} clause - A single clause from lunr.Query.
 * @param {string} clause.term - The query clause term.
 * @param {number} [clause.editDistance] - The optional edit distance for the term.
 * @returns {lunr.TokenSet}
 */
lunr.TokenSet.fromClause = function (clause) {
  if ('editDistance' in clause) {
    return lunr.TokenSet.fromFuzzyString(clause.term, clause.editDistance)
  } else {
    return lunr.TokenSet.fromString(clause.term)
  }
}

/**
 * Creates a token set representing a single string with a specified
 * edit distance.
 *
 * Insertions, deletions, substitutions and transpositions are each
 * treated as an edit distance of 1.
 *
 * Increasing the allowed edit distance will have a dramatic impact
 * on the performance of both creating and intersecting these TokenSets.
 * It is advised to keep the edit distance less than 3.
 *
 * @param {string} str - The string to create the token set from.
 * @param {number} editDistance - The allowed edit distance to match.
 * @returns {lunr.Vector}
 */
lunr.TokenSet.fromFuzzyString = function (str, editDistance) {
  var root = new lunr.TokenSet

  var stack = [{
    node: root,
    editsRemaining: editDistance,
    str: str
  }]

  while (stack.length) {
    var frame = stack.pop()

    // no edit
    if (frame.str.length > 0) {
      var char = frame.str.charAt(0),
          noEditNode

      if (char in frame.node.edges) {
        noEditNode = frame.node.edges[char]
      } else {
        noEditNode = new lunr.TokenSet
        frame.node.edges[char] = noEditNode
      }

      if (frame.str.length == 1) {
        noEditNode.final = true
      }

      stack.push({
        node: noEditNode,
        editsRemaining: frame.editsRemaining,
        str: frame.str.slice(1)
      })
    }

    if (frame.editsRemaining == 0) {
      continue
    }

    // insertion
    if ("*" in frame.node.edges) {
      var insertionNode = frame.node.edges["*"]
    } else {
      var insertionNode = new lunr.TokenSet
      frame.node.edges["*"] = insertionNode
    }

    if (frame.str.length == 0) {
      insertionNode.final = true
    }

    stack.push({
      node: insertionNode,
      editsRemaining: frame.editsRemaining - 1,
      str: frame.str
    })

    // deletion
    // can only do a deletion if we have enough edits remaining
    // and if there are characters left to delete in the string
    if (frame.str.length > 1) {
      stack.push({
        node: frame.node,
        editsRemaining: frame.editsRemaining - 1,
        str: frame.str.slice(1)
      })
    }

    // deletion
    // just removing the last character from the str
    if (frame.str.length == 1) {
      frame.node.final = true
    }

    // substitution
    // can only do a substitution if we have enough edits remaining
    // and if there are characters left to substitute
    if (frame.str.length >= 1) {
      if ("*" in frame.node.edges) {
        var substitutionNode = frame.node.edges["*"]
      } else {
        var substitutionNode = new lunr.TokenSet
        frame.node.edges["*"] = substitutionNode
      }

      if (frame.str.length == 1) {
        substitutionNode.final = true
      }

      stack.push({
        node: substitutionNode,
        editsRemaining: frame.editsRemaining - 1,
        str: frame.str.slice(1)
      })
    }

    // transposition
    // can only do a transposition if there are edits remaining
    // and there are enough characters to transpose
    if (frame.str.length > 1) {
      var charA = frame.str.charAt(0),
          charB = frame.str.charAt(1),
          transposeNode

      if (charB in frame.node.edges) {
        transposeNode = frame.node.edges[charB]
      } else {
        transposeNode = new lunr.TokenSet
        frame.node.edges[charB] = transposeNode
      }

      if (frame.str.length == 1) {
        transposeNode.final = true
      }

      stack.push({
        node: transposeNode,
        editsRemaining: frame.editsRemaining - 1,
        str: charA + frame.str.slice(2)
      })
    }
  }

  return root
}

/**
 * Creates a TokenSet from a string.
 *
 * The string may contain one or more wildcard characters (*)
 * that will allow wildcard matching when intersecting with
 * another TokenSet.
 *
 * @param {string} str - The string to create a TokenSet from.
 * @returns {lunr.TokenSet}
 */
lunr.TokenSet.fromString = function (str) {
  var node = new lunr.TokenSet,
      root = node

  /*
   * Iterates through all characters within the passed string
   * appending a node for each character.
   *
   * When a wildcard character is found then a self
   * referencing edge is introduced to continually match
   * any number of any characters.
   */
  for (var i = 0, len = str.length; i < len; i++) {
    var char = str[i],
        final = (i == len - 1)

    if (char == "*") {
      node.edges[char] = node
      node.final = final

    } else {
      var next = new lunr.TokenSet
      next.final = final

      node.edges[char] = next
      node = next
    }
  }

  return root
}

/**
 * Converts this TokenSet into an array of strings
 * contained within the TokenSet.
 *
 * This is not intended to be used on a TokenSet that
 * contains wildcards, in these cases the results are
 * undefined and are likely to cause an infinite loop.
 *
 * @returns {string[]}
 */
lunr.TokenSet.prototype.toArray = function () {
  var words = []

  var stack = [{
    prefix: "",
    node: this
  }]

  while (stack.length) {
    var frame = stack.pop(),
        edges = Object.keys(frame.node.edges),
        len = edges.length

    if (frame.node.final) {
      /* In Safari, at this point the prefix is sometimes corrupted, see:
       * https://github.com/olivernn/lunr.js/issues/279 Calling any
       * String.prototype method forces Safari to "cast" this string to what
       * it's supposed to be, fixing the bug. */
      frame.prefix.charAt(0)
      words.push(frame.prefix)
    }

    for (var i = 0; i < len; i++) {
      var edge = edges[i]

      stack.push({
        prefix: frame.prefix.concat(edge),
        node: frame.node.edges[edge]
      })
    }
  }

  return words
}

/**
 * Generates a string representation of a TokenSet.
 *
 * This is intended to allow TokenSets to be used as keys
 * in objects, largely to aid the construction and minimisation
 * of a TokenSet. As such it is not designed to be a human
 * friendly representation of the TokenSet.
 *
 * @returns {string}
 */
lunr.TokenSet.prototype.toString = function () {
  // NOTE: Using Object.keys here as this.edges is very likely
  // to enter 'hash-mode' with many keys being added
  //
  // avoiding a for-in loop here as it leads to the function
  // being de-optimised (at least in V8). From some simple
  // benchmarks the performance is comparable, but allowing
  // V8 to optimize may mean easy performance wins in the future.

  if (this._str) {
    return this._str
  }

  var str = this.final ? '1' : '0',
      labels = Object.keys(this.edges).sort(),
      len = labels.length

  for (var i = 0; i < len; i++) {
    var label = labels[i],
        node = this.edges[label]

    str = str + label + node.id
  }

  return str
}

/**
 * Returns a new TokenSet that is the intersection of
 * this TokenSet and the passed TokenSet.
 *
 * This intersection will take into account any wildcards
 * contained within the TokenSet.
 *
 * @param {lunr.TokenSet} b - An other TokenSet to intersect with.
 * @returns {lunr.TokenSet}
 */
lunr.TokenSet.prototype.intersect = function (b) {
  var output = new lunr.TokenSet,
      frame = undefined

  var stack = [{
    qNode: b,
    output: output,
    node: this
  }]

  while (stack.length) {
    frame = stack.pop()

    // NOTE: As with the #toString method, we are using
    // Object.keys and a for loop instead of a for-in loop
    // as both of these objects enter 'hash' mode, causing
    // the function to be de-optimised in V8
    var qEdges = Object.keys(frame.qNode.edges),
        qLen = qEdges.length,
        nEdges = Object.keys(frame.node.edges),
        nLen = nEdges.length

    for (var q = 0; q < qLen; q++) {
      var qEdge = qEdges[q]

      for (var n = 0; n < nLen; n++) {
        var nEdge = nEdges[n]

        if (nEdge == qEdge || qEdge == '*') {
          var node = frame.node.edges[nEdge],
              qNode = frame.qNode.edges[qEdge],
              final = node.final && qNode.final,
              next = undefined

          if (nEdge in frame.output.edges) {
            // an edge already exists for this character
            // no need to create a new node, just set the finality
            // bit unless this node is already final
            next = frame.output.edges[nEdge]
            next.final = next.final || final

          } else {
            // no edge exists yet, must create one
            // set the finality bit and insert it
            // into the output
            next = new lunr.TokenSet
            next.final = final
            frame.output.edges[nEdge] = next
          }

          stack.push({
            qNode: qNode,
            output: next,
            node: node
          })
        }
      }
    }
  }

  return output
}
lunr.TokenSet.Builder = function () {
  this.previousWord = ""
  this.root = new lunr.TokenSet
  this.uncheckedNodes = []
  this.minimizedNodes = {}
}

lunr.TokenSet.Builder.prototype.insert = function (word) {
  var node,
      commonPrefix = 0

  if (word < this.previousWord) {
    throw new Error ("Out of order word insertion")
  }

  for (var i = 0; i < word.length && i < this.previousWord.length; i++) {
    if (word[i] != this.previousWord[i]) break
    commonPrefix++
  }

  this.minimize(commonPrefix)

  if (this.uncheckedNodes.length == 0) {
    node = this.root
  } else {
    node = this.uncheckedNodes[this.uncheckedNodes.length - 1].child
  }

  for (var i = commonPrefix; i < word.length; i++) {
    var nextNode = new lunr.TokenSet,
        char = word[i]

    node.edges[char] = nextNode

    this.uncheckedNodes.push({
      parent: node,
      char: char,
      child: nextNode
    })

    node = nextNode
  }

  node.final = true
  this.previousWord = word
}

lunr.TokenSet.Builder.prototype.finish = function () {
  this.minimize(0)
}

lunr.TokenSet.Builder.prototype.minimize = function (downTo) {
  for (var i = this.uncheckedNodes.length - 1; i >= downTo; i--) {
    var node = this.uncheckedNodes[i],
        childKey = node.child.toString()

    if (childKey in this.minimizedNodes) {
      node.parent.edges[node.char] = this.minimizedNodes[childKey]
    } else {
      // Cache the key for this node since
      // we know it can't change anymore
      node.child._str = childKey

      this.minimizedNodes[childKey] = node.child
    }

    this.uncheckedNodes.pop()
  }
}
/*!
 * lunr.Index
 * Copyright (C) 2020 Oliver Nightingale
 */

/**
 * An index contains the built index of all documents and provides a query interface
 * to the index.
 *
 * Usually instances of lunr.Index will not be created using this constructor, instead
 * lunr.Builder should be used to construct new indexes, or lunr.Index.load should be
 * used to load previously built and serialized indexes.
 *
 * @constructor
 * @param {Object} attrs - The attributes of the built search index.
 * @param {Object} attrs.invertedIndex - An index of term/field to document reference.
 * @param {Object<string, lunr.Vector>} attrs.fieldVectors - Field vectors
 * @param {lunr.TokenSet} attrs.tokenSet - An set of all corpus tokens.
 * @param {string[]} attrs.fields - The names of indexed document fields.
 * @param {lunr.Pipeline} attrs.pipeline - The pipeline to use for search terms.
 */
lunr.Index = function (attrs) {
  this.invertedIndex = attrs.invertedIndex
  this.fieldVectors = attrs.fieldVectors
  this.tokenSet = attrs.tokenSet
  this.fields = attrs.fields
  this.pipeline = attrs.pipeline
}

/**
 * A result contains details of a document matching a search query.
 * @typedef {Object} lunr.Index~Result
 * @property {string} ref - The reference of the document this result represents.
 * @property {number} score - A number between 0 and 1 representing how similar this document is to the query.
 * @property {lunr.MatchData} matchData - Contains metadata about this match including which term(s) caused the match.
 */

/**
 * Although lunr provides the ability to create queries using lunr.Query, it also provides a simple
 * query language which itself is parsed into an instance of lunr.Query.
 *
 * For programmatically building queries it is advised to directly use lunr.Query, the query language
 * is best used for human entered text rather than program generated text.
 *
 * At its simplest queries can just be a single term, e.g. `hello`, multiple terms are also supported
 * and will be combined with OR, e.g `hello world` will match documents that contain either 'hello'
 * or 'world', though those that contain both will rank higher in the results.
 *
 * Wildcards can be included in terms to match one or more unspecified characters, these wildcards can
 * be inserted anywhere within the term, and more than one wildcard can exist in a single term. Adding
 * wildcards will increase the number of documents that will be found but can also have a negative
 * impact on query performance, especially with wildcards at the beginning of a term.
 *
 * Terms can be restricted to specific fields, e.g. `title:hello`, only documents with the term
 * hello in the title field will match this query. Using a field not present in the index will lead
 * to an error being thrown.
 *
 * Modifiers can also be added to terms, lunr supports edit distance and boost modifiers on terms. A term
 * boost will make documents matching that term score higher, e.g. `foo^5`. Edit distance is also supported
 * to provide fuzzy matching, e.g. 'hello~2' will match documents with hello with an edit distance of 2.
 * Avoid large values for edit distance to improve query performance.
 *
 * Each term also supports a presence modifier. By default a term's presence in document is optional, however
 * this can be changed to either required or prohibited. For a term's presence to be required in a document the
 * term should be prefixed with a '+', e.g. `+foo bar` is a search for documents that must contain 'foo' and
 * optionally contain 'bar'. Conversely a leading '-' sets the terms presence to prohibited, i.e. it must not
 * appear in a document, e.g. `-foo bar` is a search for documents that do not contain 'foo' but may contain 'bar'.
 *
 * To escape special characters the backslash character '\' can be used, this allows searches to include
 * characters that would normally be considered modifiers, e.g. `foo\~2` will search for a term "foo~2" instead
 * of attempting to apply a boost of 2 to the search term "foo".
 *
 * @typedef {string} lunr.Index~QueryString
 * @example <caption>Simple single term query</caption>
 * hello
 * @example <caption>Multiple term query</caption>
 * hello world
 * @example <caption>term scoped to a field</caption>
 * title:hello
 * @example <caption>term with a boost of 10</caption>
 * hello^10
 * @example <caption>term with an edit distance of 2</caption>
 * hello~2
 * @example <caption>terms with presence modifiers</caption>
 * -foo +bar baz
 */

/**
 * Performs a search against the index using lunr query syntax.
 *
 * Results will be returned sorted by their score, the most relevant results
 * will be returned first.  For details on how the score is calculated, please see
 * the {@link https://lunrjs.com/guides/searching.html#scoring|guide}.
 *
 * For more programmatic querying use lunr.Index#query.
 *
 * @param {lunr.Index~QueryString} queryString - A string containing a lunr query.
 * @throws {lunr.QueryParseError} If the passed query string cannot be parsed.
 * @returns {lunr.Index~Result[]}
 */
lunr.Index.prototype.search = function (queryString) {
  return this.query(function (query) {
    var parser = new lunr.QueryParser(queryString, query)
    parser.parse()
  })
}

/**
 * A query builder callback provides a query object to be used to express
 * the query to perform on the index.
 *
 * @callback lunr.Index~queryBuilder
 * @param {lunr.Query} query - The query object to build up.
 * @this lunr.Query
 */

/**
 * Performs a query against the index using the yielded lunr.Query object.
 *
 * If performing programmatic queries against the index, this method is preferred
 * over lunr.Index#search so as to avoid the additional query parsing overhead.
 *
 * A query object is yielded to the supplied function which should be used to
 * express the query to be run against the index.
 *
 * Note that although this function takes a callback parameter it is _not_ an
 * asynchronous operation, the callback is just yielded a query object to be
 * customized.
 *
 * @param {lunr.Index~queryBuilder} fn - A function that is used to build the query.
 * @returns {lunr.Index~Result[]}
 */
lunr.Index.prototype.query = function (fn) {
  // for each query clause
  // * process terms
  // * expand terms from token set
  // * find matching documents and metadata
  // * get document vectors
  // * score documents

  var query = new lunr.Query(this.fields),
      matchingFields = Object.create(null),
      queryVectors = Object.create(null),
      termFieldCache = Object.create(null),
      requiredMatches = Object.create(null),
      prohibitedMatches = Object.create(null)

  /*
   * To support field level boosts a query vector is created per
   * field. An empty vector is eagerly created to support negated
   * queries.
   */
  for (var i = 0; i < this.fields.length; i++) {
    queryVectors[this.fields[i]] = new lunr.Vector
  }

  fn.call(query, query)

  for (var i = 0; i < query.clauses.length; i++) {
    /*
     * Unless the pipeline has been disabled for this term, which is
     * the case for terms with wildcards, we need to pass the clause
     * term through the search pipeline. A pipeline returns an array
     * of processed terms. Pipeline functions may expand the passed
     * term, which means we may end up performing multiple index lookups
     * for a single query term.
     */
    var clause = query.clauses[i],
        terms = null,
        clauseMatches = lunr.Set.empty

    if (clause.usePipeline) {
      terms = this.pipeline.runString(clause.term, {
        fields: clause.fields
      })
    } else {
      terms = [clause.term]
    }

    for (var m = 0; m < terms.length; m++) {
      var term = terms[m]

      /*
       * Each term returned from the pipeline needs to use the same query
       * clause object, e.g. the same boost and or edit distance. The
       * simplest way to do this is to re-use the clause object but mutate
       * its term property.
       */
      clause.term = term

      /*
       * From the term in the clause we create a token set which will then
       * be used to intersect the indexes token set to get a list of terms
       * to lookup in the inverted index
       */
      var termTokenSet = lunr.TokenSet.fromClause(clause),
          expandedTerms = this.tokenSet.intersect(termTokenSet).toArray()

      /*
       * If a term marked as required does not exist in the tokenSet it is
       * impossible for the search to return any matches. We set all the field
       * scoped required matches set to empty and stop examining any further
       * clauses.
       */
      if (expandedTerms.length === 0 && clause.presence === lunr.Query.presence.REQUIRED) {
        for (var k = 0; k < clause.fields.length; k++) {
          var field = clause.fields[k]
          requiredMatches[field] = lunr.Set.empty
        }

        break
      }

      for (var j = 0; j < expandedTerms.length; j++) {
        /*
         * For each term get the posting and termIndex, this is required for
         * building the query vector.
         */
        var expandedTerm = expandedTerms[j],
            posting = this.invertedIndex[expandedTerm],
            termIndex = posting._index

        for (var k = 0; k < clause.fields.length; k++) {
          /*
           * For each field that this query term is scoped by (by default
           * all fields are in scope) we need to get all the document refs
           * that have this term in that field.
           *
           * The posting is the entry in the invertedIndex for the matching
           * term from above.
           */
          var field = clause.fields[k],
              fieldPosting = posting[field],
              matchingDocumentRefs = Object.keys(fieldPosting),
              termField = expandedTerm + "/" + field,
              matchingDocumentsSet = new lunr.Set(matchingDocumentRefs)

          /*
           * if the presence of this term is required ensure that the matching
           * documents are added to the set of required matches for this clause.
           *
           */
          if (clause.presence == lunr.Query.presence.REQUIRED) {
            clauseMatches = clauseMatches.union(matchingDocumentsSet)

            if (requiredMatches[field] === undefined) {
              requiredMatches[field] = lunr.Set.complete
            }
          }

          /*
           * if the presence of this term is prohibited ensure that the matching
           * documents are added to the set of prohibited matches for this field,
           * creating that set if it does not yet exist.
           */
          if (clause.presence == lunr.Query.presence.PROHIBITED) {
            if (prohibitedMatches[field] === undefined) {
              prohibitedMatches[field] = lunr.Set.empty
            }

            prohibitedMatches[field] = prohibitedMatches[field].union(matchingDocumentsSet)

            /*
             * Prohibited matches should not be part of the query vector used for
             * similarity scoring and no metadata should be extracted so we continue
             * to the next field
             */
            continue
          }

          /*
           * The query field vector is populated using the termIndex found for
           * the term and a unit value with the appropriate boost applied.
           * Using upsert because there could already be an entry in the vector
           * for the term we are working with. In that case we just add the scores
           * together.
           */
          queryVectors[field].upsert(termIndex, clause.boost, function (a, b) { return a + b })

          /**
           * If we've already seen this term, field combo then we've already collected
           * the matching documents and metadata, no need to go through all that again
           */
          if (termFieldCache[termField]) {
            continue
          }

          for (var l = 0; l < matchingDocumentRefs.length; l++) {
            /*
             * All metadata for this term/field/document triple
             * are then extracted and collected into an instance
             * of lunr.MatchData ready to be returned in the query
             * results
             */
            var matchingDocumentRef = matchingDocumentRefs[l],
                matchingFieldRef = new lunr.FieldRef (matchingDocumentRef, field),
                metadata = fieldPosting[matchingDocumentRef],
                fieldMatch

            if ((fieldMatch = matchingFields[matchingFieldRef]) === undefined) {
              matchingFields[matchingFieldRef] = new lunr.MatchData (expandedTerm, field, metadata)
            } else {
              fieldMatch.add(expandedTerm, field, metadata)
            }

          }

          termFieldCache[termField] = true
        }
      }
    }

    /**
     * If the presence was required we need to update the requiredMatches field sets.
     * We do this after all fields for the term have collected their matches because
     * the clause terms presence is required in _any_ of the fields not _all_ of the
     * fields.
     */
    if (clause.presence === lunr.Query.presence.REQUIRED) {
      for (var k = 0; k < clause.fields.length; k++) {
        var field = clause.fields[k]
        requiredMatches[field] = requiredMatches[field].intersect(clauseMatches)
      }
    }
  }

  /**
   * Need to combine the field scoped required and prohibited
   * matching documents into a global set of required and prohibited
   * matches
   */
  var allRequiredMatches = lunr.Set.complete,
      allProhibitedMatches = lunr.Set.empty

  for (var i = 0; i < this.fields.length; i++) {
    var field = this.fields[i]

    if (requiredMatches[field]) {
      allRequiredMatches = allRequiredMatches.intersect(requiredMatches[field])
    }

    if (prohibitedMatches[field]) {
      allProhibitedMatches = allProhibitedMatches.union(prohibitedMatches[field])
    }
  }

  var matchingFieldRefs = Object.keys(matchingFields),
      results = [],
      matches = Object.create(null)

  /*
   * If the query is negated (contains only prohibited terms)
   * we need to get _all_ fieldRefs currently existing in the
   * index. This is only done when we know that the query is
   * entirely prohibited terms to avoid any cost of getting all
   * fieldRefs unnecessarily.
   *
   * Additionally, blank MatchData must be created to correctly
   * populate the results.
   */
  if (query.isNegated()) {
    matchingFieldRefs = Object.keys(this.fieldVectors)

    for (var i = 0; i < matchingFieldRefs.length; i++) {
      var matchingFieldRef = matchingFieldRefs[i]
      var fieldRef = lunr.FieldRef.fromString(matchingFieldRef)
      matchingFields[matchingFieldRef] = new lunr.MatchData
    }
  }

  for (var i = 0; i < matchingFieldRefs.length; i++) {
    /*
     * Currently we have document fields that match the query, but we
     * need to return documents. The matchData and scores are combined
     * from multiple fields belonging to the same document.
     *
     * Scores are calculated by field, using the query vectors created
     * above, and combined into a final document score using addition.
     */
    var fieldRef = lunr.FieldRef.fromString(matchingFieldRefs[i]),
        docRef = fieldRef.docRef

    if (!allRequiredMatches.contains(docRef)) {
      continue
    }

    if (allProhibitedMatches.contains(docRef)) {
      continue
    }

    var fieldVector = this.fieldVectors[fieldRef],
        score = queryVectors[fieldRef.fieldName].similarity(fieldVector),
        docMatch

    if ((docMatch = matches[docRef]) !== undefined) {
      docMatch.score += score
      docMatch.matchData.combine(matchingFields[fieldRef])
    } else {
      var match = {
        ref: docRef,
        score: score,
        matchData: matchingFields[fieldRef]
      }
      matches[docRef] = match
      results.push(match)
    }
  }

  /*
   * Sort the results objects by score, highest first.
   */
  return results.sort(function (a, b) {
    return b.score - a.score
  })
}

/**
 * Prepares the index for JSON serialization.
 *
 * The schema for this JSON blob will be described in a
 * separate JSON schema file.
 *
 * @returns {Object}
 */
lunr.Index.prototype.toJSON = function () {
  var invertedIndex = Object.keys(this.invertedIndex)
    .sort()
    .map(function (term) {
      return [term, this.invertedIndex[term]]
    }, this)

  var fieldVectors = Object.keys(this.fieldVectors)
    .map(function (ref) {
      return [ref, this.fieldVectors[ref].toJSON()]
    }, this)

  return {
    version: lunr.version,
    fields: this.fields,
    fieldVectors: fieldVectors,
    invertedIndex: invertedIndex,
    pipeline: this.pipeline.toJSON()
  }
}

/**
 * Loads a previously serialized lunr.Index
 *
 * @param {Object} serializedIndex - A previously serialized lunr.Index
 * @returns {lunr.Index}
 */
lunr.Index.load = function (serializedIndex) {
  var attrs = {},
      fieldVectors = {},
      serializedVectors = serializedIndex.fieldVectors,
      invertedIndex = Object.create(null),
      serializedInvertedIndex = serializedIndex.invertedIndex,
      tokenSetBuilder = new lunr.TokenSet.Builder,
      pipeline = lunr.Pipeline.load(serializedIndex.pipeline)

  if (serializedIndex.version != lunr.version) {
    lunr.utils.warn("Version mismatch when loading serialised index. Current version of lunr '" + lunr.version + "' does not match serialized index '" + serializedIndex.version + "'")
  }

  for (var i = 0; i < serializedVectors.length; i++) {
    var tuple = serializedVectors[i],
        ref = tuple[0],
        elements = tuple[1]

    fieldVectors[ref] = new lunr.Vector(elements)
  }

  for (var i = 0; i < serializedInvertedIndex.length; i++) {
    var tuple = serializedInvertedIndex[i],
        term = tuple[0],
        posting = tuple[1]

    tokenSetBuilder.insert(term)
    invertedIndex[term] = posting
  }

  tokenSetBuilder.finish()

  attrs.fields = serializedIndex.fields

  attrs.fieldVectors = fieldVectors
  attrs.invertedIndex = invertedIndex
  attrs.tokenSet = tokenSetBuilder.root
  attrs.pipeline = pipeline

  return new lunr.Index(attrs)
}
/*!
 * lunr.Builder
 * Copyright (C) 2020 Oliver Nightingale
 */

/**
 * lunr.Builder performs indexing on a set of documents and
 * returns instances of lunr.Index ready for querying.
 *
 * All configuration of the index is done via the builder, the
 * fields to index, the document reference, the text processing
 * pipeline and document scoring parameters are all set on the
 * builder before indexing.
 *
 * @constructor
 * @property {string} _ref - Internal reference to the document reference field.
 * @property {string[]} _fields - Internal reference to the document fields to index.
 * @property {object} invertedIndex - The inverted index maps terms to document fields.
 * @property {object} documentTermFrequencies - Keeps track of document term frequencies.
 * @property {object} documentLengths - Keeps track of the length of documents added to the index.
 * @property {lunr.tokenizer} tokenizer - Function for splitting strings into tokens for indexing.
 * @property {lunr.Pipeline} pipeline - The pipeline performs text processing on tokens before indexing.
 * @property {lunr.Pipeline} searchPipeline - A pipeline for processing search terms before querying the index.
 * @property {number} documentCount - Keeps track of the total number of documents indexed.
 * @property {number} _b - A parameter to control field length normalization, setting this to 0 disabled normalization, 1 fully normalizes field lengths, the default value is 0.75.
 * @property {number} _k1 - A parameter to control how quickly an increase in term frequency results in term frequency saturation, the default value is 1.2.
 * @property {number} termIndex - A counter incremented for each unique term, used to identify a terms position in the vector space.
 * @property {array} metadataWhitelist - A list of metadata keys that have been whitelisted for entry in the index.
 */
lunr.Builder = function () {
  this._ref = "id"
  this._fields = Object.create(null)
  this._documents = Object.create(null)
  this.invertedIndex = Object.create(null)
  this.fieldTermFrequencies = {}
  this.fieldLengths = {}
  this.tokenizer = lunr.tokenizer
  this.pipeline = new lunr.Pipeline
  this.searchPipeline = new lunr.Pipeline
  this.documentCount = 0
  this._b = 0.75
  this._k1 = 1.2
  this.termIndex = 0
  this.metadataWhitelist = []
}

/**
 * Sets the document field used as the document reference. Every document must have this field.
 * The type of this field in the document should be a string, if it is not a string it will be
 * coerced into a string by calling toString.
 *
 * The default ref is 'id'.
 *
 * The ref should _not_ be changed during indexing, it should be set before any documents are
 * added to the index. Changing it during indexing can lead to inconsistent results.
 *
 * @param {string} ref - The name of the reference field in the document.
 */
lunr.Builder.prototype.ref = function (ref) {
  this._ref = ref
}

/**
 * A function that is used to extract a field from a document.
 *
 * Lunr expects a field to be at the top level of a document, if however the field
 * is deeply nested within a document an extractor function can be used to extract
 * the right field for indexing.
 *
 * @callback fieldExtractor
 * @param {object} doc - The document being added to the index.
 * @returns {?(string|object|object[])} obj - The object that will be indexed for this field.
 * @example <caption>Extracting a nested field</caption>
 * function (doc) { return doc.nested.field }
 */

/**
 * Adds a field to the list of document fields that will be indexed. Every document being
 * indexed should have this field. Null values for this field in indexed documents will
 * not cause errors but will limit the chance of that document being retrieved by searches.
 *
 * All fields should be added before adding documents to the index. Adding fields after
 * a document has been indexed will have no effect on already indexed documents.
 *
 * Fields can be boosted at build time. This allows terms within that field to have more
 * importance when ranking search results. Use a field boost to specify that matches within
 * one field are more important than other fields.
 *
 * @param {string} fieldName - The name of a field to index in all documents.
 * @param {object} attributes - Optional attributes associated with this field.
 * @param {number} [attributes.boost=1] - Boost applied to all terms within this field.
 * @param {fieldExtractor} [attributes.extractor] - Function to extract a field from a document.
 * @throws {RangeError} fieldName cannot contain unsupported characters '/'
 */
lunr.Builder.prototype.field = function (fieldName, attributes) {
  if (/\//.test(fieldName)) {
    throw new RangeError ("Field '" + fieldName + "' contains illegal character '/'")
  }

  this._fields[fieldName] = attributes || {}
}

/**
 * A parameter to tune the amount of field length normalisation that is applied when
 * calculating relevance scores. A value of 0 will completely disable any normalisation
 * and a value of 1 will fully normalise field lengths. The default is 0.75. Values of b
 * will be clamped to the range 0 - 1.
 *
 * @param {number} number - The value to set for this tuning parameter.
 */
lunr.Builder.prototype.b = function (number) {
  if (number < 0) {
    this._b = 0
  } else if (number > 1) {
    this._b = 1
  } else {
    this._b = number
  }
}

/**
 * A parameter that controls the speed at which a rise in term frequency results in term
 * frequency saturation. The default value is 1.2. Setting this to a higher value will give
 * slower saturation levels, a lower value will result in quicker saturation.
 *
 * @param {number} number - The value to set for this tuning parameter.
 */
lunr.Builder.prototype.k1 = function (number) {
  this._k1 = number
}

/**
 * Adds a document to the index.
 *
 * Before adding fields to the index the index should have been fully setup, with the document
 * ref and all fields to index already having been specified.
 *
 * The document must have a field name as specified by the ref (by default this is 'id') and
 * it should have all fields defined for indexing, though null or undefined values will not
 * cause errors.
 *
 * Entire documents can be boosted at build time. Applying a boost to a document indicates that
 * this document should rank higher in search results than other documents.
 *
 * @param {object} doc - The document to add to the index.
 * @param {object} attributes - Optional attributes associated with this document.
 * @param {number} [attributes.boost=1] - Boost applied to all terms within this document.
 */
lunr.Builder.prototype.add = function (doc, attributes) {
  var docRef = doc[this._ref],
      fields = Object.keys(this._fields)

  this._documents[docRef] = attributes || {}
  this.documentCount += 1

  for (var i = 0; i < fields.length; i++) {
    var fieldName = fields[i],
        extractor = this._fields[fieldName].extractor,
        field = extractor ? extractor(doc) : doc[fieldName],
        tokens = this.tokenizer(field, {
          fields: [fieldName]
        }),
        terms = this.pipeline.run(tokens),
        fieldRef = new lunr.FieldRef (docRef, fieldName),
        fieldTerms = Object.create(null)

    this.fieldTermFrequencies[fieldRef] = fieldTerms
    this.fieldLengths[fieldRef] = 0

    // store the length of this field for this document
    this.fieldLengths[fieldRef] += terms.length

    // calculate term frequencies for this field
    for (var j = 0; j < terms.length; j++) {
      var term = terms[j]

      if (fieldTerms[term] == undefined) {
        fieldTerms[term] = 0
      }

      fieldTerms[term] += 1

      // add to inverted index
      // create an initial posting if one doesn't exist
      if (this.invertedIndex[term] == undefined) {
        var posting = Object.create(null)
        posting["_index"] = this.termIndex
        this.termIndex += 1

        for (var k = 0; k < fields.length; k++) {
          posting[fields[k]] = Object.create(null)
        }

        this.invertedIndex[term] = posting
      }

      // add an entry for this term/fieldName/docRef to the invertedIndex
      if (this.invertedIndex[term][fieldName][docRef] == undefined) {
        this.invertedIndex[term][fieldName][docRef] = Object.create(null)
      }

      // store all whitelisted metadata about this token in the
      // inverted index
      for (var l = 0; l < this.metadataWhitelist.length; l++) {
        var metadataKey = this.metadataWhitelist[l],
            metadata = term.metadata[metadataKey]

        if (this.invertedIndex[term][fieldName][docRef][metadataKey] == undefined) {
          this.invertedIndex[term][fieldName][docRef][metadataKey] = []
        }

        this.invertedIndex[term][fieldName][docRef][metadataKey].push(metadata)
      }
    }

  }
}

/**
 * Calculates the average document length for this index
 *
 * @private
 */
lunr.Builder.prototype.calculateAverageFieldLengths = function () {

  var fieldRefs = Object.keys(this.fieldLengths),
      numberOfFields = fieldRefs.length,
      accumulator = {},
      documentsWithField = {}

  for (var i = 0; i < numberOfFields; i++) {
    var fieldRef = lunr.FieldRef.fromString(fieldRefs[i]),
        field = fieldRef.fieldName

    documentsWithField[field] || (documentsWithField[field] = 0)
    documentsWithField[field] += 1

    accumulator[field] || (accumulator[field] = 0)
    accumulator[field] += this.fieldLengths[fieldRef]
  }

  var fields = Object.keys(this._fields)

  for (var i = 0; i < fields.length; i++) {
    var fieldName = fields[i]
    accumulator[fieldName] = accumulator[fieldName] / documentsWithField[fieldName]
  }

  this.averageFieldLength = accumulator
}

/**
 * Builds a vector space model of every document using lunr.Vector
 *
 * @private
 */
lunr.Builder.prototype.createFieldVectors = function () {
  var fieldVectors = {},
      fieldRefs = Object.keys(this.fieldTermFrequencies),
      fieldRefsLength = fieldRefs.length,
      termIdfCache = Object.create(null)

  for (var i = 0; i < fieldRefsLength; i++) {
    var fieldRef = lunr.FieldRef.fromString(fieldRefs[i]),
        fieldName = fieldRef.fieldName,
        fieldLength = this.fieldLengths[fieldRef],
        fieldVector = new lunr.Vector,
        termFrequencies = this.fieldTermFrequencies[fieldRef],
        terms = Object.keys(termFrequencies),
        termsLength = terms.length


    var fieldBoost = this._fields[fieldName].boost || 1,
        docBoost = this._documents[fieldRef.docRef].boost || 1

    for (var j = 0; j < termsLength; j++) {
      var term = terms[j],
          tf = termFrequencies[term],
          termIndex = this.invertedIndex[term]._index,
          idf, score, scoreWithPrecision

      if (termIdfCache[term] === undefined) {
        idf = lunr.idf(this.invertedIndex[term], this.documentCount)
        termIdfCache[term] = idf
      } else {
        idf = termIdfCache[term]
      }

      score = idf * ((this._k1 + 1) * tf) / (this._k1 * (1 - this._b + this._b * (fieldLength / this.averageFieldLength[fieldName])) + tf)
      score *= fieldBoost
      score *= docBoost
      scoreWithPrecision = Math.round(score * 1000) / 1000
      // Converts 1.23456789 to 1.234.
      // Reducing the precision so that the vectors take up less
      // space when serialised. Doing it now so that they behave
      // the same before and after serialisation. Also, this is
      // the fastest approach to reducing a number's precision in
      // JavaScript.

      fieldVector.insert(termIndex, scoreWithPrecision)
    }

    fieldVectors[fieldRef] = fieldVector
  }

  this.fieldVectors = fieldVectors
}

/**
 * Creates a token set of all tokens in the index using lunr.TokenSet
 *
 * @private
 */
lunr.Builder.prototype.createTokenSet = function () {
  this.tokenSet = lunr.TokenSet.fromArray(
    Object.keys(this.invertedIndex).sort()
  )
}

/**
 * Builds the index, creating an instance of lunr.Index.
 *
 * This completes the indexing process and should only be called
 * once all documents have been added to the index.
 *
 * @returns {lunr.Index}
 */
lunr.Builder.prototype.build = function () {
  this.calculateAverageFieldLengths()
  this.createFieldVectors()
  this.createTokenSet()

  return new lunr.Index({
    invertedIndex: this.invertedIndex,
    fieldVectors: this.fieldVectors,
    tokenSet: this.tokenSet,
    fields: Object.keys(this._fields),
    pipeline: this.searchPipeline
  })
}

/**
 * Applies a plugin to the index builder.
 *
 * A plugin is a function that is called with the index builder as its context.
 * Plugins can be used to customise or extend the behaviour of the index
 * in some way. A plugin is just a function, that encapsulated the custom
 * behaviour that should be applied when building the index.
 *
 * The plugin function will be called with the index builder as its argument, additional
 * arguments can also be passed when calling use. The function will be called
 * with the index builder as its context.
 *
 * @param {Function} plugin The plugin to apply.
 */
lunr.Builder.prototype.use = function (fn) {
  var args = Array.prototype.slice.call(arguments, 1)
  args.unshift(this)
  fn.apply(this, args)
}
/**
 * Contains and collects metadata about a matching document.
 * A single instance of lunr.MatchData is returned as part of every
 * lunr.Index~Result.
 *
 * @constructor
 * @param {string} term - The term this match data is associated with
 * @param {string} field - The field in which the term was found
 * @param {object} metadata - The metadata recorded about this term in this field
 * @property {object} metadata - A cloned collection of metadata associated with this document.
 * @see {@link lunr.Index~Result}
 */
lunr.MatchData = function (term, field, metadata) {
  var clonedMetadata = Object.create(null),
      metadataKeys = Object.keys(metadata || {})

  // Cloning the metadata to prevent the original
  // being mutated during match data combination.
  // Metadata is kept in an array within the inverted
  // index so cloning the data can be done with
  // Array#slice
  for (var i = 0; i < metadataKeys.length; i++) {
    var key = metadataKeys[i]
    clonedMetadata[key] = metadata[key].slice()
  }

  this.metadata = Object.create(null)

  if (term !== undefined) {
    this.metadata[term] = Object.create(null)
    this.metadata[term][field] = clonedMetadata
  }
}

/**
 * An instance of lunr.MatchData will be created for every term that matches a
 * document. However only one instance is required in a lunr.Index~Result. This
 * method combines metadata from another instance of lunr.MatchData with this
 * objects metadata.
 *
 * @param {lunr.MatchData} otherMatchData - Another instance of match data to merge with this one.
 * @see {@link lunr.Index~Result}
 */
lunr.MatchData.prototype.combine = function (otherMatchData) {
  var terms = Object.keys(otherMatchData.metadata)

  for (var i = 0; i < terms.length; i++) {
    var term = terms[i],
        fields = Object.keys(otherMatchData.metadata[term])

    if (this.metadata[term] == undefined) {
      this.metadata[term] = Object.create(null)
    }

    for (var j = 0; j < fields.length; j++) {
      var field = fields[j],
          keys = Object.keys(otherMatchData.metadata[term][field])

      if (this.metadata[term][field] == undefined) {
        this.metadata[term][field] = Object.create(null)
      }

      for (var k = 0; k < keys.length; k++) {
        var key = keys[k]

        if (this.metadata[term][field][key] == undefined) {
          this.metadata[term][field][key] = otherMatchData.metadata[term][field][key]
        } else {
          this.metadata[term][field][key] = this.metadata[term][field][key].concat(otherMatchData.metadata[term][field][key])
        }

      }
    }
  }
}

/**
 * Add metadata for a term/field pair to this instance of match data.
 *
 * @param {string} term - The term this match data is associated with
 * @param {string} field - The field in which the term was found
 * @param {object} metadata - The metadata recorded about this term in this field
 */
lunr.MatchData.prototype.add = function (term, field, metadata) {
  if (!(term in this.metadata)) {
    this.metadata[term] = Object.create(null)
    this.metadata[term][field] = metadata
    return
  }

  if (!(field in this.metadata[term])) {
    this.metadata[term][field] = metadata
    return
  }

  var metadataKeys = Object.keys(metadata)

  for (var i = 0; i < metadataKeys.length; i++) {
    var key = metadataKeys[i]

    if (key in this.metadata[term][field]) {
      this.metadata[term][field][key] = this.metadata[term][field][key].concat(metadata[key])
    } else {
      this.metadata[term][field][key] = metadata[key]
    }
  }
}
/**
 * A lunr.Query provides a programmatic way of defining queries to be performed
 * against a {@link lunr.Index}.
 *
 * Prefer constructing a lunr.Query using the {@link lunr.Index#query} method
 * so the query object is pre-initialized with the right index fields.
 *
 * @constructor
 * @property {lunr.Query~Clause[]} clauses - An array of query clauses.
 * @property {string[]} allFields - An array of all available fields in a lunr.Index.
 */
lunr.Query = function (allFields) {
  this.clauses = []
  this.allFields = allFields
}

/**
 * Constants for indicating what kind of automatic wildcard insertion will be used when constructing a query clause.
 *
 * This allows wildcards to be added to the beginning and end of a term without having to manually do any string
 * concatenation.
 *
 * The wildcard constants can be bitwise combined to select both leading and trailing wildcards.
 *
 * @constant
 * @default
 * @property {number} wildcard.NONE - The term will have no wildcards inserted, this is the default behaviour
 * @property {number} wildcard.LEADING - Prepend the term with a wildcard, unless a leading wildcard already exists
 * @property {number} wildcard.TRAILING - Append a wildcard to the term, unless a trailing wildcard already exists
 * @see lunr.Query~Clause
 * @see lunr.Query#clause
 * @see lunr.Query#term
 * @example <caption>query term with trailing wildcard</caption>
 * query.term('foo', { wildcard: lunr.Query.wildcard.TRAILING })
 * @example <caption>query term with leading and trailing wildcard</caption>
 * query.term('foo', {
 *   wildcard: lunr.Query.wildcard.LEADING | lunr.Query.wildcard.TRAILING
 * })
 */

lunr.Query.wildcard = new String ("*")
lunr.Query.wildcard.NONE = 0
lunr.Query.wildcard.LEADING = 1
lunr.Query.wildcard.TRAILING = 2

/**
 * Constants for indicating what kind of presence a term must have in matching documents.
 *
 * @constant
 * @enum {number}
 * @see lunr.Query~Clause
 * @see lunr.Query#clause
 * @see lunr.Query#term
 * @example <caption>query term with required presence</caption>
 * query.term('foo', { presence: lunr.Query.presence.REQUIRED })
 */
lunr.Query.presence = {
  /**
   * Term's presence in a document is optional, this is the default value.
   */
  OPTIONAL: 1,

  /**
   * Term's presence in a document is required, documents that do not contain
   * this term will not be returned.
   */
  REQUIRED: 2,

  /**
   * Term's presence in a document is prohibited, documents that do contain
   * this term will not be returned.
   */
  PROHIBITED: 3
}

/**
 * A single clause in a {@link lunr.Query} contains a term and details on how to
 * match that term against a {@link lunr.Index}.
 *
 * @typedef {Object} lunr.Query~Clause
 * @property {string[]} fields - The fields in an index this clause should be matched against.
 * @property {number} [boost=1] - Any boost that should be applied when matching this clause.
 * @property {number} [editDistance] - Whether the term should have fuzzy matching applied, and how fuzzy the match should be.
 * @property {boolean} [usePipeline] - Whether the term should be passed through the search pipeline.
 * @property {number} [wildcard=lunr.Query.wildcard.NONE] - Whether the term should have wildcards appended or prepended.
 * @property {number} [presence=lunr.Query.presence.OPTIONAL] - The terms presence in any matching documents.
 */

/**
 * Adds a {@link lunr.Query~Clause} to this query.
 *
 * Unless the clause contains the fields to be matched all fields will be matched. In addition
 * a default boost of 1 is applied to the clause.
 *
 * @param {lunr.Query~Clause} clause - The clause to add to this query.
 * @see lunr.Query~Clause
 * @returns {lunr.Query}
 */
lunr.Query.prototype.clause = function (clause) {
  if (!('fields' in clause)) {
    clause.fields = this.allFields
  }

  if (!('boost' in clause)) {
    clause.boost = 1
  }

  if (!('usePipeline' in clause)) {
    clause.usePipeline = true
  }

  if (!('wildcard' in clause)) {
    clause.wildcard = lunr.Query.wildcard.NONE
  }

  if ((clause.wildcard & lunr.Query.wildcard.LEADING) && (clause.term.charAt(0) != lunr.Query.wildcard)) {
    clause.term = "*" + clause.term
  }

  if ((clause.wildcard & lunr.Query.wildcard.TRAILING) && (clause.term.slice(-1) != lunr.Query.wildcard)) {
    clause.term = "" + clause.term + "*"
  }

  if (!('presence' in clause)) {
    clause.presence = lunr.Query.presence.OPTIONAL
  }

  this.clauses.push(clause)

  return this
}

/**
 * A negated query is one in which every clause has a presence of
 * prohibited. These queries require some special processing to return
 * the expected results.
 *
 * @returns boolean
 */
lunr.Query.prototype.isNegated = function () {
  for (var i = 0; i < this.clauses.length; i++) {
    if (this.clauses[i].presence != lunr.Query.presence.PROHIBITED) {
      return false
    }
  }

  return true
}

/**
 * Adds a term to the current query, under the covers this will create a {@link lunr.Query~Clause}
 * to the list of clauses that make up this query.
 *
 * The term is used as is, i.e. no tokenization will be performed by this method. Instead conversion
 * to a token or token-like string should be done before calling this method.
 *
 * The term will be converted to a string by calling `toString`. Multiple terms can be passed as an
 * array, each term in the array will share the same options.
 *
 * @param {object|object[]} term - The term(s) to add to the query.
 * @param {object} [options] - Any additional properties to add to the query clause.
 * @returns {lunr.Query}
 * @see lunr.Query#clause
 * @see lunr.Query~Clause
 * @example <caption>adding a single term to a query</caption>
 * query.term("foo")
 * @example <caption>adding a single term to a query and specifying search fields, term boost and automatic trailing wildcard</caption>
 * query.term("foo", {
 *   fields: ["title"],
 *   boost: 10,
 *   wildcard: lunr.Query.wildcard.TRAILING
 * })
 * @example <caption>using lunr.tokenizer to convert a string to tokens before using them as terms</caption>
 * query.term(lunr.tokenizer("foo bar"))
 */
lunr.Query.prototype.term = function (term, options) {
  if (Array.isArray(term)) {
    term.forEach(function (t) { this.term(t, lunr.utils.clone(options)) }, this)
    return this
  }

  var clause = options || {}
  clause.term = term.toString()

  this.clause(clause)

  return this
}
lunr.QueryParseError = function (message, start, end) {
  this.name = "QueryParseError"
  this.message = message
  this.start = start
  this.end = end
}

lunr.QueryParseError.prototype = new Error
lunr.QueryLexer = function (str) {
  this.lexemes = []
  this.str = str
  this.length = str.length
  this.pos = 0
  this.start = 0
  this.escapeCharPositions = []
}

lunr.QueryLexer.prototype.run = function () {
  var state = lunr.QueryLexer.lexText

  while (state) {
    state = state(this)
  }
}

lunr.QueryLexer.prototype.sliceString = function () {
  var subSlices = [],
      sliceStart = this.start,
      sliceEnd = this.pos

  for (var i = 0; i < this.escapeCharPositions.length; i++) {
    sliceEnd = this.escapeCharPositions[i]
    subSlices.push(this.str.slice(sliceStart, sliceEnd))
    sliceStart = sliceEnd + 1
  }

  subSlices.push(this.str.slice(sliceStart, this.pos))
  this.escapeCharPositions.length = 0

  return subSlices.join('')
}

lunr.QueryLexer.prototype.emit = function (type) {
  this.lexemes.push({
    type: type,
    str: this.sliceString(),
    start: this.start,
    end: this.pos
  })

  this.start = this.pos
}

lunr.QueryLexer.prototype.escapeCharacter = function () {
  this.escapeCharPositions.push(this.pos - 1)
  this.pos += 1
}

lunr.QueryLexer.prototype.next = function () {
  if (this.pos >= this.length) {
    return lunr.QueryLexer.EOS
  }

  var char = this.str.charAt(this.pos)
  this.pos += 1
  return char
}

lunr.QueryLexer.prototype.width = function () {
  return this.pos - this.start
}

lunr.QueryLexer.prototype.ignore = function () {
  if (this.start == this.pos) {
    this.pos += 1
  }

  this.start = this.pos
}

lunr.QueryLexer.prototype.backup = function () {
  this.pos -= 1
}

lunr.QueryLexer.prototype.acceptDigitRun = function () {
  var char, charCode

  do {
    char = this.next()
    charCode = char.charCodeAt(0)
  } while (charCode > 47 && charCode < 58)

  if (char != lunr.QueryLexer.EOS) {
    this.backup()
  }
}

lunr.QueryLexer.prototype.more = function () {
  return this.pos < this.length
}

lunr.QueryLexer.EOS = 'EOS'
lunr.QueryLexer.FIELD = 'FIELD'
lunr.QueryLexer.TERM = 'TERM'
lunr.QueryLexer.EDIT_DISTANCE = 'EDIT_DISTANCE'
lunr.QueryLexer.BOOST = 'BOOST'
lunr.QueryLexer.PRESENCE = 'PRESENCE'

lunr.QueryLexer.lexField = function (lexer) {
  lexer.backup()
  lexer.emit(lunr.QueryLexer.FIELD)
  lexer.ignore()
  return lunr.QueryLexer.lexText
}

lunr.QueryLexer.lexTerm = function (lexer) {
  if (lexer.width() > 1) {
    lexer.backup()
    lexer.emit(lunr.QueryLexer.TERM)
  }

  lexer.ignore()

  if (lexer.more()) {
    return lunr.QueryLexer.lexText
  }
}

lunr.QueryLexer.lexEditDistance = function (lexer) {
  lexer.ignore()
  lexer.acceptDigitRun()
  lexer.emit(lunr.QueryLexer.EDIT_DISTANCE)
  return lunr.QueryLexer.lexText
}

lunr.QueryLexer.lexBoost = function (lexer) {
  lexer.ignore()
  lexer.acceptDigitRun()
  lexer.emit(lunr.QueryLexer.BOOST)
  return lunr.QueryLexer.lexText
}

lunr.QueryLexer.lexEOS = function (lexer) {
  if (lexer.width() > 0) {
    lexer.emit(lunr.QueryLexer.TERM)
  }
}

// This matches the separator used when tokenising fields
// within a document. These should match otherwise it is
// not possible to search for some tokens within a document.
//
// It is possible for the user to change the separator on the
// tokenizer so it _might_ clash with any other of the special
// characters already used within the search string, e.g. :.
//
// This means that it is possible to change the separator in
// such a way that makes some words unsearchable using a search
// string.
lunr.QueryLexer.termSeparator = lunr.tokenizer.separator

lunr.QueryLexer.lexText = function (lexer) {
  while (true) {
    var char = lexer.next()

    if (char == lunr.QueryLexer.EOS) {
      return lunr.QueryLexer.lexEOS
    }

    // Escape character is '\'
    if (char.charCodeAt(0) == 92) {
      lexer.escapeCharacter()
      continue
    }

    if (char == ":") {
      return lunr.QueryLexer.lexField
    }

    if (char == "~") {
      lexer.backup()
      if (lexer.width() > 0) {
        lexer.emit(lunr.QueryLexer.TERM)
      }
      return lunr.QueryLexer.lexEditDistance
    }

    if (char == "^") {
      lexer.backup()
      if (lexer.width() > 0) {
        lexer.emit(lunr.QueryLexer.TERM)
      }
      return lunr.QueryLexer.lexBoost
    }

    // "+" indicates term presence is required
    // checking for length to ensure that only
    // leading "+" are considered
    if (char == "+" && lexer.width() === 1) {
      lexer.emit(lunr.QueryLexer.PRESENCE)
      return lunr.QueryLexer.lexText
    }

    // "-" indicates term presence is prohibited
    // checking for length to ensure that only
    // leading "-" are considered
    if (char == "-" && lexer.width() === 1) {
      lexer.emit(lunr.QueryLexer.PRESENCE)
      return lunr.QueryLexer.lexText
    }

    if (char.match(lunr.QueryLexer.termSeparator)) {
      return lunr.QueryLexer.lexTerm
    }
  }
}

lunr.QueryParser = function (str, query) {
  this.lexer = new lunr.QueryLexer (str)
  this.query = query
  this.currentClause = {}
  this.lexemeIdx = 0
}

lunr.QueryParser.prototype.parse = function () {
  this.lexer.run()
  this.lexemes = this.lexer.lexemes

  var state = lunr.QueryParser.parseClause

  while (state) {
    state = state(this)
  }

  return this.query
}

lunr.QueryParser.prototype.peekLexeme = function () {
  return this.lexemes[this.lexemeIdx]
}

lunr.QueryParser.prototype.consumeLexeme = function () {
  var lexeme = this.peekLexeme()
  this.lexemeIdx += 1
  return lexeme
}

lunr.QueryParser.prototype.nextClause = function () {
  var completedClause = this.currentClause
  this.query.clause(completedClause)
  this.currentClause = {}
}

lunr.QueryParser.parseClause = function (parser) {
  var lexeme = parser.peekLexeme()

  if (lexeme == undefined) {
    return
  }

  switch (lexeme.type) {
    case lunr.QueryLexer.PRESENCE:
      return lunr.QueryParser.parsePresence
    case lunr.QueryLexer.FIELD:
      return lunr.QueryParser.parseField
    case lunr.QueryLexer.TERM:
      return lunr.QueryParser.parseTerm
    default:
      var errorMessage = "expected either a field or a term, found " + lexeme.type

      if (lexeme.str.length >= 1) {
        errorMessage += " with value '" + lexeme.str + "'"
      }

      throw new lunr.QueryParseError (errorMessage, lexeme.start, lexeme.end)
  }
}

lunr.QueryParser.parsePresence = function (parser) {
  var lexeme = parser.consumeLexeme()

  if (lexeme == undefined) {
    return
  }

  switch (lexeme.str) {
    case "-":
      parser.currentClause.presence = lunr.Query.presence.PROHIBITED
      break
    case "+":
      parser.currentClause.presence = lunr.Query.presence.REQUIRED
      break
    default:
      var errorMessage = "unrecognised presence operator'" + lexeme.str + "'"
      throw new lunr.QueryParseError (errorMessage, lexeme.start, lexeme.end)
  }

  var nextLexeme = parser.peekLexeme()

  if (nextLexeme == undefined) {
    var errorMessage = "expecting term or field, found nothing"
    throw new lunr.QueryParseError (errorMessage, lexeme.start, lexeme.end)
  }

  switch (nextLexeme.type) {
    case lunr.QueryLexer.FIELD:
      return lunr.QueryParser.parseField
    case lunr.QueryLexer.TERM:
      return lunr.QueryParser.parseTerm
    default:
      var errorMessage = "expecting term or field, found '" + nextLexeme.type + "'"
      throw new lunr.QueryParseError (errorMessage, nextLexeme.start, nextLexeme.end)
  }
}

lunr.QueryParser.parseField = function (parser) {
  var lexeme = parser.consumeLexeme()

  if (lexeme == undefined) {
    return
  }

  if (parser.query.allFields.indexOf(lexeme.str) == -1) {
    var possibleFields = parser.query.allFields.map(function (f) { return "'" + f + "'" }).join(', '),
        errorMessage = "unrecognised field '" + lexeme.str + "', possible fields: " + possibleFields

    throw new lunr.QueryParseError (errorMessage, lexeme.start, lexeme.end)
  }

  parser.currentClause.fields = [lexeme.str]

  var nextLexeme = parser.peekLexeme()

  if (nextLexeme == undefined) {
    var errorMessage = "expecting term, found nothing"
    throw new lunr.QueryParseError (errorMessage, lexeme.start, lexeme.end)
  }

  switch (nextLexeme.type) {
    case lunr.QueryLexer.TERM:
      return lunr.QueryParser.parseTerm
    default:
      var errorMessage = "expecting term, found '" + nextLexeme.type + "'"
      throw new lunr.QueryParseError (errorMessage, nextLexeme.start, nextLexeme.end)
  }
}

lunr.QueryParser.parseTerm = function (parser) {
  var lexeme = parser.consumeLexeme()

  if (lexeme == undefined) {
    return
  }

  parser.currentClause.term = lexeme.str.toLowerCase()

  if (lexeme.str.indexOf("*") != -1) {
    parser.currentClause.usePipeline = false
  }

  var nextLexeme = parser.peekLexeme()

  if (nextLexeme == undefined) {
    parser.nextClause()
    return
  }

  switch (nextLexeme.type) {
    case lunr.QueryLexer.TERM:
      parser.nextClause()
      return lunr.QueryParser.parseTerm
    case lunr.QueryLexer.FIELD:
      parser.nextClause()
      return lunr.QueryParser.parseField
    case lunr.QueryLexer.EDIT_DISTANCE:
      return lunr.QueryParser.parseEditDistance
    case lunr.QueryLexer.BOOST:
      return lunr.QueryParser.parseBoost
    case lunr.QueryLexer.PRESENCE:
      parser.nextClause()
      return lunr.QueryParser.parsePresence
    default:
      var errorMessage = "Unexpected lexeme type '" + nextLexeme.type + "'"
      throw new lunr.QueryParseError (errorMessage, nextLexeme.start, nextLexeme.end)
  }
}

lunr.QueryParser.parseEditDistance = function (parser) {
  var lexeme = parser.consumeLexeme()

  if (lexeme == undefined) {
    return
  }

  var editDistance = parseInt(lexeme.str, 10)

  if (isNaN(editDistance)) {
    var errorMessage = "edit distance must be numeric"
    throw new lunr.QueryParseError (errorMessage, lexeme.start, lexeme.end)
  }

  parser.currentClause.editDistance = editDistance

  var nextLexeme = parser.peekLexeme()

  if (nextLexeme == undefined) {
    parser.nextClause()
    return
  }

  switch (nextLexeme.type) {
    case lunr.QueryLexer.TERM:
      parser.nextClause()
      return lunr.QueryParser.parseTerm
    case lunr.QueryLexer.FIELD:
      parser.nextClause()
      return lunr.QueryParser.parseField
    case lunr.QueryLexer.EDIT_DISTANCE:
      return lunr.QueryParser.parseEditDistance
    case lunr.QueryLexer.BOOST:
      return lunr.QueryParser.parseBoost
    case lunr.QueryLexer.PRESENCE:
      parser.nextClause()
      return lunr.QueryParser.parsePresence
    default:
      var errorMessage = "Unexpected lexeme type '" + nextLexeme.type + "'"
      throw new lunr.QueryParseError (errorMessage, nextLexeme.start, nextLexeme.end)
  }
}

lunr.QueryParser.parseBoost = function (parser) {
  var lexeme = parser.consumeLexeme()

  if (lexeme == undefined) {
    return
  }

  var boost = parseInt(lexeme.str, 10)

  if (isNaN(boost)) {
    var errorMessage = "boost must be numeric"
    throw new lunr.QueryParseError (errorMessage, lexeme.start, lexeme.end)
  }

  parser.currentClause.boost = boost

  var nextLexeme = parser.peekLexeme()

  if (nextLexeme == undefined) {
    parser.nextClause()
    return
  }

  switch (nextLexeme.type) {
    case lunr.QueryLexer.TERM:
      parser.nextClause()
      return lunr.QueryParser.parseTerm
    case lunr.QueryLexer.FIELD:
      parser.nextClause()
      return lunr.QueryParser.parseField
    case lunr.QueryLexer.EDIT_DISTANCE:
      return lunr.QueryParser.parseEditDistance
    case lunr.QueryLexer.BOOST:
      return lunr.QueryParser.parseBoost
    case lunr.QueryLexer.PRESENCE:
      parser.nextClause()
      return lunr.QueryParser.parsePresence
    default:
      var errorMessage = "Unexpected lexeme type '" + nextLexeme.type + "'"
      throw new lunr.QueryParseError (errorMessage, nextLexeme.start, nextLexeme.end)
  }
}

  /**
   * export the module via AMD, CommonJS or as a browser global
   * Export code from https://github.com/umdjs/umd/blob/master/returnExports.js
   */
  ;(function (root, factory) {
    if (true) {
      // AMD. Register as an anonymous module.
      !(__WEBPACK_AMD_DEFINE_FACTORY__ = (factory),
				__WEBPACK_AMD_DEFINE_RESULT__ = (typeof __WEBPACK_AMD_DEFINE_FACTORY__ === 'function' ?
				(__WEBPACK_AMD_DEFINE_FACTORY__.call(exports, __webpack_require__, exports, module)) :
				__WEBPACK_AMD_DEFINE_FACTORY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__))
    } else {}
  }(this, function () {
    /**
     * Just return a value to define the module export.
     * This example returns an object, but the module
     * can return a function as the exported value.
     */
    return lunr
  }))
})();


/***/ }),

/***/ 116:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return BehaviorSubject; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subject__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(28);
/* harmony import */ var _util_ObjectUnsubscribedError__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(73);
/** PURE_IMPORTS_START tslib,_Subject,_util_ObjectUnsubscribedError PURE_IMPORTS_END */



var BehaviorSubject = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](BehaviorSubject, _super);
    function BehaviorSubject(_value) {
        var _this = _super.call(this) || this;
        _this._value = _value;
        return _this;
    }
    Object.defineProperty(BehaviorSubject.prototype, "value", {
        get: function () {
            return this.getValue();
        },
        enumerable: true,
        configurable: true
    });
    BehaviorSubject.prototype._subscribe = function (subscriber) {
        var subscription = _super.prototype._subscribe.call(this, subscriber);
        if (subscription && !subscription.closed) {
            subscriber.next(this._value);
        }
        return subscription;
    };
    BehaviorSubject.prototype.getValue = function () {
        if (this.hasError) {
            throw this.thrownError;
        }
        else if (this.closed) {
            throw new _util_ObjectUnsubscribedError__WEBPACK_IMPORTED_MODULE_2__[/* ObjectUnsubscribedError */ "a"]();
        }
        else {
            return this._value;
        }
    };
    BehaviorSubject.prototype.next = function (value) {
        _super.prototype.next.call(this, this._value = value);
    };
    return BehaviorSubject;
}(_Subject__WEBPACK_IMPORTED_MODULE_1__[/* Subject */ "a"]));

//# sourceMappingURL=BehaviorSubject.js.map


/***/ }),

/***/ 118:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return refCount; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/** PURE_IMPORTS_START tslib,_Subscriber PURE_IMPORTS_END */


function refCount() {
    return function refCountOperatorFunction(source) {
        return source.lift(new RefCountOperator(source));
    };
}
var RefCountOperator = /*@__PURE__*/ (function () {
    function RefCountOperator(connectable) {
        this.connectable = connectable;
    }
    RefCountOperator.prototype.call = function (subscriber, source) {
        var connectable = this.connectable;
        connectable._refCount++;
        var refCounter = new RefCountSubscriber(subscriber, connectable);
        var subscription = source.subscribe(refCounter);
        if (!refCounter.closed) {
            refCounter.connection = connectable.connect();
        }
        return subscription;
    };
    return RefCountOperator;
}());
var RefCountSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](RefCountSubscriber, _super);
    function RefCountSubscriber(destination, connectable) {
        var _this = _super.call(this, destination) || this;
        _this.connectable = connectable;
        return _this;
    }
    RefCountSubscriber.prototype._unsubscribe = function () {
        var connectable = this.connectable;
        if (!connectable) {
            this.connection = null;
            return;
        }
        this.connectable = null;
        var refCount = connectable._refCount;
        if (refCount <= 0) {
            this.connection = null;
            return;
        }
        connectable._refCount = refCount - 1;
        if (refCount > 1) {
            this.connection = null;
            return;
        }
        var connection = this.connection;
        var sharedConnection = connectable._connection;
        this.connection = null;
        if (sharedConnection && (!connection || sharedConnection === connection)) {
            sharedConnection.unsubscribe();
        }
    };
    return RefCountSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));
//# sourceMappingURL=refCount.js.map


/***/ }),

/***/ 119:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return mergeAll; });
/* harmony import */ var _mergeMap__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(62);
/* harmony import */ var _util_identity__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(95);
/** PURE_IMPORTS_START _mergeMap,_util_identity PURE_IMPORTS_END */


function mergeAll(concurrent) {
    if (concurrent === void 0) {
        concurrent = Number.POSITIVE_INFINITY;
    }
    return Object(_mergeMap__WEBPACK_IMPORTED_MODULE_0__[/* mergeMap */ "a"])(_util_identity__WEBPACK_IMPORTED_MODULE_1__[/* identity */ "a"], concurrent);
}
//# sourceMappingURL=mergeAll.js.map


/***/ }),

/***/ 12:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return __extends; });
/* unused harmony export __assign */
/* unused harmony export __rest */
/* unused harmony export __decorate */
/* unused harmony export __param */
/* unused harmony export __metadata */
/* unused harmony export __awaiter */
/* unused harmony export __generator */
/* unused harmony export __createBinding */
/* unused harmony export __exportStar */
/* unused harmony export __values */
/* unused harmony export __read */
/* unused harmony export __spread */
/* unused harmony export __spreadArrays */
/* unused harmony export __spreadArray */
/* unused harmony export __await */
/* unused harmony export __asyncGenerator */
/* unused harmony export __asyncDelegator */
/* unused harmony export __asyncValues */
/* unused harmony export __makeTemplateObject */
/* unused harmony export __importStar */
/* unused harmony export __importDefault */
/* unused harmony export __classPrivateFieldGet */
/* unused harmony export __classPrivateFieldSet */
/*! *****************************************************************************
Copyright (c) Microsoft Corporation.

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.
***************************************************************************** */
/* global Reflect, Promise */

var extendStatics = function(d, b) {
    extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
    return extendStatics(d, b);
};

function __extends(d, b) {
    if (typeof b !== "function" && b !== null)
        throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
    extendStatics(d, b);
    function __() { this.constructor = d; }
    d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
}

var __assign = function() {
    __assign = Object.assign || function __assign(t) {
        for (var s, i = 1, n = arguments.length; i < n; i++) {
            s = arguments[i];
            for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p)) t[p] = s[p];
        }
        return t;
    }
    return __assign.apply(this, arguments);
}

function __rest(s, e) {
    var t = {};
    for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p) && e.indexOf(p) < 0)
        t[p] = s[p];
    if (s != null && typeof Object.getOwnPropertySymbols === "function")
        for (var i = 0, p = Object.getOwnPropertySymbols(s); i < p.length; i++) {
            if (e.indexOf(p[i]) < 0 && Object.prototype.propertyIsEnumerable.call(s, p[i]))
                t[p[i]] = s[p[i]];
        }
    return t;
}

function __decorate(decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
}

function __param(paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
}

function __metadata(metadataKey, metadataValue) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(metadataKey, metadataValue);
}

function __awaiter(thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
}

function __generator(thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
}

var __createBinding = Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    Object.defineProperty(o, k2, { enumerable: true, get: function() { return m[k]; } });
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
});

function __exportStar(m, o) {
    for (var p in m) if (p !== "default" && !Object.prototype.hasOwnProperty.call(o, p)) __createBinding(o, m, p);
}

function __values(o) {
    var s = typeof Symbol === "function" && Symbol.iterator, m = s && o[s], i = 0;
    if (m) return m.call(o);
    if (o && typeof o.length === "number") return {
        next: function () {
            if (o && i >= o.length) o = void 0;
            return { value: o && o[i++], done: !o };
        }
    };
    throw new TypeError(s ? "Object is not iterable." : "Symbol.iterator is not defined.");
}

function __read(o, n) {
    var m = typeof Symbol === "function" && o[Symbol.iterator];
    if (!m) return o;
    var i = m.call(o), r, ar = [], e;
    try {
        while ((n === void 0 || n-- > 0) && !(r = i.next()).done) ar.push(r.value);
    }
    catch (error) { e = { error: error }; }
    finally {
        try {
            if (r && !r.done && (m = i["return"])) m.call(i);
        }
        finally { if (e) throw e.error; }
    }
    return ar;
}

/** @deprecated */
function __spread() {
    for (var ar = [], i = 0; i < arguments.length; i++)
        ar = ar.concat(__read(arguments[i]));
    return ar;
}

/** @deprecated */
function __spreadArrays() {
    for (var s = 0, i = 0, il = arguments.length; i < il; i++) s += arguments[i].length;
    for (var r = Array(s), k = 0, i = 0; i < il; i++)
        for (var a = arguments[i], j = 0, jl = a.length; j < jl; j++, k++)
            r[k] = a[j];
    return r;
}

function __spreadArray(to, from, pack) {
    if (pack || arguments.length === 2) for (var i = 0, l = from.length, ar; i < l; i++) {
        if (ar || !(i in from)) {
            if (!ar) ar = Array.prototype.slice.call(from, 0, i);
            ar[i] = from[i];
        }
    }
    return to.concat(ar || Array.prototype.slice.call(from));
}

function __await(v) {
    return this instanceof __await ? (this.v = v, this) : new __await(v);
}

function __asyncGenerator(thisArg, _arguments, generator) {
    if (!Symbol.asyncIterator) throw new TypeError("Symbol.asyncIterator is not defined.");
    var g = generator.apply(thisArg, _arguments || []), i, q = [];
    return i = {}, verb("next"), verb("throw"), verb("return"), i[Symbol.asyncIterator] = function () { return this; }, i;
    function verb(n) { if (g[n]) i[n] = function (v) { return new Promise(function (a, b) { q.push([n, v, a, b]) > 1 || resume(n, v); }); }; }
    function resume(n, v) { try { step(g[n](v)); } catch (e) { settle(q[0][3], e); } }
    function step(r) { r.value instanceof __await ? Promise.resolve(r.value.v).then(fulfill, reject) : settle(q[0][2], r); }
    function fulfill(value) { resume("next", value); }
    function reject(value) { resume("throw", value); }
    function settle(f, v) { if (f(v), q.shift(), q.length) resume(q[0][0], q[0][1]); }
}

function __asyncDelegator(o) {
    var i, p;
    return i = {}, verb("next"), verb("throw", function (e) { throw e; }), verb("return"), i[Symbol.iterator] = function () { return this; }, i;
    function verb(n, f) { i[n] = o[n] ? function (v) { return (p = !p) ? { value: __await(o[n](v)), done: n === "return" } : f ? f(v) : v; } : f; }
}

function __asyncValues(o) {
    if (!Symbol.asyncIterator) throw new TypeError("Symbol.asyncIterator is not defined.");
    var m = o[Symbol.asyncIterator], i;
    return m ? m.call(o) : (o = typeof __values === "function" ? __values(o) : o[Symbol.iterator](), i = {}, verb("next"), verb("throw"), verb("return"), i[Symbol.asyncIterator] = function () { return this; }, i);
    function verb(n) { i[n] = o[n] && function (v) { return new Promise(function (resolve, reject) { v = o[n](v), settle(resolve, reject, v.done, v.value); }); }; }
    function settle(resolve, reject, d, v) { Promise.resolve(v).then(function(v) { resolve({ value: v, done: d }); }, reject); }
}

function __makeTemplateObject(cooked, raw) {
    if (Object.defineProperty) { Object.defineProperty(cooked, "raw", { value: raw }); } else { cooked.raw = raw; }
    return cooked;
};

var __setModuleDefault = Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
};

function __importStar(mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
}

function __importDefault(mod) {
    return (mod && mod.__esModule) ? mod : { default: mod };
}

function __classPrivateFieldGet(receiver, state, kind, f) {
    if (kind === "a" && !f) throw new TypeError("Private accessor was defined without a getter");
    if (typeof state === "function" ? receiver !== state || !f : !state.has(receiver)) throw new TypeError("Cannot read private member from an object whose class did not declare it");
    return kind === "m" ? f : kind === "a" ? f.call(receiver) : f ? f.value : state.get(receiver);
}

function __classPrivateFieldSet(receiver, state, value, kind, f) {
    if (kind === "m") throw new TypeError("Private method is not writable");
    if (kind === "a" && !f) throw new TypeError("Private accessor was defined without a setter");
    if (typeof state === "function" ? receiver !== state || !f : !state.has(receiver)) throw new TypeError("Cannot write private member to an object whose class did not declare it");
    return (kind === "a" ? f.call(receiver, value) : f ? f.value = value : state.set(receiver, value)), value;
}


/***/ }),

/***/ 129:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return isArrayLike; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
var isArrayLike = (function (x) { return x && typeof x.length === 'number' && typeof x !== 'function'; });
//# sourceMappingURL=isArrayLike.js.map


/***/ }),

/***/ 130:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return subscribeToArray; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
var subscribeToArray = function (array) {
    return function (subscriber) {
        for (var i = 0, len = array.length; i < len && !subscriber.closed; i++) {
            subscriber.next(array[i]);
        }
        subscriber.complete();
    };
};
//# sourceMappingURL=subscribeToArray.js.map


/***/ }),

/***/ 131:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return isPromise; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
function isPromise(value) {
    return !!value && typeof value.subscribe !== 'function' && typeof value.then === 'function';
}
//# sourceMappingURL=isPromise.js.map


/***/ }),

/***/ 132:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return fromArray; });
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(15);
/* harmony import */ var _util_subscribeToArray__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(130);
/* harmony import */ var _scheduled_scheduleArray__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(110);
/** PURE_IMPORTS_START _Observable,_util_subscribeToArray,_scheduled_scheduleArray PURE_IMPORTS_END */



function fromArray(input, scheduler) {
    if (!scheduler) {
        return new _Observable__WEBPACK_IMPORTED_MODULE_0__[/* Observable */ "a"](Object(_util_subscribeToArray__WEBPACK_IMPORTED_MODULE_1__[/* subscribeToArray */ "a"])(input));
    }
    else {
        return Object(_scheduled_scheduleArray__WEBPACK_IMPORTED_MODULE_2__[/* scheduleArray */ "a"])(input, scheduler);
    }
}
//# sourceMappingURL=fromArray.js.map


/***/ }),

/***/ 137:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* unused harmony export asyncScheduler */
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return async; });
/* harmony import */ var _AsyncAction__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(150);
/* harmony import */ var _AsyncScheduler__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(149);
/** PURE_IMPORTS_START _AsyncAction,_AsyncScheduler PURE_IMPORTS_END */


var asyncScheduler = /*@__PURE__*/ new _AsyncScheduler__WEBPACK_IMPORTED_MODULE_1__[/* AsyncScheduler */ "a"](_AsyncAction__WEBPACK_IMPORTED_MODULE_0__[/* AsyncAction */ "a"]);
var async = asyncScheduler;
//# sourceMappingURL=async.js.map


/***/ }),

/***/ 149:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ AsyncScheduler_AsyncScheduler; });

// EXTERNAL MODULE: ./node_modules/tslib/tslib.es6.js
var tslib_es6 = __webpack_require__(12);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/Scheduler.js
var Scheduler = /*@__PURE__*/ (function () {
    function Scheduler(SchedulerAction, now) {
        if (now === void 0) {
            now = Scheduler.now;
        }
        this.SchedulerAction = SchedulerAction;
        this.now = now;
    }
    Scheduler.prototype.schedule = function (work, delay, state) {
        if (delay === void 0) {
            delay = 0;
        }
        return new this.SchedulerAction(this, work).schedule(state, delay);
    };
    Scheduler.now = function () { return Date.now(); };
    return Scheduler;
}());

//# sourceMappingURL=Scheduler.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AsyncScheduler.js
/** PURE_IMPORTS_START tslib,_Scheduler PURE_IMPORTS_END */


var AsyncScheduler_AsyncScheduler = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](AsyncScheduler, _super);
    function AsyncScheduler(SchedulerAction, now) {
        if (now === void 0) {
            now = Scheduler.now;
        }
        var _this = _super.call(this, SchedulerAction, function () {
            if (AsyncScheduler.delegate && AsyncScheduler.delegate !== _this) {
                return AsyncScheduler.delegate.now();
            }
            else {
                return now();
            }
        }) || this;
        _this.actions = [];
        _this.active = false;
        _this.scheduled = undefined;
        return _this;
    }
    AsyncScheduler.prototype.schedule = function (work, delay, state) {
        if (delay === void 0) {
            delay = 0;
        }
        if (AsyncScheduler.delegate && AsyncScheduler.delegate !== this) {
            return AsyncScheduler.delegate.schedule(work, delay, state);
        }
        else {
            return _super.prototype.schedule.call(this, work, delay, state);
        }
    };
    AsyncScheduler.prototype.flush = function (action) {
        var actions = this.actions;
        if (this.active) {
            actions.push(action);
            return;
        }
        var error;
        this.active = true;
        do {
            if (error = action.execute(action.state, action.delay)) {
                break;
            }
        } while (action = actions.shift());
        this.active = false;
        if (error) {
            while (action = actions.shift()) {
                action.unsubscribe();
            }
            throw error;
        }
    };
    return AsyncScheduler;
}(Scheduler));

//# sourceMappingURL=AsyncScheduler.js.map


/***/ }),

/***/ 15:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ Observable_Observable; });

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Subscriber.js
var Subscriber = __webpack_require__(18);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/canReportError.js
/** PURE_IMPORTS_START _Subscriber PURE_IMPORTS_END */

function canReportError(observer) {
    while (observer) {
        var _a = observer, closed_1 = _a.closed, destination = _a.destination, isStopped = _a.isStopped;
        if (closed_1 || isStopped) {
            return false;
        }
        else if (destination && destination instanceof Subscriber["a" /* Subscriber */]) {
            observer = destination;
        }
        else {
            observer = null;
        }
    }
    return true;
}
//# sourceMappingURL=canReportError.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/symbol/rxSubscriber.js
var rxSubscriber = __webpack_require__(82);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Observer.js
var Observer = __webpack_require__(97);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/toSubscriber.js
/** PURE_IMPORTS_START _Subscriber,_symbol_rxSubscriber,_Observer PURE_IMPORTS_END */



function toSubscriber(nextOrObserver, error, complete) {
    if (nextOrObserver) {
        if (nextOrObserver instanceof Subscriber["a" /* Subscriber */]) {
            return nextOrObserver;
        }
        if (nextOrObserver[rxSubscriber["a" /* rxSubscriber */]]) {
            return nextOrObserver[rxSubscriber["a" /* rxSubscriber */]]();
        }
    }
    if (!nextOrObserver && !error && !complete) {
        return new Subscriber["a" /* Subscriber */](Observer["a" /* empty */]);
    }
    return new Subscriber["a" /* Subscriber */](nextOrObserver, error, complete);
}
//# sourceMappingURL=toSubscriber.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/symbol/observable.js
var observable = __webpack_require__(61);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/identity.js
var identity = __webpack_require__(95);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/pipe.js
/** PURE_IMPORTS_START _identity PURE_IMPORTS_END */

function pipe() {
    var fns = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        fns[_i] = arguments[_i];
    }
    return pipeFromArray(fns);
}
function pipeFromArray(fns) {
    if (fns.length === 0) {
        return identity["a" /* identity */];
    }
    if (fns.length === 1) {
        return fns[0];
    }
    return function piped(input) {
        return fns.reduce(function (prev, fn) { return fn(prev); }, input);
    };
}
//# sourceMappingURL=pipe.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/config.js
var config = __webpack_require__(47);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/Observable.js
/** PURE_IMPORTS_START _util_canReportError,_util_toSubscriber,_symbol_observable,_util_pipe,_config PURE_IMPORTS_END */





var Observable_Observable = /*@__PURE__*/ (function () {
    function Observable(subscribe) {
        this._isScalar = false;
        if (subscribe) {
            this._subscribe = subscribe;
        }
    }
    Observable.prototype.lift = function (operator) {
        var observable = new Observable();
        observable.source = this;
        observable.operator = operator;
        return observable;
    };
    Observable.prototype.subscribe = function (observerOrNext, error, complete) {
        var operator = this.operator;
        var sink = toSubscriber(observerOrNext, error, complete);
        if (operator) {
            sink.add(operator.call(sink, this.source));
        }
        else {
            sink.add(this.source || (config["a" /* config */].useDeprecatedSynchronousErrorHandling && !sink.syncErrorThrowable) ?
                this._subscribe(sink) :
                this._trySubscribe(sink));
        }
        if (config["a" /* config */].useDeprecatedSynchronousErrorHandling) {
            if (sink.syncErrorThrowable) {
                sink.syncErrorThrowable = false;
                if (sink.syncErrorThrown) {
                    throw sink.syncErrorValue;
                }
            }
        }
        return sink;
    };
    Observable.prototype._trySubscribe = function (sink) {
        try {
            return this._subscribe(sink);
        }
        catch (err) {
            if (config["a" /* config */].useDeprecatedSynchronousErrorHandling) {
                sink.syncErrorThrown = true;
                sink.syncErrorValue = err;
            }
            if (canReportError(sink)) {
                sink.error(err);
            }
            else {
                console.warn(err);
            }
        }
    };
    Observable.prototype.forEach = function (next, promiseCtor) {
        var _this = this;
        promiseCtor = getPromiseCtor(promiseCtor);
        return new promiseCtor(function (resolve, reject) {
            var subscription;
            subscription = _this.subscribe(function (value) {
                try {
                    next(value);
                }
                catch (err) {
                    reject(err);
                    if (subscription) {
                        subscription.unsubscribe();
                    }
                }
            }, reject, resolve);
        });
    };
    Observable.prototype._subscribe = function (subscriber) {
        var source = this.source;
        return source && source.subscribe(subscriber);
    };
    Observable.prototype[observable["a" /* observable */]] = function () {
        return this;
    };
    Observable.prototype.pipe = function () {
        var operations = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            operations[_i] = arguments[_i];
        }
        if (operations.length === 0) {
            return this;
        }
        return pipeFromArray(operations)(this);
    };
    Observable.prototype.toPromise = function (promiseCtor) {
        var _this = this;
        promiseCtor = getPromiseCtor(promiseCtor);
        return new promiseCtor(function (resolve, reject) {
            var value;
            _this.subscribe(function (x) { return value = x; }, function (err) { return reject(err); }, function () { return resolve(value); });
        });
    };
    Observable.create = function (subscribe) {
        return new Observable(subscribe);
    };
    return Observable;
}());

function getPromiseCtor(promiseCtor) {
    if (!promiseCtor) {
        promiseCtor = config["a" /* config */].Promise || Promise;
    }
    if (!promiseCtor) {
        throw new Error('no Promise impl found');
    }
    return promiseCtor;
}
//# sourceMappingURL=Observable.js.map


/***/ }),

/***/ 150:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ AsyncAction_AsyncAction; });

// EXTERNAL MODULE: ./node_modules/tslib/tslib.es6.js
var tslib_es6 = __webpack_require__(12);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Subscription.js + 1 modules
var Subscription = __webpack_require__(22);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/Action.js
/** PURE_IMPORTS_START tslib,_Subscription PURE_IMPORTS_END */


var Action_Action = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](Action, _super);
    function Action(scheduler, work) {
        return _super.call(this) || this;
    }
    Action.prototype.schedule = function (state, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        return this;
    };
    return Action;
}(Subscription["a" /* Subscription */]));

//# sourceMappingURL=Action.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AsyncAction.js
/** PURE_IMPORTS_START tslib,_Action PURE_IMPORTS_END */


var AsyncAction_AsyncAction = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](AsyncAction, _super);
    function AsyncAction(scheduler, work) {
        var _this = _super.call(this, scheduler, work) || this;
        _this.scheduler = scheduler;
        _this.work = work;
        _this.pending = false;
        return _this;
    }
    AsyncAction.prototype.schedule = function (state, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        if (this.closed) {
            return this;
        }
        this.state = state;
        var id = this.id;
        var scheduler = this.scheduler;
        if (id != null) {
            this.id = this.recycleAsyncId(scheduler, id, delay);
        }
        this.pending = true;
        this.delay = delay;
        this.id = this.id || this.requestAsyncId(scheduler, this.id, delay);
        return this;
    };
    AsyncAction.prototype.requestAsyncId = function (scheduler, id, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        return setInterval(scheduler.flush.bind(scheduler, this), delay);
    };
    AsyncAction.prototype.recycleAsyncId = function (scheduler, id, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        if (delay !== null && this.delay === delay && this.pending === false) {
            return id;
        }
        clearInterval(id);
        return undefined;
    };
    AsyncAction.prototype.execute = function (state, delay) {
        if (this.closed) {
            return new Error('executing a cancelled action');
        }
        this.pending = false;
        var error = this._execute(state, delay);
        if (error) {
            return error;
        }
        else if (this.pending === false && this.id != null) {
            this.id = this.recycleAsyncId(this.scheduler, this.id, null);
        }
    };
    AsyncAction.prototype._execute = function (state, delay) {
        var errored = false;
        var errorValue = undefined;
        try {
            this.work(state);
        }
        catch (e) {
            errored = true;
            errorValue = !!e && e || new Error(e);
        }
        if (errored) {
            this.unsubscribe();
            return errorValue;
        }
    };
    AsyncAction.prototype._unsubscribe = function () {
        var id = this.id;
        var scheduler = this.scheduler;
        var actions = scheduler.actions;
        var index = actions.indexOf(this);
        this.work = null;
        this.state = null;
        this.pending = false;
        this.scheduler = null;
        if (index !== -1) {
            actions.splice(index, 1);
        }
        if (id != null) {
            this.id = this.recycleAsyncId(scheduler, id, null);
        }
        this.delay = null;
    };
    return AsyncAction;
}(Action_Action));

//# sourceMappingURL=AsyncAction.js.map


/***/ }),

/***/ 151:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return filter; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/** PURE_IMPORTS_START tslib,_Subscriber PURE_IMPORTS_END */


function filter(predicate, thisArg) {
    return function filterOperatorFunction(source) {
        return source.lift(new FilterOperator(predicate, thisArg));
    };
}
var FilterOperator = /*@__PURE__*/ (function () {
    function FilterOperator(predicate, thisArg) {
        this.predicate = predicate;
        this.thisArg = thisArg;
    }
    FilterOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new FilterSubscriber(subscriber, this.predicate, this.thisArg));
    };
    return FilterOperator;
}());
var FilterSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](FilterSubscriber, _super);
    function FilterSubscriber(destination, predicate, thisArg) {
        var _this = _super.call(this, destination) || this;
        _this.predicate = predicate;
        _this.thisArg = thisArg;
        _this.count = 0;
        return _this;
    }
    FilterSubscriber.prototype._next = function (value) {
        var result;
        try {
            result = this.predicate.call(this.thisArg, value, this.count++);
        }
        catch (err) {
            this.destination.error(err);
            return;
        }
        if (result) {
            this.destination.next(value);
        }
    };
    return FilterSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));
//# sourceMappingURL=filter.js.map


/***/ }),

/***/ 153:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// NAMESPACE OBJECT: ./node_modules/sweetalert2/src/staticMethods.js
var staticMethods_namespaceObject = {};
__webpack_require__.r(staticMethods_namespaceObject);
__webpack_require__.d(staticMethods_namespaceObject, "argsToParams", function() { return argsToParams; });
__webpack_require__.d(staticMethods_namespaceObject, "getContainer", function() { return getContainer; });
__webpack_require__.d(staticMethods_namespaceObject, "getPopup", function() { return getPopup; });
__webpack_require__.d(staticMethods_namespaceObject, "getTitle", function() { return getTitle; });
__webpack_require__.d(staticMethods_namespaceObject, "getContent", function() { return getContent; });
__webpack_require__.d(staticMethods_namespaceObject, "getHtmlContainer", function() { return getHtmlContainer; });
__webpack_require__.d(staticMethods_namespaceObject, "getImage", function() { return getImage; });
__webpack_require__.d(staticMethods_namespaceObject, "getIcon", function() { return getIcon; });
__webpack_require__.d(staticMethods_namespaceObject, "getInputLabel", function() { return getInputLabel; });
__webpack_require__.d(staticMethods_namespaceObject, "getCloseButton", function() { return getCloseButton; });
__webpack_require__.d(staticMethods_namespaceObject, "getActions", function() { return getActions; });
__webpack_require__.d(staticMethods_namespaceObject, "getConfirmButton", function() { return getConfirmButton; });
__webpack_require__.d(staticMethods_namespaceObject, "getDenyButton", function() { return getDenyButton; });
__webpack_require__.d(staticMethods_namespaceObject, "getCancelButton", function() { return getCancelButton; });
__webpack_require__.d(staticMethods_namespaceObject, "getLoader", function() { return getLoader; });
__webpack_require__.d(staticMethods_namespaceObject, "getHeader", function() { return getHeader; });
__webpack_require__.d(staticMethods_namespaceObject, "getFooter", function() { return getFooter; });
__webpack_require__.d(staticMethods_namespaceObject, "getTimerProgressBar", function() { return getTimerProgressBar; });
__webpack_require__.d(staticMethods_namespaceObject, "getFocusableElements", function() { return getFocusableElements; });
__webpack_require__.d(staticMethods_namespaceObject, "getValidationMessage", function() { return getValidationMessage; });
__webpack_require__.d(staticMethods_namespaceObject, "isLoading", function() { return isLoading; });
__webpack_require__.d(staticMethods_namespaceObject, "isVisible", function() { return dom_isVisible; });
__webpack_require__.d(staticMethods_namespaceObject, "clickConfirm", function() { return clickConfirm; });
__webpack_require__.d(staticMethods_namespaceObject, "clickDeny", function() { return clickDeny; });
__webpack_require__.d(staticMethods_namespaceObject, "clickCancel", function() { return clickCancel; });
__webpack_require__.d(staticMethods_namespaceObject, "fire", function() { return fire; });
__webpack_require__.d(staticMethods_namespaceObject, "mixin", function() { return mixin; });
__webpack_require__.d(staticMethods_namespaceObject, "queue", function() { return queue; });
__webpack_require__.d(staticMethods_namespaceObject, "getQueueStep", function() { return getQueueStep; });
__webpack_require__.d(staticMethods_namespaceObject, "insertQueueStep", function() { return insertQueueStep; });
__webpack_require__.d(staticMethods_namespaceObject, "deleteQueueStep", function() { return deleteQueueStep; });
__webpack_require__.d(staticMethods_namespaceObject, "showLoading", function() { return showLoading; });
__webpack_require__.d(staticMethods_namespaceObject, "enableLoading", function() { return showLoading; });
__webpack_require__.d(staticMethods_namespaceObject, "getTimerLeft", function() { return getTimerLeft; });
__webpack_require__.d(staticMethods_namespaceObject, "stopTimer", function() { return stopTimer; });
__webpack_require__.d(staticMethods_namespaceObject, "resumeTimer", function() { return resumeTimer; });
__webpack_require__.d(staticMethods_namespaceObject, "toggleTimer", function() { return toggleTimer; });
__webpack_require__.d(staticMethods_namespaceObject, "increaseTimer", function() { return increaseTimer; });
__webpack_require__.d(staticMethods_namespaceObject, "isTimerRunning", function() { return isTimerRunning; });
__webpack_require__.d(staticMethods_namespaceObject, "bindClickHandler", function() { return bindClickHandler; });
__webpack_require__.d(staticMethods_namespaceObject, "isValidParameter", function() { return isValidParameter; });
__webpack_require__.d(staticMethods_namespaceObject, "isUpdatableParameter", function() { return isUpdatableParameter; });
__webpack_require__.d(staticMethods_namespaceObject, "isDeprecatedParameter", function() { return isDeprecatedParameter; });

// NAMESPACE OBJECT: ./node_modules/sweetalert2/src/instanceMethods.js
var instanceMethods_namespaceObject = {};
__webpack_require__.r(instanceMethods_namespaceObject);
__webpack_require__.d(instanceMethods_namespaceObject, "hideLoading", function() { return hideLoading; });
__webpack_require__.d(instanceMethods_namespaceObject, "disableLoading", function() { return hideLoading; });
__webpack_require__.d(instanceMethods_namespaceObject, "getInput", function() { return getInput_getInput; });
__webpack_require__.d(instanceMethods_namespaceObject, "close", function() { return close_close; });
__webpack_require__.d(instanceMethods_namespaceObject, "closePopup", function() { return close_close; });
__webpack_require__.d(instanceMethods_namespaceObject, "closeModal", function() { return close_close; });
__webpack_require__.d(instanceMethods_namespaceObject, "closeToast", function() { return close_close; });
__webpack_require__.d(instanceMethods_namespaceObject, "enableButtons", function() { return enableButtons; });
__webpack_require__.d(instanceMethods_namespaceObject, "disableButtons", function() { return disableButtons; });
__webpack_require__.d(instanceMethods_namespaceObject, "enableInput", function() { return enableInput; });
__webpack_require__.d(instanceMethods_namespaceObject, "disableInput", function() { return disableInput; });
__webpack_require__.d(instanceMethods_namespaceObject, "showValidationMessage", function() { return showValidationMessage; });
__webpack_require__.d(instanceMethods_namespaceObject, "resetValidationMessage", function() { return validation_message_resetValidationMessage; });
__webpack_require__.d(instanceMethods_namespaceObject, "getProgressSteps", function() { return progress_steps_getProgressSteps; });
__webpack_require__.d(instanceMethods_namespaceObject, "_main", function() { return _main; });
__webpack_require__.d(instanceMethods_namespaceObject, "update", function() { return update; });
__webpack_require__.d(instanceMethods_namespaceObject, "_destroy", function() { return _destroy; });

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/utils.js
const consolePrefix = 'SweetAlert2:'

/**
 * Filter the unique values into a new array
 * @param arr
 */
const uniqueArray = (arr) => {
  const result = []
  for (let i = 0; i < arr.length; i++) {
    if (result.indexOf(arr[i]) === -1) {
      result.push(arr[i])
    }
  }
  return result
}

/**
 * Capitalize the first letter of a string
 * @param str
 */
const capitalizeFirstLetter = (str) => str.charAt(0).toUpperCase() + str.slice(1)

/**
 * Returns the array of object values (Object.values isn't supported in IE11)
 * @param obj
 */
const objectValues = (obj) => Object.keys(obj).map(key => obj[key])

/**
 * Convert NodeList to Array
 * @param nodeList
 */
const toArray = (nodeList) => Array.prototype.slice.call(nodeList)

/**
 * Standardise console warnings
 * @param message
 */
const warn = (message) => {
  console.warn(`${consolePrefix} ${typeof message === 'object' ? message.join(' ') : message}`)
}

/**
 * Standardise console errors
 * @param message
 */
const utils_error = (message) => {
  console.error(`${consolePrefix} ${message}`)
}

/**
 * Private global state for `warnOnce`
 * @type {Array}
 * @private
 */
const previousWarnOnceMessages = []

/**
 * Show a console warning, but only if it hasn't already been shown
 * @param message
 */
const warnOnce = (message) => {
  if (!previousWarnOnceMessages.includes(message)) {
    previousWarnOnceMessages.push(message)
    warn(message)
  }
}

/**
 * Show a one-time console warning about deprecated params/methods
 */
const warnAboutDeprecation = (deprecatedParam, useInstead) => {
  warnOnce(`"${deprecatedParam}" is deprecated and will be removed in the next major release. Please use "${useInstead}" instead.`)
}

/**
 * If `arg` is a function, call it (with no arguments or context) and return the result.
 * Otherwise, just pass the value through
 * @param arg
 */
const callIfFunction = (arg) => typeof arg === 'function' ? arg() : arg

const hasToPromiseFn = (arg) => arg && typeof arg.toPromise === 'function'

const asPromise = (arg) => hasToPromiseFn(arg) ? arg.toPromise() : Promise.resolve(arg)

const isPromise = (arg) => arg && Promise.resolve(arg) === arg

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/DismissReason.js
const DismissReason = Object.freeze({
  cancel: 'cancel',
  backdrop: 'backdrop',
  close: 'close',
  esc: 'esc',
  timer: 'timer'
})

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/staticMethods/argsToParams.js


const isJqueryElement = (elem) => typeof elem === 'object' && elem.jquery
const isElement = (elem) => elem instanceof Element || isJqueryElement(elem)

const argsToParams = (args) => {
  const params = {}
  if (typeof args[0] === 'object' && !isElement(args[0])) {
    Object.assign(params, args[0])
  } else {
    ['title', 'html', 'icon'].forEach((name, index) => {
      const arg = args[index]
      if (typeof arg === 'string' || isElement(arg)) {
        params[name] = arg
      } else if (arg !== undefined) {
        utils_error(`Unexpected type of ${name}! Expected "string" or "Element", got ${typeof arg}`)
      }
    })
  }
  return params
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/classes.js
const swalPrefix = 'swal2-'

const prefix = (items) => {
  const result = {}
  for (const i in items) {
    result[items[i]] = swalPrefix + items[i]
  }
  return result
}

const swalClasses = prefix([
  'container',
  'shown',
  'height-auto',
  'iosfix',
  'popup',
  'modal',
  'no-backdrop',
  'no-transition',
  'toast',
  'toast-shown',
  'show',
  'hide',
  'close',
  'title',
  'header',
  'content',
  'html-container',
  'actions',
  'confirm',
  'deny',
  'cancel',
  'footer',
  'icon',
  'icon-content',
  'image',
  'input',
  'file',
  'range',
  'select',
  'radio',
  'checkbox',
  'label',
  'textarea',
  'inputerror',
  'input-label',
  'validation-message',
  'progress-steps',
  'active-progress-step',
  'progress-step',
  'progress-step-line',
  'loader',
  'loading',
  'styled',
  'top',
  'top-start',
  'top-end',
  'top-left',
  'top-right',
  'center',
  'center-start',
  'center-end',
  'center-left',
  'center-right',
  'bottom',
  'bottom-start',
  'bottom-end',
  'bottom-left',
  'bottom-right',
  'grow-row',
  'grow-column',
  'grow-fullscreen',
  'rtl',
  'timer-progress-bar',
  'timer-progress-bar-container',
  'scrollbar-measure',
  'icon-success',
  'icon-warning',
  'icon-info',
  'icon-question',
  'icon-error',
])

const iconTypes = prefix([
  'success',
  'warning',
  'info',
  'question',
  'error'
])

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/getters.js




const getContainer = () => document.body.querySelector(`.${swalClasses.container}`)

const elementBySelector = (selectorString) => {
  const container = getContainer()
  return container ? container.querySelector(selectorString) : null
}

const elementByClass = (className) => {
  return elementBySelector(`.${className}`)
}

const getPopup = () => elementByClass(swalClasses.popup)

const getIcon = () => elementByClass(swalClasses.icon)

const getTitle = () => elementByClass(swalClasses.title)

const getContent = () => elementByClass(swalClasses.content)

const getHtmlContainer = () => elementByClass(swalClasses['html-container'])

const getImage = () => elementByClass(swalClasses.image)

const getProgressSteps = () => elementByClass(swalClasses['progress-steps'])

const getValidationMessage = () => elementByClass(swalClasses['validation-message'])

const getConfirmButton = () => elementBySelector(`.${swalClasses.actions} .${swalClasses.confirm}`)

const getDenyButton = () => elementBySelector(`.${swalClasses.actions} .${swalClasses.deny}`)

const getInputLabel = () => elementByClass(swalClasses['input-label'])

const getLoader = () => elementBySelector(`.${swalClasses.loader}`)

const getCancelButton = () => elementBySelector(`.${swalClasses.actions} .${swalClasses.cancel}`)

const getActions = () => elementByClass(swalClasses.actions)

const getHeader = () => elementByClass(swalClasses.header)

const getFooter = () => elementByClass(swalClasses.footer)

const getTimerProgressBar = () => elementByClass(swalClasses['timer-progress-bar'])

const getCloseButton = () => elementByClass(swalClasses.close)

// https://github.com/jkup/focusable/blob/master/index.js
const focusable = `
  a[href],
  area[href],
  input:not([disabled]),
  select:not([disabled]),
  textarea:not([disabled]),
  button:not([disabled]),
  iframe,
  object,
  embed,
  [tabindex="0"],
  [contenteditable],
  audio[controls],
  video[controls],
  summary
`

const getFocusableElements = () => {
  const focusableElementsWithTabindex = toArray(
    getPopup().querySelectorAll('[tabindex]:not([tabindex="-1"]):not([tabindex="0"])')
  )
  // sort according to tabindex
    .sort((a, b) => {
      a = parseInt(a.getAttribute('tabindex'))
      b = parseInt(b.getAttribute('tabindex'))
      if (a > b) {
        return 1
      } else if (a < b) {
        return -1
      }
      return 0
    })

  const otherFocusableElements = toArray(
    getPopup().querySelectorAll(focusable)
  ).filter(el => el.getAttribute('tabindex') !== '-1')

  return uniqueArray(focusableElementsWithTabindex.concat(otherFocusableElements)).filter(el => isVisible(el))
}

const isModal = () => {
  return !isToast() && !document.body.classList.contains(swalClasses['no-backdrop'])
}

const isToast = () => {
  return document.body.classList.contains(swalClasses['toast-shown'])
}

const isLoading = () => {
  return getPopup().hasAttribute('data-loading')
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/domUtils.js




// Remember state in cases where opening and handling a modal will fiddle with it.
const states = {
  previousBodyPadding: null
}

const setInnerHtml = (elem, html) => { // #1926
  elem.textContent = ''
  if (html) {
    const parser = new DOMParser()
    const parsed = parser.parseFromString(html, `text/html`)
    toArray(parsed.querySelector('head').childNodes).forEach((child) => {
      elem.appendChild(child)
    })
    toArray(parsed.querySelector('body').childNodes).forEach((child) => {
      elem.appendChild(child)
    })
  }
}

const hasClass = (elem, className) => {
  if (!className) {
    return false
  }
  const classList = className.split(/\s+/)
  for (let i = 0; i < classList.length; i++) {
    if (!elem.classList.contains(classList[i])) {
      return false
    }
  }
  return true
}

const removeCustomClasses = (elem, params) => {
  toArray(elem.classList).forEach(className => {
    if (
      !objectValues(swalClasses).includes(className) &&
      !objectValues(iconTypes).includes(className) &&
      !objectValues(params.showClass).includes(className)
    ) {
      elem.classList.remove(className)
    }
  })
}

const applyCustomClass = (elem, params, className) => {
  removeCustomClasses(elem, params)

  if (params.customClass && params.customClass[className]) {
    if (typeof params.customClass[className] !== 'string' && !params.customClass[className].forEach) {
      return warn(`Invalid type of customClass.${className}! Expected string or iterable object, got "${typeof params.customClass[className]}"`)
    }

    addClass(elem, params.customClass[className])
  }
}

function getInput (content, inputType) {
  if (!inputType) {
    return null
  }
  switch (inputType) {
    case 'select':
    case 'textarea':
    case 'file':
      return getChildByClass(content, swalClasses[inputType])
    case 'checkbox':
      return content.querySelector(`.${swalClasses.checkbox} input`)
    case 'radio':
      return content.querySelector(`.${swalClasses.radio} input:checked`) ||
        content.querySelector(`.${swalClasses.radio} input:first-child`)
    case 'range':
      return content.querySelector(`.${swalClasses.range} input`)
    default:
      return getChildByClass(content, swalClasses.input)
  }
}

const focusInput = (input) => {
  input.focus()

  // place cursor at end of text in text input
  if (input.type !== 'file') {
    // http://stackoverflow.com/a/2345915
    const val = input.value
    input.value = ''
    input.value = val
  }
}

const toggleClass = (target, classList, condition) => {
  if (!target || !classList) {
    return
  }
  if (typeof classList === 'string') {
    classList = classList.split(/\s+/).filter(Boolean)
  }
  classList.forEach((className) => {
    if (target.forEach) {
      target.forEach((elem) => {
        condition ? elem.classList.add(className) : elem.classList.remove(className)
      })
    } else {
      condition ? target.classList.add(className) : target.classList.remove(className)
    }
  })
}

const addClass = (target, classList) => {
  toggleClass(target, classList, true)
}

const removeClass = (target, classList) => {
  toggleClass(target, classList, false)
}

const getChildByClass = (elem, className) => {
  for (let i = 0; i < elem.childNodes.length; i++) {
    if (hasClass(elem.childNodes[i], className)) {
      return elem.childNodes[i]
    }
  }
}

const applyNumericalStyle = (elem, property, value) => {
  if (value === `${parseInt(value)}`) {
    value = parseInt(value)
  }
  if (value || parseInt(value) === 0) {
    elem.style[property] = (typeof value === 'number') ? `${value}px` : value
  } else {
    elem.style.removeProperty(property)
  }
}

const show = (elem, display = 'flex') => {
  elem.style.display = display
}

const hide = (elem) => {
  elem.style.display = 'none'
}

const setStyle = (parent, selector, property, value) => {
  const el = parent.querySelector(selector)
  if (el) {
    el.style[property] = value
  }
}

const toggle = (elem, condition, display) => {
  condition ? show(elem, display) : hide(elem)
}

// borrowed from jquery $(elem).is(':visible') implementation
const isVisible = (elem) => !!(elem && (elem.offsetWidth || elem.offsetHeight || elem.getClientRects().length))

const allButtonsAreHidden = () => !isVisible(getConfirmButton()) && !isVisible(getDenyButton()) && !isVisible(getCancelButton())

const isScrollable = (elem) => !!(elem.scrollHeight > elem.clientHeight)

// borrowed from https://stackoverflow.com/a/46352119
const hasCssAnimation = (elem) => {
  const style = window.getComputedStyle(elem)

  const animDuration = parseFloat(style.getPropertyValue('animation-duration') || '0')
  const transDuration = parseFloat(style.getPropertyValue('transition-duration') || '0')

  return animDuration > 0 || transDuration > 0
}

const contains = (haystack, needle) => {
  if (typeof haystack.contains === 'function') {
    return haystack.contains(needle)
  }
}

const animateTimerProgressBar = (timer, reset = false) => {
  const timerProgressBar = getTimerProgressBar()
  if (isVisible(timerProgressBar)) {
    if (reset) {
      timerProgressBar.style.transition = 'none'
      timerProgressBar.style.width = '100%'
    }
    setTimeout(() => {
      timerProgressBar.style.transition = `width ${timer / 1000}s linear`
      timerProgressBar.style.width = '0%'
    }, 10)
  }
}

const stopTimerProgressBar = () => {
  const timerProgressBar = getTimerProgressBar()
  const timerProgressBarWidth = parseInt(window.getComputedStyle(timerProgressBar).width)
  timerProgressBar.style.removeProperty('transition')
  timerProgressBar.style.width = '100%'
  const timerProgressBarFullWidth = parseInt(window.getComputedStyle(timerProgressBar).width)
  const timerProgressBarPercent = parseInt(timerProgressBarWidth / timerProgressBarFullWidth * 100)
  timerProgressBar.style.removeProperty('transition')
  timerProgressBar.style.width = `${timerProgressBarPercent}%`
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/isNodeEnv.js
// Detect Node env
const isNodeEnv = () => typeof window === 'undefined' || typeof document === 'undefined'

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/init.js







const sweetHTML = `
 <div aria-labelledby="${swalClasses.title}" aria-describedby="${swalClasses.content}" class="${swalClasses.popup}" tabindex="-1">
   <div class="${swalClasses.header}">
     <ul class="${swalClasses['progress-steps']}"></ul>
     <div class="${swalClasses.icon}"></div>
     <img class="${swalClasses.image}" />
     <h2 class="${swalClasses.title}" id="${swalClasses.title}"></h2>
     <button type="button" class="${swalClasses.close}"></button>
   </div>
   <div class="${swalClasses.content}">
     <div id="${swalClasses.content}" class="${swalClasses['html-container']}"></div>
     <input class="${swalClasses.input}" />
     <input type="file" class="${swalClasses.file}" />
     <div class="${swalClasses.range}">
       <input type="range" />
       <output></output>
     </div>
     <select class="${swalClasses.select}"></select>
     <div class="${swalClasses.radio}"></div>
     <label for="${swalClasses.checkbox}" class="${swalClasses.checkbox}">
       <input type="checkbox" />
       <span class="${swalClasses.label}"></span>
     </label>
     <textarea class="${swalClasses.textarea}"></textarea>
     <div class="${swalClasses['validation-message']}" id="${swalClasses['validation-message']}"></div>
   </div>
   <div class="${swalClasses.actions}">
     <div class="${swalClasses.loader}"></div>
     <button type="button" class="${swalClasses.confirm}"></button>
     <button type="button" class="${swalClasses.deny}"></button>
     <button type="button" class="${swalClasses.cancel}"></button>
   </div>
   <div class="${swalClasses.footer}"></div>
   <div class="${swalClasses['timer-progress-bar-container']}">
     <div class="${swalClasses['timer-progress-bar']}"></div>
   </div>
 </div>
`.replace(/(^|\n)\s*/g, '')

const resetOldContainer = () => {
  const oldContainer = getContainer()
  if (!oldContainer) {
    return false
  }

  oldContainer.parentNode.removeChild(oldContainer)
  removeClass(
    [document.documentElement, document.body],
    [
      swalClasses['no-backdrop'],
      swalClasses['toast-shown'],
      swalClasses['has-column']
    ]
  )

  return true
}

let oldInputVal // IE11 workaround, see #1109 for details
const resetValidationMessage = (e) => {
  if (sweetalert2.isVisible() && oldInputVal !== e.target.value) {
    sweetalert2.resetValidationMessage()
  }
  oldInputVal = e.target.value
}

const addInputChangeListeners = () => {
  const content = getContent()

  const input = getChildByClass(content, swalClasses.input)
  const file = getChildByClass(content, swalClasses.file)
  const range = content.querySelector(`.${swalClasses.range} input`)
  const rangeOutput = content.querySelector(`.${swalClasses.range} output`)
  const select = getChildByClass(content, swalClasses.select)
  const checkbox = content.querySelector(`.${swalClasses.checkbox} input`)
  const textarea = getChildByClass(content, swalClasses.textarea)

  input.oninput = resetValidationMessage
  file.onchange = resetValidationMessage
  select.onchange = resetValidationMessage
  checkbox.onchange = resetValidationMessage
  textarea.oninput = resetValidationMessage

  range.oninput = (e) => {
    resetValidationMessage(e)
    rangeOutput.value = range.value
  }

  range.onchange = (e) => {
    resetValidationMessage(e)
    range.nextSibling.value = range.value
  }
}

const getTarget = (target) => typeof target === 'string' ? document.querySelector(target) : target

const setupAccessibility = (params) => {
  const popup = getPopup()

  popup.setAttribute('role', params.toast ? 'alert' : 'dialog')
  popup.setAttribute('aria-live', params.toast ? 'polite' : 'assertive')
  if (!params.toast) {
    popup.setAttribute('aria-modal', 'true')
  }
}

const setupRTL = (targetElement) => {
  if (window.getComputedStyle(targetElement).direction === 'rtl') {
    addClass(getContainer(), swalClasses.rtl)
  }
}

/*
 * Add modal + backdrop to DOM
 */
const init = (params) => {
  // Clean up the old popup container if it exists
  const oldContainerExisted = resetOldContainer()

  /* istanbul ignore if */
  if (isNodeEnv()) {
    utils_error('SweetAlert2 requires document to initialize')
    return
  }

  const container = document.createElement('div')
  container.className = swalClasses.container
  if (oldContainerExisted) {
    addClass(container, swalClasses['no-transition'])
  }
  setInnerHtml(container, sweetHTML)

  const targetElement = getTarget(params.target)
  targetElement.appendChild(container)

  setupAccessibility(params)
  setupRTL(targetElement)
  addInputChangeListeners()
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/parseHtmlToContainer.js


const parseHtmlToContainer = (param, target) => {
  // DOM element
  if (param instanceof HTMLElement) {
    target.appendChild(param)

  // Object
  } else if (typeof param === 'object') {
    handleObject(param, target)

  // Plain string
  } else if (param) {
    setInnerHtml(target, param)
  }
}

const handleObject = (param, target) => {
  // JQuery element(s)
  if (param.jquery) {
    handleJqueryElem(target, param)

  // For other objects use their string representation
  } else {
    setInnerHtml(target, param.toString())
  }
}

const handleJqueryElem = (target, elem) => {
  target.textContent = ''
  if (0 in elem) {
    for (let i = 0; i in elem; i++) {
      target.appendChild(elem[i].cloneNode(true))
    }
  } else {
    target.appendChild(elem.cloneNode(true))
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/animationEndEvent.js


const animationEndEvent = (() => {
  // Prevent run in Node env
  /* istanbul ignore if */
  if (isNodeEnv()) {
    return false
  }

  const testEl = document.createElement('div')
  const transEndEventNames = {
    WebkitAnimation: 'webkitAnimationEnd',
    OAnimation: 'oAnimationEnd oanimationend',
    animation: 'animationend'
  }
  for (const i in transEndEventNames) {
    if (Object.prototype.hasOwnProperty.call(transEndEventNames, i) && typeof testEl.style[i] !== 'undefined') {
      return transEndEventNames[i]
    }
  }

  return false
})()

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/measureScrollbar.js


// Measure scrollbar width for padding body during modal show/hide
// https://github.com/twbs/bootstrap/blob/master/js/src/modal.js
const measureScrollbar = () => {
  const scrollDiv = document.createElement('div')
  scrollDiv.className = swalClasses['scrollbar-measure']
  document.body.appendChild(scrollDiv)
  const scrollbarWidth = scrollDiv.getBoundingClientRect().width - scrollDiv.clientWidth
  document.body.removeChild(scrollDiv)
  return scrollbarWidth
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderActions.js




const renderActions = (instance, params) => {
  const actions = getActions()
  const loader = getLoader()
  const confirmButton = getConfirmButton()
  const denyButton = getDenyButton()
  const cancelButton = getCancelButton()

  // Actions (buttons) wrapper
  if (!params.showConfirmButton && !params.showDenyButton && !params.showCancelButton) {
    hide(actions)
  }

  // Custom class
  applyCustomClass(actions, params, 'actions')

  // Render buttons
  renderButton(confirmButton, 'confirm', params)
  renderButton(denyButton, 'deny', params)
  renderButton(cancelButton, 'cancel', params)
  handleButtonsStyling(confirmButton, denyButton, cancelButton, params)

  if (params.reverseButtons) {
    actions.insertBefore(cancelButton, loader)
    actions.insertBefore(denyButton, loader)
    actions.insertBefore(confirmButton, loader)
  }

  // Loader
  setInnerHtml(loader, params.loaderHtml)
  applyCustomClass(loader, params, 'loader')
}

function handleButtonsStyling (confirmButton, denyButton, cancelButton, params) {
  if (!params.buttonsStyling) {
    return removeClass([confirmButton, denyButton, cancelButton], swalClasses.styled)
  }

  addClass([confirmButton, denyButton, cancelButton], swalClasses.styled)

  // Buttons background colors
  if (params.confirmButtonColor) {
    confirmButton.style.backgroundColor = params.confirmButtonColor
  }
  if (params.denyButtonColor) {
    denyButton.style.backgroundColor = params.denyButtonColor
  }
  if (params.cancelButtonColor) {
    cancelButton.style.backgroundColor = params.cancelButtonColor
  }
}

function renderButton (button, buttonType, params) {
  toggle(button, params[`show${capitalizeFirstLetter(buttonType)}Button`], 'inline-block')
  setInnerHtml(button, params[`${buttonType}ButtonText`]) // Set caption text
  button.setAttribute('aria-label', params[`${buttonType}ButtonAriaLabel`]) // ARIA label

  // Add buttons custom classes
  button.className = swalClasses[buttonType]
  applyCustomClass(button, params, `${buttonType}Button`)
  addClass(button, params[`${buttonType}ButtonClass`])
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderContainer.js




function handleBackdropParam (container, backdrop) {
  if (typeof backdrop === 'string') {
    container.style.background = backdrop
  } else if (!backdrop) {
    addClass([document.documentElement, document.body], swalClasses['no-backdrop'])
  }
}

function handlePositionParam (container, position) {
  if (position in swalClasses) {
    addClass(container, swalClasses[position])
  } else {
    warn('The "position" parameter is not valid, defaulting to "center"')
    addClass(container, swalClasses.center)
  }
}

function handleGrowParam (container, grow) {
  if (grow && typeof grow === 'string') {
    const growClass = `grow-${grow}`
    if (growClass in swalClasses) {
      addClass(container, swalClasses[growClass])
    }
  }
}

const renderContainer = (instance, params) => {
  const container = getContainer()

  if (!container) {
    return
  }

  handleBackdropParam(container, params.backdrop)

  if (!params.backdrop && params.allowOutsideClick) {
    warn('"allowOutsideClick" parameter requires `backdrop` parameter to be set to `true`')
  }

  handlePositionParam(container, params.position)
  handleGrowParam(container, params.grow)

  // Custom class
  applyCustomClass(container, params, 'container')

  // Set queue step attribute for getQueueStep() method
  const queueStep = document.body.getAttribute('data-swal2-queue-step')
  if (queueStep) {
    container.setAttribute('data-queue-step', queueStep)
    document.body.removeAttribute('data-swal2-queue-step')
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/privateProps.js
/**
 * This module containts `WeakMap`s for each effectively-"private  property" that a `Swal` has.
 * For example, to set the private property "foo" of `this` to "bar", you can `privateProps.foo.set(this, 'bar')`
 * This is the approach that Babel will probably take to implement private methods/fields
 *   https://github.com/tc39/proposal-private-methods
 *   https://github.com/babel/babel/pull/7555
 * Once we have the changes from that PR in Babel, and our core class fits reasonable in *one module*
 *   then we can use that language feature.
 */

/* harmony default export */ var privateProps = ({
  promise: new WeakMap(),
  innerParams: new WeakMap(),
  domCache: new WeakMap()
});

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderInput.js





const inputTypes = ['input', 'file', 'range', 'select', 'radio', 'checkbox', 'textarea']

const renderInput = (instance, params) => {
  const content = getContent()
  const innerParams = privateProps.innerParams.get(instance)
  const rerender = !innerParams || params.input !== innerParams.input

  inputTypes.forEach((inputType) => {
    const inputClass = swalClasses[inputType]
    const inputContainer = getChildByClass(content, inputClass)

    // set attributes
    setAttributes(inputType, params.inputAttributes)

    // set class
    inputContainer.className = inputClass

    if (rerender) {
      hide(inputContainer)
    }
  })

  if (params.input) {
    if (rerender) {
      showInput(params)
    }
    // set custom class
    setCustomClass(params)
  }
}

const showInput = (params) => {
  if (!renderInputType[params.input]) {
    return utils_error(`Unexpected type of input! Expected "text", "email", "password", "number", "tel", "select", "radio", "checkbox", "textarea", "file" or "url", got "${params.input}"`)
  }

  const inputContainer = getInputContainer(params.input)
  const input = renderInputType[params.input](inputContainer, params)
  show(input)

  // input autofocus
  setTimeout(() => {
    focusInput(input)
  })
}

const removeAttributes = (input) => {
  for (let i = 0; i < input.attributes.length; i++) {
    const attrName = input.attributes[i].name
    if (!['type', 'value', 'style'].includes(attrName)) {
      input.removeAttribute(attrName)
    }
  }
}

const setAttributes = (inputType, inputAttributes) => {
  const input = getInput(getContent(), inputType)
  if (!input) {
    return
  }

  removeAttributes(input)

  for (const attr in inputAttributes) {
    // Do not set a placeholder for <input type="range">
    // it'll crash Edge, #1298
    if (inputType === 'range' && attr === 'placeholder') {
      continue
    }

    input.setAttribute(attr, inputAttributes[attr])
  }
}

const setCustomClass = (params) => {
  const inputContainer = getInputContainer(params.input)
  if (params.customClass) {
    addClass(inputContainer, params.customClass.input)
  }
}

const setInputPlaceholder = (input, params) => {
  if (!input.placeholder || params.inputPlaceholder) {
    input.placeholder = params.inputPlaceholder
  }
}

const setInputLabel = (input, prependTo, params) => {
  if (params.inputLabel) {
    input.id = swalClasses.input
    const label = document.createElement('label')
    const labelClass = swalClasses['input-label']
    label.setAttribute('for', input.id)
    label.className = labelClass
    addClass(label, params.customClass.inputLabel)
    label.innerText = params.inputLabel
    prependTo.insertAdjacentElement('beforebegin', label)
  }
}

const getInputContainer = (inputType) => {
  const inputClass = swalClasses[inputType] ? swalClasses[inputType] : swalClasses.input
  return getChildByClass(getContent(), inputClass)
}

const renderInputType = {}

renderInputType.text =
renderInputType.email =
renderInputType.password =
renderInputType.number =
renderInputType.tel =
renderInputType.url = (input, params) => {
  if (typeof params.inputValue === 'string' || typeof params.inputValue === 'number') {
    input.value = params.inputValue
  } else if (!isPromise(params.inputValue)) {
    warn(`Unexpected type of inputValue! Expected "string", "number" or "Promise", got "${typeof params.inputValue}"`)
  }
  setInputLabel(input, input, params)
  setInputPlaceholder(input, params)
  input.type = params.input
  return input
}

renderInputType.file = (input, params) => {
  setInputLabel(input, input, params)
  setInputPlaceholder(input, params)
  return input
}

renderInputType.range = (range, params) => {
  const rangeInput = range.querySelector('input')
  const rangeOutput = range.querySelector('output')
  rangeInput.value = params.inputValue
  rangeInput.type = params.input
  rangeOutput.value = params.inputValue
  setInputLabel(rangeInput, range, params)
  return range
}

renderInputType.select = (select, params) => {
  select.textContent = ''
  if (params.inputPlaceholder) {
    const placeholder = document.createElement('option')
    setInnerHtml(placeholder, params.inputPlaceholder)
    placeholder.value = ''
    placeholder.disabled = true
    placeholder.selected = true
    select.appendChild(placeholder)
  }
  setInputLabel(select, select, params)
  return select
}

renderInputType.radio = (radio) => {
  radio.textContent = ''
  return radio
}

renderInputType.checkbox = (checkboxContainer, params) => {
  const checkbox = getInput(getContent(), 'checkbox')
  checkbox.value = 1
  checkbox.id = swalClasses.checkbox
  checkbox.checked = Boolean(params.inputValue)
  const label = checkboxContainer.querySelector('span')
  setInnerHtml(label, params.inputPlaceholder)
  return checkboxContainer
}

renderInputType.textarea = (textarea, params) => {
  textarea.value = params.inputValue
  setInputPlaceholder(textarea, params)
  setInputLabel(textarea, textarea, params)

  const getPadding = (el) => parseInt(window.getComputedStyle(el).paddingLeft) + parseInt(window.getComputedStyle(el).paddingRight)

  if ('MutationObserver' in window) { // #1699
    const initialPopupWidth = parseInt(window.getComputedStyle(getPopup()).width)
    const outputsize = () => {
      const contentWidth = textarea.offsetWidth + getPadding(getPopup()) + getPadding(getContent())
      if (contentWidth > initialPopupWidth) {
        getPopup().style.width = `${contentWidth}px`
      } else {
        getPopup().style.width = null
      }
    }
    new MutationObserver(outputsize).observe(textarea, {
      attributes: true, attributeFilter: ['style']
    })
  }

  return textarea
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderContent.js



const renderContent = (instance, params) => {
  const htmlContainer = getHtmlContainer()

  applyCustomClass(htmlContainer, params, 'htmlContainer')

  // Content as HTML
  if (params.html) {
    parseHtmlToContainer(params.html, htmlContainer)
    show(htmlContainer, 'block')

  // Content as plain text
  } else if (params.text) {
    htmlContainer.textContent = params.text
    show(htmlContainer, 'block')

  // No content
  } else {
    hide(htmlContainer)
  }

  renderInput(instance, params)

  // Custom class
  applyCustomClass(getContent(), params, 'content')
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderFooter.js


const renderFooter = (instance, params) => {
  const footer = getFooter()

  toggle(footer, params.footer)

  if (params.footer) {
    parseHtmlToContainer(params.footer, footer)
  }

  // Custom class
  applyCustomClass(footer, params, 'footer')
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderCloseButton.js


const renderCloseButton = (instance, params) => {
  const closeButton = getCloseButton()

  setInnerHtml(closeButton, params.closeButtonHtml)

  // Custom class
  applyCustomClass(closeButton, params, 'closeButton')

  toggle(closeButton, params.showCloseButton)
  closeButton.setAttribute('aria-label', params.closeButtonAriaLabel)
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderIcon.js





const renderIcon = (instance, params) => {
  const innerParams = privateProps.innerParams.get(instance)
  const icon = getIcon()

  // if the given icon already rendered, apply the styling without re-rendering the icon
  if (innerParams && params.icon === innerParams.icon) {
    // Custom or default content
    setContent(icon, params)

    applyStyles(icon, params)
    return
  }

  if (!params.icon && !params.iconHtml) {
    return hide(icon)
  }

  if (params.icon && Object.keys(iconTypes).indexOf(params.icon) === -1) {
    utils_error(`Unknown icon! Expected "success", "error", "warning", "info" or "question", got "${params.icon}"`)
    return hide(icon)
  }

  show(icon)

  // Custom or default content
  setContent(icon, params)

  applyStyles(icon, params)

  // Animate icon
  addClass(icon, params.showClass.icon)
}

const applyStyles = (icon, params) => {
  for (const iconType in iconTypes) {
    if (params.icon !== iconType) {
      removeClass(icon, iconTypes[iconType])
    }
  }
  addClass(icon, iconTypes[params.icon])

  // Icon color
  setColor(icon, params)

  // Success icon background color
  adjustSuccessIconBackgoundColor()

  // Custom class
  applyCustomClass(icon, params, 'icon')
}

// Adjust success icon background color to match the popup background color
const adjustSuccessIconBackgoundColor = () => {
  const popup = getPopup()
  const popupBackgroundColor = window.getComputedStyle(popup).getPropertyValue('background-color')
  const successIconParts = popup.querySelectorAll('[class^=swal2-success-circular-line], .swal2-success-fix')
  for (let i = 0; i < successIconParts.length; i++) {
    successIconParts[i].style.backgroundColor = popupBackgroundColor
  }
}

const setContent = (icon, params) => {
  icon.textContent = ''

  if (params.iconHtml) {
    setInnerHtml(icon, iconContent(params.iconHtml))
  } else if (params.icon === 'success') {
    setInnerHtml(icon, `
      <div class="swal2-success-circular-line-left"></div>
      <span class="swal2-success-line-tip"></span> <span class="swal2-success-line-long"></span>
      <div class="swal2-success-ring"></div> <div class="swal2-success-fix"></div>
      <div class="swal2-success-circular-line-right"></div>
    `)
  } else if (params.icon === 'error') {
    setInnerHtml(icon, `
      <span class="swal2-x-mark">
        <span class="swal2-x-mark-line-left"></span>
        <span class="swal2-x-mark-line-right"></span>
      </span>
    `)
  } else {
    const defaultIconHtml = {
      question: '?',
      warning: '!',
      info: 'i'
    }
    setInnerHtml(icon, iconContent(defaultIconHtml[params.icon]))
  }
}

const setColor = (icon, params) => {
  if (!params.iconColor) {
    return
  }
  icon.style.color = params.iconColor
  icon.style.borderColor = params.iconColor
  for (const sel of ['.swal2-success-line-tip', '.swal2-success-line-long', '.swal2-x-mark-line-left', '.swal2-x-mark-line-right']) {
    setStyle(icon, sel, 'backgroundColor', params.iconColor)
  }
  setStyle(icon, '.swal2-success-ring', 'borderColor', params.iconColor)
}

const iconContent = (content) => `<div class="${swalClasses['icon-content']}">${content}</div>`

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderImage.js



const renderImage = (instance, params) => {
  const image = getImage()

  if (!params.imageUrl) {
    return hide(image)
  }

  show(image, '')

  // Src, alt
  image.setAttribute('src', params.imageUrl)
  image.setAttribute('alt', params.imageAlt)

  // Width, height
  applyNumericalStyle(image, 'width', params.imageWidth)
  applyNumericalStyle(image, 'height', params.imageHeight)

  // Class
  image.className = swalClasses.image
  applyCustomClass(image, params, 'image')
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/staticMethods/queue.js



// private global state for the queue feature
let currentSteps = []

/*
 * Global function for chaining sweetAlert popups
 */
const queue = function (steps) {
  warnAboutDeprecation('Swal.queue()', `async/await`)

  const Swal = this
  currentSteps = steps

  const resetAndResolve = (resolve, value) => {
    currentSteps = []
    resolve(value)
  }

  const queueResult = []
  return new Promise((resolve) => {
    (function step (i, callback) {
      if (i < currentSteps.length) {
        document.body.setAttribute('data-swal2-queue-step', i)
        Swal.fire(currentSteps[i]).then((result) => {
          if (typeof result.value !== 'undefined') {
            queueResult.push(result.value)
            step(i + 1, callback)
          } else {
            resetAndResolve(resolve, { dismiss: result.dismiss })
          }
        })
      } else {
        resetAndResolve(resolve, { value: queueResult })
      }
    })(0)
  })
}

/*
 * Global function for getting the index of current popup in queue
 */
const getQueueStep = () => getContainer() && getContainer().getAttribute('data-queue-step')

/*
 * Global function for inserting a popup to the queue
 */
const insertQueueStep = (step, index) => {
  if (index && index < currentSteps.length) {
    return currentSteps.splice(index, 0, step)
  }
  return currentSteps.push(step)
}

/*
 * Global function for deleting a popup from the queue
 */
const deleteQueueStep = (index) => {
  if (typeof currentSteps[index] !== 'undefined') {
    currentSteps.splice(index, 1)
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderProgressSteps.js





const createStepElement = (step) => {
  const stepEl = document.createElement('li')
  addClass(stepEl, swalClasses['progress-step'])
  setInnerHtml(stepEl, step)
  return stepEl
}

const createLineElement = (params) => {
  const lineEl = document.createElement('li')
  addClass(lineEl, swalClasses['progress-step-line'])
  if (params.progressStepsDistance) {
    lineEl.style.width = params.progressStepsDistance
  }
  return lineEl
}

const renderProgressSteps = (instance, params) => {
  const progressStepsContainer = getProgressSteps()
  if (!params.progressSteps || params.progressSteps.length === 0) {
    return hide(progressStepsContainer)
  }

  show(progressStepsContainer)
  progressStepsContainer.textContent = ''
  const currentProgressStep = parseInt(params.currentProgressStep === undefined ? getQueueStep() : params.currentProgressStep)
  if (currentProgressStep >= params.progressSteps.length) {
    warn(
      'Invalid currentProgressStep parameter, it should be less than progressSteps.length ' +
      '(currentProgressStep like JS arrays starts from 0)'
    )
  }

  params.progressSteps.forEach((step, index) => {
    const stepEl = createStepElement(step)
    progressStepsContainer.appendChild(stepEl)
    if (index === currentProgressStep) {
      addClass(stepEl, swalClasses['active-progress-step'])
    }

    if (index !== params.progressSteps.length - 1) {
      const lineEl = createLineElement(params)
      progressStepsContainer.appendChild(lineEl)
    }
  })
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderTitle.js


const renderTitle = (instance, params) => {
  const title = getTitle()

  toggle(title, params.title || params.titleText, 'block')

  if (params.title) {
    parseHtmlToContainer(params.title, title)
  }

  if (params.titleText) {
    title.innerText = params.titleText
  }

  // Custom class
  applyCustomClass(title, params, 'title')
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderHeader.js







const renderHeader = (instance, params) => {
  const header = getHeader()

  // Custom class
  applyCustomClass(header, params, 'header')

  // Progress steps
  renderProgressSteps(instance, params)

  // Icon
  renderIcon(instance, params)

  // Image
  renderImage(instance, params)

  // Title
  renderTitle(instance, params)

  // Close button
  renderCloseButton(instance, params)
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/renderPopup.js



const renderPopup = (instance, params) => {
  const container = getContainer()
  const popup = getPopup()

  // Width
  if (params.toast) { // #2170
    applyNumericalStyle(container, 'width', params.width)
    popup.style.width = '100%'
  } else {
    applyNumericalStyle(popup, 'width', params.width)
  }

  // Padding
  applyNumericalStyle(popup, 'padding', params.padding)

  // Background
  if (params.background) {
    popup.style.background = params.background
  }

  hide(getValidationMessage())

  // Classes
  addClasses(popup, params)
}

const addClasses = (popup, params) => {
  // Default Class + showClass when updating Swal.update({})
  popup.className = `${swalClasses.popup} ${isVisible(popup) ? params.showClass.popup : ''}`

  if (params.toast) {
    addClass([document.documentElement, document.body], swalClasses['toast-shown'])
    addClass(popup, swalClasses.toast)
  } else {
    addClass(popup, swalClasses.modal)
  }

  // Custom class
  applyCustomClass(popup, params, 'popup')
  if (typeof params.customClass === 'string') {
    addClass(popup, params.customClass)
  }

  // Icon class (#1842)
  if (params.icon) {
    addClass(popup, swalClasses[`icon-${params.icon}`])
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/renderers/render.js








const render = (instance, params) => {
  renderPopup(instance, params)
  renderContainer(instance, params)

  renderHeader(instance, params)
  renderContent(instance, params)
  renderActions(instance, params)
  renderFooter(instance, params)

  if (typeof params.didRender === 'function') {
    params.didRender(getPopup())
  } else if (typeof params.onRender === 'function') {
    params.onRender(getPopup()) // @deprecated
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/index.js








// CONCATENATED MODULE: ./node_modules/sweetalert2/src/staticMethods/dom.js





/*
 * Global function to determine if SweetAlert2 popup is shown
 */
const dom_isVisible = () => {
  return isVisible(getPopup())
}

/*
 * Global function to click 'Confirm' button
 */
const clickConfirm = () => getConfirmButton() && getConfirmButton().click()

/*
 * Global function to click 'Deny' button
 */
const clickDeny = () => getDenyButton() && getDenyButton().click()

/*
 * Global function to click 'Cancel' button
 */
const clickCancel = () => getCancelButton() && getCancelButton().click()

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/staticMethods/fire.js
function fire (...args) {
  const Swal = this
  return new Swal(...args)
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/staticMethods/mixin.js
/**
 * Returns an extended version of `Swal` containing `params` as defaults.
 * Useful for reusing Swal configuration.
 *
 * For example:
 *
 * Before:
 * const textPromptOptions = { input: 'text', showCancelButton: true }
 * const {value: firstName} = await Swal.fire({ ...textPromptOptions, title: 'What is your first name?' })
 * const {value: lastName} = await Swal.fire({ ...textPromptOptions, title: 'What is your last name?' })
 *
 * After:
 * const TextPrompt = Swal.mixin({ input: 'text', showCancelButton: true })
 * const {value: firstName} = await TextPrompt('What is your first name?')
 * const {value: lastName} = await TextPrompt('What is your last name?')
 *
 * @param mixinParams
 */
function mixin (mixinParams) {
  class MixinSwal extends this {
    _main (params, priorityMixinParams) {
      return super._main(params, Object.assign({}, mixinParams, priorityMixinParams))
    }
  }

  return MixinSwal
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/staticMethods/showLoading.js




/**
 * Shows loader (spinner), this is useful with AJAX requests.
 * By default the loader be shown instead of the "Confirm" button.
 */
const showLoading = (buttonToReplace) => {
  let popup = getPopup()
  if (!popup) {
    sweetalert2.fire()
  }
  popup = getPopup()
  const actions = getActions()
  const loader = getLoader()

  if (!buttonToReplace && isVisible(getConfirmButton())) {
    buttonToReplace = getConfirmButton()
  }

  show(actions)
  if (buttonToReplace) {
    hide(buttonToReplace)
    loader.setAttribute('data-button-to-replace', buttonToReplace.className)
  }
  loader.parentNode.insertBefore(loader, buttonToReplace)
  addClass([popup, actions], swalClasses.loading)

  show(loader)

  popup.setAttribute('data-loading', true)
  popup.setAttribute('aria-busy', true)
  popup.focus()
}



// CONCATENATED MODULE: ./node_modules/sweetalert2/src/constants.js
const RESTORE_FOCUS_TIMEOUT = 100

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/globalState.js


const globalState_globalState = {}

/* harmony default export */ var src_globalState = (globalState_globalState);

const focusPreviousActiveElement = () => {
  if (globalState_globalState.previousActiveElement && globalState_globalState.previousActiveElement.focus) {
    globalState_globalState.previousActiveElement.focus()
    globalState_globalState.previousActiveElement = null
  } else if (document.body) {
    document.body.focus()
  }
}

// Restore previous active (focused) element
const restoreActiveElement = (returnFocus) => {
  return new Promise(resolve => {
    if (!returnFocus) {
      return resolve()
    }
    const x = window.scrollX
    const y = window.scrollY
    globalState_globalState.restoreFocusTimeout = setTimeout(() => {
      focusPreviousActiveElement()
      resolve()
    }, RESTORE_FOCUS_TIMEOUT) // issues/900
    if (typeof x !== 'undefined' && typeof y !== 'undefined') { // IE doesn't have scrollX/scrollY support
      window.scrollTo(x, y)
    }
  })
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/staticMethods/timer.js



/**
 * If `timer` parameter is set, returns number of milliseconds of timer remained.
 * Otherwise, returns undefined.
 */
const getTimerLeft = () => {
  return src_globalState.timeout && src_globalState.timeout.getTimerLeft()
}

/**
 * Stop timer. Returns number of milliseconds of timer remained.
 * If `timer` parameter isn't set, returns undefined.
 */
const stopTimer = () => {
  if (src_globalState.timeout) {
    stopTimerProgressBar()
    return src_globalState.timeout.stop()
  }
}

/**
 * Resume timer. Returns number of milliseconds of timer remained.
 * If `timer` parameter isn't set, returns undefined.
 */
const resumeTimer = () => {
  if (src_globalState.timeout) {
    const remaining = src_globalState.timeout.start()
    animateTimerProgressBar(remaining)
    return remaining
  }
}

/**
 * Resume timer. Returns number of milliseconds of timer remained.
 * If `timer` parameter isn't set, returns undefined.
 */
const toggleTimer = () => {
  const timer = src_globalState.timeout
  return timer && (timer.running ? stopTimer() : resumeTimer())
}

/**
 * Increase timer. Returns number of milliseconds of an updated timer.
 * If `timer` parameter isn't set, returns undefined.
 */
const increaseTimer = (n) => {
  if (src_globalState.timeout) {
    const remaining = src_globalState.timeout.increase(n)
    animateTimerProgressBar(remaining, true)
    return remaining
  }
}

/**
 * Check if timer is running. Returns true if timer is running
 * or false if timer is paused or stopped.
 * If `timer` parameter isn't set, returns undefined
 */
const isTimerRunning = () => {
  return src_globalState.timeout && src_globalState.timeout.isRunning()
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/staticMethods/bindClickHandler.js
let bodyClickListenerAdded = false
const clickHandlers = {}

function bindClickHandler (attr = 'data-swal-template') {
  clickHandlers[attr] = this

  if (!bodyClickListenerAdded) {
    document.body.addEventListener('click', bodyClickListener)
    bodyClickListenerAdded = true
  }
}

const bodyClickListener = (event) => {
  // 1. using .parentNode instead of event.path because of better support by old browsers https://stackoverflow.com/a/39245638
  // 2. using .parentNode instead of .parentElement because of IE11 + SVG https://stackoverflow.com/a/36270354
  for (let el = event.target; el && el !== document; el = el.parentNode) {
    for (const attr in clickHandlers) {
      const template = el.getAttribute(attr)
      if (template) {
        clickHandlers[attr].fire({ template })
        return
      }
    }
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/params.js


const defaultParams = {
  title: '',
  titleText: '',
  text: '',
  html: '',
  footer: '',
  icon: undefined,
  iconColor: undefined,
  iconHtml: undefined,
  template: undefined,
  toast: false,
  animation: true,
  showClass: {
    popup: 'swal2-show',
    backdrop: 'swal2-backdrop-show',
    icon: 'swal2-icon-show',
  },
  hideClass: {
    popup: 'swal2-hide',
    backdrop: 'swal2-backdrop-hide',
    icon: 'swal2-icon-hide',
  },
  customClass: {},
  target: 'body',
  backdrop: true,
  heightAuto: true,
  allowOutsideClick: true,
  allowEscapeKey: true,
  allowEnterKey: true,
  stopKeydownPropagation: true,
  keydownListenerCapture: false,
  showConfirmButton: true,
  showDenyButton: false,
  showCancelButton: false,
  preConfirm: undefined,
  preDeny: undefined,
  confirmButtonText: 'OK',
  confirmButtonAriaLabel: '',
  confirmButtonColor: undefined,
  denyButtonText: 'No',
  denyButtonAriaLabel: '',
  denyButtonColor: undefined,
  cancelButtonText: 'Cancel',
  cancelButtonAriaLabel: '',
  cancelButtonColor: undefined,
  buttonsStyling: true,
  reverseButtons: false,
  focusConfirm: true,
  focusDeny: false,
  focusCancel: false,
  returnFocus: true,
  showCloseButton: false,
  closeButtonHtml: '&times;',
  closeButtonAriaLabel: 'Close this dialog',
  loaderHtml: '',
  showLoaderOnConfirm: false,
  showLoaderOnDeny: false,
  imageUrl: undefined,
  imageWidth: undefined,
  imageHeight: undefined,
  imageAlt: '',
  timer: undefined,
  timerProgressBar: false,
  width: undefined,
  padding: undefined,
  background: undefined,
  input: undefined,
  inputPlaceholder: '',
  inputLabel: '',
  inputValue: '',
  inputOptions: {},
  inputAutoTrim: true,
  inputAttributes: {},
  inputValidator: undefined,
  returnInputValueOnDeny: false,
  validationMessage: undefined,
  grow: false,
  position: 'center',
  progressSteps: [],
  currentProgressStep: undefined,
  progressStepsDistance: undefined,
  onBeforeOpen: undefined,
  onOpen: undefined,
  willOpen: undefined,
  didOpen: undefined,
  onRender: undefined,
  didRender: undefined,
  onClose: undefined,
  onAfterClose: undefined,
  willClose: undefined,
  didClose: undefined,
  onDestroy: undefined,
  didDestroy: undefined,
  scrollbarPadding: true
}

const updatableParams = [
  'allowEscapeKey',
  'allowOutsideClick',
  'background',
  'buttonsStyling',
  'cancelButtonAriaLabel',
  'cancelButtonColor',
  'cancelButtonText',
  'closeButtonAriaLabel',
  'closeButtonHtml',
  'confirmButtonAriaLabel',
  'confirmButtonColor',
  'confirmButtonText',
  'currentProgressStep',
  'customClass',
  'denyButtonAriaLabel',
  'denyButtonColor',
  'denyButtonText',
  'didClose',
  'didDestroy',
  'footer',
  'hideClass',
  'html',
  'icon',
  'iconColor',
  'iconHtml',
  'imageAlt',
  'imageHeight',
  'imageUrl',
  'imageWidth',
  'onAfterClose',
  'onClose',
  'onDestroy',
  'progressSteps',
  'returnFocus',
  'reverseButtons',
  'showCancelButton',
  'showCloseButton',
  'showConfirmButton',
  'showDenyButton',
  'text',
  'title',
  'titleText',
  'willClose',
]

const deprecatedParams = {
  animation: 'showClass" and "hideClass',
  onBeforeOpen: 'willOpen',
  onOpen: 'didOpen',
  onRender: 'didRender',
  onClose: 'willClose',
  onAfterClose: 'didClose',
  onDestroy: 'didDestroy',
}

const toastIncompatibleParams = [
  'allowOutsideClick',
  'allowEnterKey',
  'backdrop',
  'focusConfirm',
  'focusDeny',
  'focusCancel',
  'returnFocus',
  'heightAuto',
  'keydownListenerCapture'
]

/**
 * Is valid parameter
 * @param {String} paramName
 */
const isValidParameter = (paramName) => {
  return Object.prototype.hasOwnProperty.call(defaultParams, paramName)
}

/**
 * Is valid parameter for Swal.update() method
 * @param {String} paramName
 */
const isUpdatableParameter = (paramName) => {
  return updatableParams.indexOf(paramName) !== -1
}

/**
 * Is deprecated parameter
 * @param {String} paramName
 */
const isDeprecatedParameter = (paramName) => {
  return deprecatedParams[paramName]
}

const checkIfParamIsValid = (param) => {
  if (!isValidParameter(param)) {
    warn(`Unknown parameter "${param}"`)
  }
}

const checkIfToastParamIsValid = (param) => {
  if (toastIncompatibleParams.includes(param)) {
    warn(`The parameter "${param}" is incompatible with toasts`)
  }
}

const checkIfParamIsDeprecated = (param) => {
  if (isDeprecatedParameter(param)) {
    warnAboutDeprecation(param, isDeprecatedParameter(param))
  }
}

/**
 * Show relevant warnings for given params
 *
 * @param params
 */
const showWarningsForParams = (params) => {
  for (const param in params) {
    checkIfParamIsValid(param)

    if (params.toast) {
      checkIfToastParamIsValid(param)
    }

    checkIfParamIsDeprecated(param)
  }
}

/* harmony default export */ var utils_params = (defaultParams);

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/staticMethods.js










// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/hideLoading.js




/**
 * Hides loader and shows back the button which was hidden by .showLoading()
 */
function hideLoading () {
  // do nothing if popup is closed
  const innerParams = privateProps.innerParams.get(this)
  if (!innerParams) {
    return
  }
  const domCache = privateProps.domCache.get(this)
  hide(domCache.loader)
  const buttonToReplace = domCache.popup.getElementsByClassName(domCache.loader.getAttribute('data-button-to-replace'))
  if (buttonToReplace.length) {
    show(buttonToReplace[0], 'inline-block')
  } else if (allButtonsAreHidden()) {
    hide(domCache.actions)
  }
  removeClass([domCache.popup, domCache.actions], swalClasses.loading)
  domCache.popup.removeAttribute('aria-busy')
  domCache.popup.removeAttribute('data-loading')
  domCache.confirmButton.disabled = false
  domCache.denyButton.disabled = false
  domCache.cancelButton.disabled = false
}



// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/getInput.js



// Get input element by specified type or, if type isn't specified, by params.input
function getInput_getInput (instance) {
  const innerParams = privateProps.innerParams.get(instance || this)
  const domCache = privateProps.domCache.get(instance || this)
  if (!domCache) {
    return null
  }
  return getInput(domCache.content, innerParams.input)
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/scrollbarFix.js


const fixScrollbar = () => {
  // for queues, do not do this more than once
  if (states.previousBodyPadding !== null) {
    return
  }
  // if the body has overflow
  if (document.body.scrollHeight > window.innerHeight) {
    // add padding so the content doesn't shift after removal of scrollbar
    states.previousBodyPadding = parseInt(window.getComputedStyle(document.body).getPropertyValue('padding-right'))
    document.body.style.paddingRight = `${states.previousBodyPadding + measureScrollbar()}px`
  }
}

const undoScrollbar = () => {
  if (states.previousBodyPadding !== null) {
    document.body.style.paddingRight = `${states.previousBodyPadding}px`
    states.previousBodyPadding = null
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/iosFix.js
/* istanbul ignore file */



// Fix iOS scrolling http://stackoverflow.com/q/39626302

const iOSfix = () => {
  const iOS = (/iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream) || (navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1)
  if (iOS && !hasClass(document.body, swalClasses.iosfix)) {
    const offset = document.body.scrollTop
    document.body.style.top = `${offset * -1}px`
    addClass(document.body, swalClasses.iosfix)
    lockBodyScroll()
    addBottomPaddingForTallPopups() // #1948
  }
}

const addBottomPaddingForTallPopups = () => {
  const safari = !navigator.userAgent.match(/(CriOS|FxiOS|EdgiOS|YaBrowser|UCBrowser)/i)
  if (safari) {
    const bottomPanelHeight = 44
    if (getPopup().scrollHeight > window.innerHeight - bottomPanelHeight) {
      getContainer().style.paddingBottom = `${bottomPanelHeight}px`
    }
  }
}

const lockBodyScroll = () => { // #1246
  const container = getContainer()
  let preventTouchMove
  container.ontouchstart = (e) => {
    preventTouchMove = shouldPreventTouchMove(e)
  }
  container.ontouchmove = (e) => {
    if (preventTouchMove) {
      e.preventDefault()
      e.stopPropagation()
    }
  }
}

const shouldPreventTouchMove = (event) => {
  const target = event.target
  const container = getContainer()
  if (isStylys(event) || isZoom(event)) {
    return false
  }
  if (target === container) {
    return true
  }
  if (
    !isScrollable(container) &&
    target.tagName !== 'INPUT' && // #1603
    !(
      isScrollable(getContent()) && // #1944
      getContent().contains(target)
    )
  ) {
    return true
  }
  return false
}

const isStylys = (event) => { // #1786
  return event.touches && event.touches.length && event.touches[0].touchType === 'stylus'
}

const isZoom = (event) => { // #1891
  return event.touches && event.touches.length > 1
}

const undoIOSfix = () => {
  if (hasClass(document.body, swalClasses.iosfix)) {
    const offset = parseInt(document.body.style.top, 10)
    removeClass(document.body, swalClasses.iosfix)
    document.body.style.top = ''
    document.body.scrollTop = (offset * -1)
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/ieFix.js
/* istanbul ignore file */


// https://stackoverflow.com/a/21825207
const isIE11 = () => !!window.MSInputMethodContext && !!document.documentMode

// Fix IE11 centering sweetalert2/issues/933
const fixVerticalPositionIE = () => {
  const container = getContainer()
  const popup = getPopup()

  container.style.removeProperty('align-items')
  if (popup.offsetTop < 0) {
    container.style.alignItems = 'flex-start'
  }
}

const IEfix = () => {
  if (typeof window !== 'undefined' && isIE11()) {
    fixVerticalPositionIE()
    window.addEventListener('resize', fixVerticalPositionIE)
  }
}

const undoIEfix = () => {
  if (typeof window !== 'undefined' && isIE11()) {
    window.removeEventListener('resize', fixVerticalPositionIE)
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/aria.js




// From https://developer.paciellogroup.com/blog/2018/06/the-current-state-of-modal-dialog-accessibility/
// Adding aria-hidden="true" to elements outside of the active modal dialog ensures that
// elements not within the active modal dialog will not be surfaced if a user opens a screen
// reader’s list of elements (headings, form controls, landmarks, etc.) in the document.

const setAriaHidden = () => {
  const bodyChildren = toArray(document.body.children)
  bodyChildren.forEach(el => {
    if (el === getContainer() || contains(el, getContainer())) {
      return
    }

    if (el.hasAttribute('aria-hidden')) {
      el.setAttribute('data-previous-aria-hidden', el.getAttribute('aria-hidden'))
    }
    el.setAttribute('aria-hidden', 'true')
  })
}

const unsetAriaHidden = () => {
  const bodyChildren = toArray(document.body.children)
  bodyChildren.forEach(el => {
    if (el.hasAttribute('data-previous-aria-hidden')) {
      el.setAttribute('aria-hidden', el.getAttribute('data-previous-aria-hidden'))
      el.removeAttribute('data-previous-aria-hidden')
    } else {
      el.removeAttribute('aria-hidden')
    }
  })
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/privateMethods.js
/**
 * This module containts `WeakMap`s for each effectively-"private  property" that a `Swal` has.
 * For example, to set the private property "foo" of `this` to "bar", you can `privateProps.foo.set(this, 'bar')`
 * This is the approach that Babel will probably take to implement private methods/fields
 *   https://github.com/tc39/proposal-private-methods
 *   https://github.com/babel/babel/pull/7555
 * Once we have the changes from that PR in Babel, and our core class fits reasonable in *one module*
 *   then we can use that language feature.
 */

/* harmony default export */ var privateMethods = ({
  swalPromiseResolve: new WeakMap()
});

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/close.js










/*
 * Instance method to close sweetAlert
 */

function removePopupAndResetState (instance, container, returnFocus, didClose) {
  if (isToast()) {
    triggerDidCloseAndDispose(instance, didClose)
  } else {
    restoreActiveElement(returnFocus).then(() => triggerDidCloseAndDispose(instance, didClose))
    src_globalState.keydownTarget.removeEventListener('keydown', src_globalState.keydownHandler, { capture: src_globalState.keydownListenerCapture })
    src_globalState.keydownHandlerAdded = false
  }

  if (container.parentNode && !document.body.getAttribute('data-swal2-queue-step')) {
    container.parentNode.removeChild(container)
  }

  if (isModal()) {
    undoScrollbar()
    undoIOSfix()
    undoIEfix()
    unsetAriaHidden()
  }

  removeBodyClasses()
}

function removeBodyClasses () {
  removeClass(
    [document.documentElement, document.body],
    [
      swalClasses.shown,
      swalClasses['height-auto'],
      swalClasses['no-backdrop'],
      swalClasses['toast-shown'],
    ]
  )
}

function close_close (resolveValue) {
  const popup = getPopup()

  if (!popup) {
    return
  }

  resolveValue = prepareResolveValue(resolveValue)

  const innerParams = privateProps.innerParams.get(this)
  if (!innerParams || hasClass(popup, innerParams.hideClass.popup)) {
    return
  }
  const swalPromiseResolve = privateMethods.swalPromiseResolve.get(this)

  removeClass(popup, innerParams.showClass.popup)
  addClass(popup, innerParams.hideClass.popup)

  const backdrop = getContainer()
  removeClass(backdrop, innerParams.showClass.backdrop)
  addClass(backdrop, innerParams.hideClass.backdrop)

  handlePopupAnimation(this, popup, innerParams)

  // Resolve Swal promise
  swalPromiseResolve(resolveValue)
}

const prepareResolveValue = (resolveValue) => {
  // When user calls Swal.close()
  if (typeof resolveValue === 'undefined') {
    return {
      isConfirmed: false,
      isDenied: false,
      isDismissed: true,
    }
  }

  return Object.assign({
    isConfirmed: false,
    isDenied: false,
    isDismissed: false,
  }, resolveValue)
}

const handlePopupAnimation = (instance, popup, innerParams) => {
  const container = getContainer()
  // If animation is supported, animate
  const animationIsSupported = animationEndEvent && hasCssAnimation(popup)

  const {
    onClose, onAfterClose, // @deprecated
    willClose, didClose
  } = innerParams

  runDidClose(popup, willClose, onClose)

  if (animationIsSupported) {
    animatePopup(instance, popup, container, innerParams.returnFocus, didClose || onAfterClose)
  } else {
    // Otherwise, remove immediately
    removePopupAndResetState(instance, container, innerParams.returnFocus, didClose || onAfterClose)
  }
}

const runDidClose = (popup, willClose, onClose) => {
  if (willClose !== null && typeof willClose === 'function') {
    willClose(popup)
  } else if (onClose !== null && typeof onClose === 'function') {
    onClose(popup) // @deprecated
  }
}

const animatePopup = (instance, popup, container, returnFocus, didClose) => {
  src_globalState.swalCloseEventFinishedCallback = removePopupAndResetState.bind(null, instance, container, returnFocus, didClose)
  popup.addEventListener(animationEndEvent, function (e) {
    if (e.target === popup) {
      src_globalState.swalCloseEventFinishedCallback()
      delete src_globalState.swalCloseEventFinishedCallback
    }
  })
}

const triggerDidCloseAndDispose = (instance, didClose) => {
  setTimeout(() => {
    if (typeof didClose === 'function') {
      didClose()
    }
    instance._destroy()
  })
}



// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/enable-disable-elements.js


function setButtonsDisabled (instance, buttons, disabled) {
  const domCache = privateProps.domCache.get(instance)
  buttons.forEach(button => {
    domCache[button].disabled = disabled
  })
}

function setInputDisabled (input, disabled) {
  if (!input) {
    return false
  }
  if (input.type === 'radio') {
    const radiosContainer = input.parentNode.parentNode
    const radios = radiosContainer.querySelectorAll('input')
    for (let i = 0; i < radios.length; i++) {
      radios[i].disabled = disabled
    }
  } else {
    input.disabled = disabled
  }
}

function enableButtons () {
  setButtonsDisabled(this, ['confirmButton', 'denyButton', 'cancelButton'], false)
}

function disableButtons () {
  setButtonsDisabled(this, ['confirmButton', 'denyButton', 'cancelButton'], true)
}

function enableInput () {
  return setInputDisabled(this.getInput(), false)
}

function disableInput () {
  return setInputDisabled(this.getInput(), true)
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/validation-message.js




// Show block with validation message
function showValidationMessage (error) {
  const domCache = privateProps.domCache.get(this)
  const params = privateProps.innerParams.get(this)
  setInnerHtml(domCache.validationMessage, error)
  domCache.validationMessage.className = swalClasses['validation-message']
  if (params.customClass && params.customClass.validationMessage) {
    addClass(domCache.validationMessage, params.customClass.validationMessage)
  }
  show(domCache.validationMessage)

  const input = this.getInput()
  if (input) {
    input.setAttribute('aria-invalid', true)
    input.setAttribute('aria-describedBy', swalClasses['validation-message'])
    focusInput(input)
    addClass(input, swalClasses.inputerror)
  }
}

// Hide block with validation message
function validation_message_resetValidationMessage () {
  const domCache = privateProps.domCache.get(this)
  if (domCache.validationMessage) {
    hide(domCache.validationMessage)
  }

  const input = this.getInput()
  if (input) {
    input.removeAttribute('aria-invalid')
    input.removeAttribute('aria-describedBy')
    removeClass(input, swalClasses.inputerror)
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/progress-steps.js


function progress_steps_getProgressSteps () {
  const domCache = privateProps.domCache.get(this)
  return domCache.progressSteps
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/Timer.js
class Timer {
  constructor (callback, delay) {
    this.callback = callback
    this.remaining = delay
    this.running = false

    this.start()
  }

  start () {
    if (!this.running) {
      this.running = true
      this.started = new Date()
      this.id = setTimeout(this.callback, this.remaining)
    }
    return this.remaining
  }

  stop () {
    if (this.running) {
      this.running = false
      clearTimeout(this.id)
      this.remaining -= new Date() - this.started
    }
    return this.remaining
  }

  increase (n) {
    const running = this.running
    if (running) {
      this.stop()
    }
    this.remaining += n
    if (running) {
      this.start()
    }
    return this.remaining
  }

  getTimerLeft () {
    if (this.running) {
      this.stop()
      this.start()
    }
    return this.remaining
  }

  isRunning () {
    return this.running
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/defaultInputValidators.js
/* harmony default export */ var defaultInputValidators = ({
  email: (string, validationMessage) => {
    return /^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.-]+\.[a-zA-Z0-9-]{2,24}$/.test(string)
      ? Promise.resolve()
      : Promise.resolve(validationMessage || 'Invalid email address')
  },
  url: (string, validationMessage) => {
    // taken from https://stackoverflow.com/a/3809435 with a small change from #1306 and #2013
    return /^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._+~#=]{1,256}\.[a-z]{2,63}\b([-a-zA-Z0-9@:%_+.~#?&/=]*)$/.test(string)
      ? Promise.resolve()
      : Promise.resolve(validationMessage || 'Invalid URL')
  }
});

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/setParameters.js




function setDefaultInputValidators (params) {
  // Use default `inputValidator` for supported input types if not provided
  if (!params.inputValidator) {
    Object.keys(defaultInputValidators).forEach((key) => {
      if (params.input === key) {
        params.inputValidator = defaultInputValidators[key]
      }
    })
  }
}

function validateCustomTargetElement (params) {
  // Determine if the custom target element is valid
  if (
    !params.target ||
    (typeof params.target === 'string' && !document.querySelector(params.target)) ||
    (typeof params.target !== 'string' && !params.target.appendChild)
  ) {
    warn('Target parameter is not valid, defaulting to "body"')
    params.target = 'body'
  }
}

/**
 * Set type, text and actions on popup
 *
 * @param params
 * @returns {boolean}
 */
function setParameters (params) {
  setDefaultInputValidators(params)

  // showLoaderOnConfirm && preConfirm
  if (params.showLoaderOnConfirm && !params.preConfirm) {
    warn(
      'showLoaderOnConfirm is set to true, but preConfirm is not defined.\n' +
      'showLoaderOnConfirm should be used together with preConfirm, see usage example:\n' +
      'https://sweetalert2.github.io/#ajax-request'
    )
  }

  // params.animation will be actually used in renderPopup.js
  // but in case when params.animation is a function, we need to call that function
  // before popup (re)initialization, so it'll be possible to check Swal.isVisible()
  // inside the params.animation function
  params.animation = callIfFunction(params.animation)

  validateCustomTargetElement(params)

  // Replace newlines with <br> in title
  if (typeof params.title === 'string') {
    params.title = params.title.split('\n').join('<br />')
  }

  init(params)
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/getTemplateParams.js



const swalStringParams = ['swal-title', 'swal-html', 'swal-footer']

const getTemplateParams = (params) => {
  const template = typeof params.template === 'string' ? document.querySelector(params.template) : params.template
  if (!template) {
    return {}
  }
  const templateContent = template.content || template // IE11

  showWarningsForElements(templateContent)

  const result = Object.assign(
    getSwalParams(templateContent),
    getSwalButtons(templateContent),
    getSwalImage(templateContent),
    getSwalIcon(templateContent),
    getSwalInput(templateContent),
    getSwalStringParams(templateContent, swalStringParams),
  )
  return result
}

const getSwalParams = (templateContent) => {
  const result = {}
  toArray(templateContent.querySelectorAll('swal-param')).forEach((param) => {
    showWarningsForAttributes(param, ['name', 'value'])
    const paramName = param.getAttribute('name')
    let value = param.getAttribute('value')
    if (typeof utils_params[paramName] === 'boolean' && value === 'false') {
      value = false
    }
    if (typeof utils_params[paramName] === 'object') {
      value = JSON.parse(value)
    }
    result[paramName] = value
  })
  return result
}

const getSwalButtons = (templateContent) => {
  const result = {}
  toArray(templateContent.querySelectorAll('swal-button')).forEach((button) => {
    showWarningsForAttributes(button, ['type', 'color', 'aria-label'])
    const type = button.getAttribute('type')
    result[`${type}ButtonText`] = button.innerHTML
    result[`show${capitalizeFirstLetter(type)}Button`] = true
    if (button.hasAttribute('color')) {
      result[`${type}ButtonColor`] = button.getAttribute('color')
    }
    if (button.hasAttribute('aria-label')) {
      result[`${type}ButtonAriaLabel`] = button.getAttribute('aria-label')
    }
  })
  return result
}

const getSwalImage = (templateContent) => {
  const result = {}
  const image = templateContent.querySelector('swal-image')
  if (image) {
    showWarningsForAttributes(image, ['src', 'width', 'height', 'alt'])
    if (image.hasAttribute('src')) {
      result.imageUrl = image.getAttribute('src')
    }
    if (image.hasAttribute('width')) {
      result.imageWidth = image.getAttribute('width')
    }
    if (image.hasAttribute('height')) {
      result.imageHeight = image.getAttribute('height')
    }
    if (image.hasAttribute('alt')) {
      result.imageAlt = image.getAttribute('alt')
    }
  }
  return result
}

const getSwalIcon = (templateContent) => {
  const result = {}
  const icon = templateContent.querySelector('swal-icon')
  if (icon) {
    showWarningsForAttributes(icon, ['type', 'color'])
    if (icon.hasAttribute('type')) {
      result.icon = icon.getAttribute('type')
    }
    if (icon.hasAttribute('color')) {
      result.iconColor = icon.getAttribute('color')
    }
    result.iconHtml = icon.innerHTML
  }
  return result
}

const getSwalInput = (templateContent) => {
  const result = {}
  const input = templateContent.querySelector('swal-input')
  if (input) {
    showWarningsForAttributes(input, ['type', 'label', 'placeholder', 'value'])
    result.input = input.getAttribute('type') || 'text'
    if (input.hasAttribute('label')) {
      result.inputLabel = input.getAttribute('label')
    }
    if (input.hasAttribute('placeholder')) {
      result.inputPlaceholder = input.getAttribute('placeholder')
    }
    if (input.hasAttribute('value')) {
      result.inputValue = input.getAttribute('value')
    }
  }
  const inputOptions = templateContent.querySelectorAll('swal-input-option')
  if (inputOptions.length) {
    result.inputOptions = {}
    toArray(inputOptions).forEach((option) => {
      showWarningsForAttributes(option, ['value'])
      const optionValue = option.getAttribute('value')
      const optionName = option.innerHTML
      result.inputOptions[optionValue] = optionName
    })
  }
  return result
}

const getSwalStringParams = (templateContent, paramNames) => {
  const result = {}
  for (const i in paramNames) {
    const paramName = paramNames[i]
    const tag = templateContent.querySelector(paramName)
    if (tag) {
      showWarningsForAttributes(tag, [])
      result[paramName.replace(/^swal-/, '')] = tag.innerHTML.trim()
    }
  }
  return result
}

const showWarningsForElements = (template) => {
  const allowedElements = swalStringParams.concat([
    'swal-param',
    'swal-button',
    'swal-image',
    'swal-icon',
    'swal-input',
    'swal-input-option',
  ])
  toArray(template.querySelectorAll('*')).forEach((el) => {
    if (el.parentNode !== template) { // can't use template.children because of IE11
      return
    }
    const tagName = el.tagName.toLowerCase()
    if (allowedElements.indexOf(tagName) === -1) {
      warn(`Unrecognized element <${tagName}>`)
    }
  })
}

const showWarningsForAttributes = (el, allowedAttributes) => {
  toArray(el.attributes).forEach((attribute) => {
    if (allowedAttributes.indexOf(attribute.name) === -1) {
      warn([
        `Unrecognized attribute "${attribute.name}" on <${el.tagName.toLowerCase()}>.`,
        `${allowedAttributes.length ? `Allowed attributes are: ${allowedAttributes.join(', ')}` : 'To set the value, use HTML within the element.'}`
      ])
    }
  })
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/openPopup.js








const SHOW_CLASS_TIMEOUT = 10

/**
 * Open popup, add necessary classes and styles, fix scrollbar
 *
 * @param params
 */
const openPopup = (params) => {
  const container = getContainer()
  const popup = getPopup()

  if (typeof params.willOpen === 'function') {
    params.willOpen(popup)
  } else if (typeof params.onBeforeOpen === 'function') {
    params.onBeforeOpen(popup) // @deprecated
  }

  const bodyStyles = window.getComputedStyle(document.body)
  const initialBodyOverflow = bodyStyles.overflowY
  openPopup_addClasses(container, popup, params)

  // scrolling is 'hidden' until animation is done, after that 'auto'
  setTimeout(() => {
    setScrollingVisibility(container, popup)
  }, SHOW_CLASS_TIMEOUT)

  if (isModal()) {
    fixScrollContainer(container, params.scrollbarPadding, initialBodyOverflow)
    setAriaHidden()
  }

  if (!isToast() && !src_globalState.previousActiveElement) {
    src_globalState.previousActiveElement = document.activeElement
  }

  runDidOpen(popup, params)

  removeClass(container, swalClasses['no-transition'])
}

const runDidOpen = (popup, params) => {
  if (typeof params.didOpen === 'function') {
    setTimeout(() => params.didOpen(popup))
  } else if (typeof params.onOpen === 'function') {
    setTimeout(() => params.onOpen(popup)) // @deprecated
  }
}

const swalOpenAnimationFinished = (event) => {
  const popup = getPopup()
  if (event.target !== popup) {
    return
  }
  const container = getContainer()
  popup.removeEventListener(animationEndEvent, swalOpenAnimationFinished)
  container.style.overflowY = 'auto'
}

const setScrollingVisibility = (container, popup) => {
  if (animationEndEvent && hasCssAnimation(popup)) {
    container.style.overflowY = 'hidden'
    popup.addEventListener(animationEndEvent, swalOpenAnimationFinished)
  } else {
    container.style.overflowY = 'auto'
  }
}

const fixScrollContainer = (container, scrollbarPadding, initialBodyOverflow) => {
  iOSfix()
  IEfix()

  if (scrollbarPadding && initialBodyOverflow !== 'hidden') {
    fixScrollbar()
  }

  // sweetalert2/issues/1247
  setTimeout(() => {
    container.scrollTop = 0
  })
}

const openPopup_addClasses = (container, popup, params) => {
  addClass(container, params.showClass.backdrop)
  // the workaround with setting/unsetting opacity is needed for #2019 and 2059
  popup.style.setProperty('opacity', '0', 'important')
  show(popup)
  setTimeout(() => {
    // Animate popup right after showing it
    addClass(popup, params.showClass.popup)
    // and remove the opacity workaround
    popup.style.removeProperty('opacity')
  }, SHOW_CLASS_TIMEOUT) // 10ms in order to fix #2062

  addClass([document.documentElement, document.body], swalClasses.shown)
  if (params.heightAuto && params.backdrop && !params.toast) {
    addClass([document.documentElement, document.body], swalClasses['height-auto'])
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/utils/dom/inputUtils.js






const handleInputOptionsAndValue = (instance, params) => {
  if (params.input === 'select' || params.input === 'radio') {
    handleInputOptions(instance, params)
  } else if (['text', 'email', 'number', 'tel', 'textarea'].includes(params.input) &&
    (hasToPromiseFn(params.inputValue) || isPromise(params.inputValue))) {
    handleInputValue(instance, params)
  }
}

const getInputValue = (instance, innerParams) => {
  const input = instance.getInput()
  if (!input) {
    return null
  }
  switch (innerParams.input) {
    case 'checkbox':
      return getCheckboxValue(input)
    case 'radio':
      return getRadioValue(input)
    case 'file':
      return getFileValue(input)
    default:
      return innerParams.inputAutoTrim ? input.value.trim() : input.value
  }
}

const getCheckboxValue = (input) => input.checked ? 1 : 0

const getRadioValue = (input) => input.checked ? input.value : null

const getFileValue = (input) => input.files.length ? (input.getAttribute('multiple') !== null ? input.files : input.files[0]) : null

const handleInputOptions = (instance, params) => {
  const content = getContent()
  const processInputOptions = (inputOptions) => populateInputOptions[params.input](content, formatInputOptions(inputOptions), params)
  if (hasToPromiseFn(params.inputOptions) || isPromise(params.inputOptions)) {
    showLoading(getConfirmButton())
    asPromise(params.inputOptions).then((inputOptions) => {
      instance.hideLoading()
      processInputOptions(inputOptions)
    })
  } else if (typeof params.inputOptions === 'object') {
    processInputOptions(params.inputOptions)
  } else {
    utils_error(`Unexpected type of inputOptions! Expected object, Map or Promise, got ${typeof params.inputOptions}`)
  }
}

const handleInputValue = (instance, params) => {
  const input = instance.getInput()
  hide(input)
  asPromise(params.inputValue).then((inputValue) => {
    input.value = params.input === 'number' ? parseFloat(inputValue) || 0 : `${inputValue}`
    show(input)
    input.focus()
    instance.hideLoading()
  })
    .catch((err) => {
      utils_error(`Error in inputValue promise: ${err}`)
      input.value = ''
      show(input)
      input.focus()
      instance.hideLoading()
    })
}

const populateInputOptions = {
  select: (content, inputOptions, params) => {
    const select = getChildByClass(content, swalClasses.select)
    const renderOption = (parent, optionLabel, optionValue) => {
      const option = document.createElement('option')
      option.value = optionValue
      setInnerHtml(option, optionLabel)
      option.selected = isSelected(optionValue, params.inputValue)
      parent.appendChild(option)
    }
    inputOptions.forEach(inputOption => {
      const optionValue = inputOption[0]
      const optionLabel = inputOption[1]
      // <optgroup> spec:
      // https://www.w3.org/TR/html401/interact/forms.html#h-17.6
      // "...all OPTGROUP elements must be specified directly within a SELECT element (i.e., groups may not be nested)..."
      // check whether this is a <optgroup>
      if (Array.isArray(optionLabel)) { // if it is an array, then it is an <optgroup>
        const optgroup = document.createElement('optgroup')
        optgroup.label = optionValue
        optgroup.disabled = false // not configurable for now
        select.appendChild(optgroup)
        optionLabel.forEach(o => renderOption(optgroup, o[1], o[0]))
      } else { // case of <option>
        renderOption(select, optionLabel, optionValue)
      }
    })
    select.focus()
  },

  radio: (content, inputOptions, params) => {
    const radio = getChildByClass(content, swalClasses.radio)
    inputOptions.forEach(inputOption => {
      const radioValue = inputOption[0]
      const radioLabel = inputOption[1]
      const radioInput = document.createElement('input')
      const radioLabelElement = document.createElement('label')
      radioInput.type = 'radio'
      radioInput.name = swalClasses.radio
      radioInput.value = radioValue
      if (isSelected(radioValue, params.inputValue)) {
        radioInput.checked = true
      }
      const label = document.createElement('span')
      setInnerHtml(label, radioLabel)
      label.className = swalClasses.label
      radioLabelElement.appendChild(radioInput)
      radioLabelElement.appendChild(label)
      radio.appendChild(radioLabelElement)
    })
    const radios = radio.querySelectorAll('input')
    if (radios.length) {
      radios[0].focus()
    }
  }
}

/**
 * Converts `inputOptions` into an array of `[value, label]`s
 * @param inputOptions
 */
const formatInputOptions = (inputOptions) => {
  const result = []
  if (typeof Map !== 'undefined' && inputOptions instanceof Map) {
    inputOptions.forEach((value, key) => {
      let valueFormatted = value
      if (typeof valueFormatted === 'object') { // case of <optgroup>
        valueFormatted = formatInputOptions(valueFormatted)
      }
      result.push([key, valueFormatted])
    })
  } else {
    Object.keys(inputOptions).forEach(key => {
      let valueFormatted = inputOptions[key]
      if (typeof valueFormatted === 'object') { // case of <optgroup>
        valueFormatted = formatInputOptions(valueFormatted)
      }
      result.push([key, valueFormatted])
    })
  }
  return result
}

const isSelected = (optionValue, inputValue) => {
  return inputValue && inputValue.toString() === optionValue.toString()
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/buttons-handlers.js







const handleConfirmButtonClick = (instance, innerParams) => {
  instance.disableButtons()
  if (innerParams.input) {
    handleConfirmOrDenyWithInput(instance, innerParams, 'confirm')
  } else {
    buttons_handlers_confirm(instance, innerParams, true)
  }
}

const handleDenyButtonClick = (instance, innerParams) => {
  instance.disableButtons()
  if (innerParams.returnInputValueOnDeny) {
    handleConfirmOrDenyWithInput(instance, innerParams, 'deny')
  } else {
    deny(instance, innerParams, false)
  }
}

const handleCancelButtonClick = (instance, dismissWith) => {
  instance.disableButtons()
  dismissWith(DismissReason.cancel)
}

const handleConfirmOrDenyWithInput = (instance, innerParams, type /* type is either 'confirm' or 'deny' */) => {
  const inputValue = getInputValue(instance, innerParams)
  if (innerParams.inputValidator) {
    handleInputValidator(instance, innerParams, inputValue)
  } else if (!instance.getInput().checkValidity()) {
    instance.enableButtons()
    instance.showValidationMessage(innerParams.validationMessage)
  } else if (type === 'deny') {
    deny(instance, innerParams, inputValue)
  } else {
    buttons_handlers_confirm(instance, innerParams, inputValue)
  }
}

const handleInputValidator = (instance, innerParams, inputValue) => {
  instance.disableInput()
  const validationPromise = Promise.resolve().then(() => asPromise(
    innerParams.inputValidator(inputValue, innerParams.validationMessage))
  )
  validationPromise.then(
    (validationMessage) => {
      instance.enableButtons()
      instance.enableInput()
      if (validationMessage) {
        instance.showValidationMessage(validationMessage)
      } else {
        buttons_handlers_confirm(instance, innerParams, inputValue)
      }
    }
  )
}

const deny = (instance, innerParams, value) => {
  if (innerParams.showLoaderOnDeny) {
    showLoading(getDenyButton())
  }

  if (innerParams.preDeny) {
    const preDenyPromise = Promise.resolve().then(() => asPromise(
      innerParams.preDeny(value, innerParams.validationMessage))
    )
    preDenyPromise.then(
      (preDenyValue) => {
        if (preDenyValue === false) {
          instance.hideLoading()
        } else {
          instance.closePopup({ isDenied: true, value: typeof preDenyValue === 'undefined' ? value : preDenyValue })
        }
      }
    )
  } else {
    instance.closePopup({ isDenied: true, value })
  }
}

const succeedWith = (instance, value) => {
  instance.closePopup({ isConfirmed: true, value })
}

const buttons_handlers_confirm = (instance, innerParams, value) => {
  if (innerParams.showLoaderOnConfirm) {
    showLoading() // TODO: make showLoading an *instance* method
  }

  if (innerParams.preConfirm) {
    instance.resetValidationMessage()
    const preConfirmPromise = Promise.resolve().then(() => asPromise(
      innerParams.preConfirm(value, innerParams.validationMessage))
    )
    preConfirmPromise.then(
      (preConfirmValue) => {
        if (isVisible(getValidationMessage()) || preConfirmValue === false) {
          instance.hideLoading()
        } else {
          succeedWith(instance, typeof preConfirmValue === 'undefined' ? value : preConfirmValue)
        }
      }
    )
  } else {
    succeedWith(instance, value)
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/keydown-handler.js






const addKeydownHandler = (instance, globalState, innerParams, dismissWith) => {
  if (globalState.keydownTarget && globalState.keydownHandlerAdded) {
    globalState.keydownTarget.removeEventListener('keydown', globalState.keydownHandler, { capture: globalState.keydownListenerCapture })
    globalState.keydownHandlerAdded = false
  }

  if (!innerParams.toast) {
    globalState.keydownHandler = (e) => keydownHandler(instance, e, dismissWith)
    globalState.keydownTarget = innerParams.keydownListenerCapture ? window : getPopup()
    globalState.keydownListenerCapture = innerParams.keydownListenerCapture
    globalState.keydownTarget.addEventListener('keydown', globalState.keydownHandler, { capture: globalState.keydownListenerCapture })
    globalState.keydownHandlerAdded = true
  }
}

// Focus handling
const setFocus = (innerParams, index, increment) => {
  const focusableElements = getFocusableElements()
  // search for visible elements and select the next possible match
  if (focusableElements.length) {
    index = index + increment

    // rollover to first item
    if (index === focusableElements.length) {
      index = 0

      // go to last item
    } else if (index === -1) {
      index = focusableElements.length - 1
    }

    return focusableElements[index].focus()
  }
  // no visible focusable elements, focus the popup
  getPopup().focus()
}

const arrowKeysNextButton = [
  'ArrowRight', 'ArrowDown',
  'Right', 'Down' // IE11
]

const arrowKeysPreviousButton = [
  'ArrowLeft', 'ArrowUp',
  'Left', 'Up' // IE11
]

const escKeys = [
  'Escape',
  'Esc' // IE11
]

const keydownHandler = (instance, e, dismissWith) => {
  const innerParams = privateProps.innerParams.get(instance)

  if (!innerParams) {
    return // This instance has already been destroyed
  }

  if (innerParams.stopKeydownPropagation) {
    e.stopPropagation()
  }

  // ENTER
  if (e.key === 'Enter') {
    handleEnter(instance, e, innerParams)

  // TAB
  } else if (e.key === 'Tab') {
    handleTab(e, innerParams)

  // ARROWS - switch focus between buttons
  } else if ([...arrowKeysNextButton, ...arrowKeysPreviousButton].includes(e.key)) {
    handleArrows(e.key)

  // ESC
  } else if (escKeys.includes(e.key)) {
    handleEsc(e, innerParams, dismissWith)
  }
}

const handleEnter = (instance, e, innerParams) => {
  // #720 #721
  if (e.isComposing) {
    return
  }

  if (e.target && instance.getInput() && e.target.outerHTML === instance.getInput().outerHTML) {
    if (['textarea', 'file'].includes(innerParams.input)) {
      return // do not submit
    }

    clickConfirm()
    e.preventDefault()
  }
}

const handleTab = (e, innerParams) => {
  const targetElement = e.target

  const focusableElements = getFocusableElements()
  let btnIndex = -1
  for (let i = 0; i < focusableElements.length; i++) {
    if (targetElement === focusableElements[i]) {
      btnIndex = i
      break
    }
  }

  if (!e.shiftKey) {
    // Cycle to the next button
    setFocus(innerParams, btnIndex, 1)
  } else {
    // Cycle to the prev button
    setFocus(innerParams, btnIndex, -1)
  }
  e.stopPropagation()
  e.preventDefault()
}

const handleArrows = (key) => {
  const confirmButton = getConfirmButton()
  const denyButton = getDenyButton()
  const cancelButton = getCancelButton()
  if (![confirmButton, denyButton, cancelButton].includes(document.activeElement)) {
    return
  }
  const sibling = arrowKeysNextButton.includes(key) ? 'nextElementSibling' : 'previousElementSibling'
  const buttonToFocus = document.activeElement[sibling]
  if (buttonToFocus) {
    buttonToFocus.focus()
  }
}

const handleEsc = (e, innerParams, dismissWith) => {
  if (callIfFunction(innerParams.allowEscapeKey)) {
    e.preventDefault()
    dismissWith(DismissReason.esc)
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/popup-click-handler.js




const handlePopupClick = (instance, domCache, dismissWith) => {
  const innerParams = privateProps.innerParams.get(instance)
  if (innerParams.toast) {
    handleToastClick(instance, domCache, dismissWith)
  } else {
    // Ignore click events that had mousedown on the popup but mouseup on the container
    // This can happen when the user drags a slider
    handleModalMousedown(domCache)

    // Ignore click events that had mousedown on the container but mouseup on the popup
    handleContainerMousedown(domCache)

    handleModalClick(instance, domCache, dismissWith)
  }
}

const handleToastClick = (instance, domCache, dismissWith) => {
  // Closing toast by internal click
  domCache.popup.onclick = () => {
    const innerParams = privateProps.innerParams.get(instance)
    if (
      innerParams.showConfirmButton ||
      innerParams.showDenyButton ||
      innerParams.showCancelButton ||
      innerParams.showCloseButton ||
      innerParams.timer ||
      innerParams.input
    ) {
      return
    }
    dismissWith(DismissReason.close)
  }
}

let ignoreOutsideClick = false

const handleModalMousedown = (domCache) => {
  domCache.popup.onmousedown = () => {
    domCache.container.onmouseup = function (e) {
      domCache.container.onmouseup = undefined
      // We only check if the mouseup target is the container because usually it doesn't
      // have any other direct children aside of the popup
      if (e.target === domCache.container) {
        ignoreOutsideClick = true
      }
    }
  }
}

const handleContainerMousedown = (domCache) => {
  domCache.container.onmousedown = () => {
    domCache.popup.onmouseup = function (e) {
      domCache.popup.onmouseup = undefined
      // We also need to check if the mouseup target is a child of the popup
      if (e.target === domCache.popup || domCache.popup.contains(e.target)) {
        ignoreOutsideClick = true
      }
    }
  }
}

const handleModalClick = (instance, domCache, dismissWith) => {
  domCache.container.onclick = (e) => {
    const innerParams = privateProps.innerParams.get(instance)
    if (ignoreOutsideClick) {
      ignoreOutsideClick = false
      return
    }
    if (e.target === domCache.container && callIfFunction(innerParams.allowOutsideClick)) {
      dismissWith(DismissReason.backdrop)
    }
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/_main.js
















function _main (userParams, mixinParams = {}) {
  showWarningsForParams(Object.assign({}, mixinParams, userParams))

  if (src_globalState.currentInstance) {
    src_globalState.currentInstance._destroy()
  }
  src_globalState.currentInstance = this

  const innerParams = prepareParams(userParams, mixinParams)
  setParameters(innerParams)
  Object.freeze(innerParams)

  // clear the previous timer
  if (src_globalState.timeout) {
    src_globalState.timeout.stop()
    delete src_globalState.timeout
  }

  // clear the restore focus timeout
  clearTimeout(src_globalState.restoreFocusTimeout)

  const domCache = populateDomCache(this)

  render(this, innerParams)

  privateProps.innerParams.set(this, innerParams)

  return swalPromise(this, domCache, innerParams)
}

const prepareParams = (userParams, mixinParams) => {
  const templateParams = getTemplateParams(userParams)
  const params = Object.assign({}, utils_params, mixinParams, templateParams, userParams) // precedence is described in #2131
  params.showClass = Object.assign({}, utils_params.showClass, params.showClass)
  params.hideClass = Object.assign({}, utils_params.hideClass, params.hideClass)
  // @deprecated
  if (userParams.animation === false) {
    params.showClass = {
      popup: 'swal2-noanimation',
      backdrop: 'swal2-noanimation'
    }
    params.hideClass = {}
  }
  return params
}

const swalPromise = (instance, domCache, innerParams) => {
  return new Promise((resolve) => {
    // functions to handle all closings/dismissals
    const dismissWith = (dismiss) => {
      instance.closePopup({ isDismissed: true, dismiss })
    }

    privateMethods.swalPromiseResolve.set(instance, resolve)

    domCache.confirmButton.onclick = () => handleConfirmButtonClick(instance, innerParams)
    domCache.denyButton.onclick = () => handleDenyButtonClick(instance, innerParams)
    domCache.cancelButton.onclick = () => handleCancelButtonClick(instance, dismissWith)

    domCache.closeButton.onclick = () => dismissWith(DismissReason.close)

    handlePopupClick(instance, domCache, dismissWith)

    addKeydownHandler(instance, src_globalState, innerParams, dismissWith)

    handleInputOptionsAndValue(instance, innerParams)

    openPopup(innerParams)

    setupTimer(src_globalState, innerParams, dismissWith)

    initFocus(domCache, innerParams)

    // Scroll container to top on open (#1247, #1946)
    setTimeout(() => {
      domCache.container.scrollTop = 0
    })
  })
}

const populateDomCache = (instance) => {
  const domCache = {
    popup: getPopup(),
    container: getContainer(),
    content: getContent(),
    actions: getActions(),
    confirmButton: getConfirmButton(),
    denyButton: getDenyButton(),
    cancelButton: getCancelButton(),
    loader: getLoader(),
    closeButton: getCloseButton(),
    validationMessage: getValidationMessage(),
    progressSteps: getProgressSteps()
  }
  privateProps.domCache.set(instance, domCache)

  return domCache
}

const setupTimer = (globalState, innerParams, dismissWith) => {
  const timerProgressBar = getTimerProgressBar()
  hide(timerProgressBar)
  if (innerParams.timer) {
    globalState.timeout = new Timer(() => {
      dismissWith('timer')
      delete globalState.timeout
    }, innerParams.timer)
    if (innerParams.timerProgressBar) {
      show(timerProgressBar)
      setTimeout(() => {
        if (globalState.timeout && globalState.timeout.running) { // timer can be already stopped or unset at this point
          animateTimerProgressBar(innerParams.timer)
        }
      })
    }
  }
}

const initFocus = (domCache, innerParams) => {
  if (innerParams.toast) {
    return
  }

  if (!callIfFunction(innerParams.allowEnterKey)) {
    return blurActiveElement()
  }

  if (!focusButton(domCache, innerParams)) {
    setFocus(innerParams, -1, 1)
  }
}

const focusButton = (domCache, innerParams) => {
  if (innerParams.focusDeny && isVisible(domCache.denyButton)) {
    domCache.denyButton.focus()
    return true
  }

  if (innerParams.focusCancel && isVisible(domCache.cancelButton)) {
    domCache.cancelButton.focus()
    return true
  }

  if (innerParams.focusConfirm && isVisible(domCache.confirmButton)) {
    domCache.confirmButton.focus()
    return true
  }

  return false
}

const blurActiveElement = () => {
  if (document.activeElement && typeof document.activeElement.blur === 'function') {
    document.activeElement.blur()
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/update.js





/**
 * Updates popup parameters.
 */
function update (params) {
  const popup = getPopup()
  const innerParams = privateProps.innerParams.get(this)

  if (!popup || hasClass(popup, innerParams.hideClass.popup)) {
    return warn(`You're trying to update the closed or closing popup, that won't work. Use the update() method in preConfirm parameter or show a new popup.`)
  }

  const validUpdatableParams = {}

  // assign valid params from `params` to `defaults`
  Object.keys(params).forEach(param => {
    if (sweetalert2.isUpdatableParameter(param)) {
      validUpdatableParams[param] = params[param]
    } else {
      warn(`Invalid parameter to update: "${param}". Updatable params are listed here: https://github.com/sweetalert2/sweetalert2/blob/master/src/utils/params.js\n\nIf you think this parameter should be updatable, request it here: https://github.com/sweetalert2/sweetalert2/issues/new?template=02_feature_request.md`)
    }
  })

  const updatedParams = Object.assign({}, innerParams, validUpdatableParams)

  render(this, updatedParams)

  privateProps.innerParams.set(this, updatedParams)
  Object.defineProperties(this, {
    params: {
      value: Object.assign({}, this.params, params),
      writable: false,
      enumerable: true
    }
  })
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods/_destroy.js




function _destroy () {
  const domCache = privateProps.domCache.get(this)
  const innerParams = privateProps.innerParams.get(this)

  if (!innerParams) {
    return // This instance has already been destroyed
  }

  // Check if there is another Swal closing
  if (domCache.popup && src_globalState.swalCloseEventFinishedCallback) {
    src_globalState.swalCloseEventFinishedCallback()
    delete src_globalState.swalCloseEventFinishedCallback
  }

  // Check if there is a swal disposal defer timer
  if (src_globalState.deferDisposalTimer) {
    clearTimeout(src_globalState.deferDisposalTimer)
    delete src_globalState.deferDisposalTimer
  }

  runDidDestroy(innerParams)

  disposeSwal(this)
}

const runDidDestroy = (innerParams) => {
  if (typeof innerParams.didDestroy === 'function') {
    innerParams.didDestroy()
  } else if (typeof innerParams.onDestroy === 'function') {
    innerParams.onDestroy() // @deprecated
  }
}

const disposeSwal = (instance) => {
  // Unset this.params so GC will dispose it (#1569)
  delete instance.params
  // Unset globalState props so GC will dispose globalState (#1569)
  delete src_globalState.keydownHandler
  delete src_globalState.keydownTarget
  // Unset WeakMaps so GC will be able to dispose them (#1569)
  unsetWeakMaps(privateProps)
  unsetWeakMaps(privateMethods)
}

const unsetWeakMaps = (obj) => {
  for (const i in obj) {
    obj[i] = new WeakMap()
  }
}

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/instanceMethods.js










// CONCATENATED MODULE: ./node_modules/sweetalert2/src/SweetAlert.js






let currentInstance

class SweetAlert_SweetAlert {
  constructor (...args) {
    // Prevent run in Node env
    if (typeof window === 'undefined') {
      return
    }

    // Check for the existence of Promise
    if (typeof Promise === 'undefined') {
      utils_error('This package requires a Promise library, please include a shim to enable it in this browser (See: https://github.com/sweetalert2/sweetalert2/wiki/Migration-from-SweetAlert-to-SweetAlert2#1-ie-support)')
    }

    currentInstance = this

    const outerParams = Object.freeze(this.constructor.argsToParams(args))

    Object.defineProperties(this, {
      params: {
        value: outerParams,
        writable: false,
        enumerable: true,
        configurable: true
      }
    })

    const promise = this._main(this.params)
    privateProps.promise.set(this, promise)
  }

  // `catch` cannot be the name of a module export, so we define our thenable methods here instead
  then (onFulfilled) {
    const promise = privateProps.promise.get(this)
    return promise.then(onFulfilled)
  }

  finally (onFinally) {
    const promise = privateProps.promise.get(this)
    return promise.finally(onFinally)
  }
}

// Assign instance methods from src/instanceMethods/*.js to prototype
Object.assign(SweetAlert_SweetAlert.prototype, instanceMethods_namespaceObject)

// Assign static methods from src/staticMethods/*.js to constructor
Object.assign(SweetAlert_SweetAlert, staticMethods_namespaceObject)

// Proxy to instance methods to constructor, for now, for backwards compatibility
Object.keys(instanceMethods_namespaceObject).forEach(key => {
  SweetAlert_SweetAlert[key] = function (...args) {
    if (currentInstance) {
      return currentInstance[key](...args)
    }
  }
})

SweetAlert_SweetAlert.DismissReason = DismissReason

SweetAlert_SweetAlert.version = '10.16.9'

/* harmony default export */ var src_SweetAlert = (SweetAlert_SweetAlert);

// CONCATENATED MODULE: ./node_modules/sweetalert2/src/sweetalert2.js


const sweetalert2_Swal = src_SweetAlert
sweetalert2_Swal.default = sweetalert2_Swal

/* harmony default export */ var sweetalert2 = __webpack_exports__["a"] = (sweetalert2_Swal);


/***/ }),

/***/ 154:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return switchMap; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _map__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(32);
/* harmony import */ var _observable_from__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(54);
/* harmony import */ var _innerSubscribe__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(53);
/** PURE_IMPORTS_START tslib,_map,_observable_from,_innerSubscribe PURE_IMPORTS_END */




function switchMap(project, resultSelector) {
    if (typeof resultSelector === 'function') {
        return function (source) { return source.pipe(switchMap(function (a, i) { return Object(_observable_from__WEBPACK_IMPORTED_MODULE_2__[/* from */ "a"])(project(a, i)).pipe(Object(_map__WEBPACK_IMPORTED_MODULE_1__[/* map */ "a"])(function (b, ii) { return resultSelector(a, b, i, ii); })); })); };
    }
    return function (source) { return source.lift(new SwitchMapOperator(project)); };
}
var SwitchMapOperator = /*@__PURE__*/ (function () {
    function SwitchMapOperator(project) {
        this.project = project;
    }
    SwitchMapOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new SwitchMapSubscriber(subscriber, this.project));
    };
    return SwitchMapOperator;
}());
var SwitchMapSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](SwitchMapSubscriber, _super);
    function SwitchMapSubscriber(destination, project) {
        var _this = _super.call(this, destination) || this;
        _this.project = project;
        _this.index = 0;
        return _this;
    }
    SwitchMapSubscriber.prototype._next = function (value) {
        var result;
        var index = this.index++;
        try {
            result = this.project(value, index);
        }
        catch (error) {
            this.destination.error(error);
            return;
        }
        this._innerSub(result);
    };
    SwitchMapSubscriber.prototype._innerSub = function (result) {
        var innerSubscription = this.innerSubscription;
        if (innerSubscription) {
            innerSubscription.unsubscribe();
        }
        var innerSubscriber = new _innerSubscribe__WEBPACK_IMPORTED_MODULE_3__[/* SimpleInnerSubscriber */ "a"](this);
        var destination = this.destination;
        destination.add(innerSubscriber);
        this.innerSubscription = Object(_innerSubscribe__WEBPACK_IMPORTED_MODULE_3__[/* innerSubscribe */ "c"])(result, innerSubscriber);
        if (this.innerSubscription !== innerSubscriber) {
            destination.add(this.innerSubscription);
        }
    };
    SwitchMapSubscriber.prototype._complete = function () {
        var innerSubscription = this.innerSubscription;
        if (!innerSubscription || innerSubscription.closed) {
            _super.prototype._complete.call(this);
        }
        this.unsubscribe();
    };
    SwitchMapSubscriber.prototype._unsubscribe = function () {
        this.innerSubscription = undefined;
    };
    SwitchMapSubscriber.prototype.notifyComplete = function () {
        this.innerSubscription = undefined;
        if (this.isStopped) {
            _super.prototype._complete.call(this);
        }
    };
    SwitchMapSubscriber.prototype.notifyNext = function (innerValue) {
        this.destination.next(innerValue);
    };
    return SwitchMapSubscriber;
}(_innerSubscribe__WEBPACK_IMPORTED_MODULE_3__[/* SimpleOuterSubscriber */ "b"]));
//# sourceMappingURL=switchMap.js.map


/***/ }),

/***/ 164:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return SubjectSubscription; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscription__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(22);
/** PURE_IMPORTS_START tslib,_Subscription PURE_IMPORTS_END */


var SubjectSubscription = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](SubjectSubscription, _super);
    function SubjectSubscription(subject, subscriber) {
        var _this = _super.call(this) || this;
        _this.subject = subject;
        _this.subscriber = subscriber;
        _this.closed = false;
        return _this;
    }
    SubjectSubscription.prototype.unsubscribe = function () {
        if (this.closed) {
            return;
        }
        this.closed = true;
        var subject = this.subject;
        var observers = subject.observers;
        this.subject = null;
        if (!observers || observers.length === 0 || subject.isStopped || subject.closed) {
            return;
        }
        var subscriberIndex = observers.indexOf(this.subscriber);
        if (subscriberIndex !== -1) {
            observers.splice(subscriberIndex, 1);
        }
    };
    return SubjectSubscription;
}(_Subscription__WEBPACK_IMPORTED_MODULE_1__[/* Subscription */ "a"]));

//# sourceMappingURL=SubjectSubscription.js.map


/***/ }),

/***/ 166:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return EmptyError; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
var EmptyErrorImpl = /*@__PURE__*/ (function () {
    function EmptyErrorImpl() {
        Error.call(this);
        this.message = 'no elements in sequence';
        this.name = 'EmptyError';
        return this;
    }
    EmptyErrorImpl.prototype = /*@__PURE__*/ Object.create(Error.prototype);
    return EmptyErrorImpl;
})();
var EmptyError = EmptyErrorImpl;
//# sourceMappingURL=EmptyError.js.map


/***/ }),

/***/ 169:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return catchError; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _innerSubscribe__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(53);
/** PURE_IMPORTS_START tslib,_innerSubscribe PURE_IMPORTS_END */


function catchError(selector) {
    return function catchErrorOperatorFunction(source) {
        var operator = new CatchOperator(selector);
        var caught = source.lift(operator);
        return (operator.caught = caught);
    };
}
var CatchOperator = /*@__PURE__*/ (function () {
    function CatchOperator(selector) {
        this.selector = selector;
    }
    CatchOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new CatchSubscriber(subscriber, this.selector, this.caught));
    };
    return CatchOperator;
}());
var CatchSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](CatchSubscriber, _super);
    function CatchSubscriber(destination, selector, caught) {
        var _this = _super.call(this, destination) || this;
        _this.selector = selector;
        _this.caught = caught;
        return _this;
    }
    CatchSubscriber.prototype.error = function (err) {
        if (!this.isStopped) {
            var result = void 0;
            try {
                result = this.selector(err, this.caught);
            }
            catch (err2) {
                _super.prototype.error.call(this, err2);
                return;
            }
            this._unsubscribeAndRecycle();
            var innerSubscriber = new _innerSubscribe__WEBPACK_IMPORTED_MODULE_1__[/* SimpleInnerSubscriber */ "a"](this);
            this.add(innerSubscriber);
            var innerSubscription = Object(_innerSubscribe__WEBPACK_IMPORTED_MODULE_1__[/* innerSubscribe */ "c"])(result, innerSubscriber);
            if (innerSubscription !== innerSubscriber) {
                this.add(innerSubscription);
            }
        }
    };
    return CatchSubscriber;
}(_innerSubscribe__WEBPACK_IMPORTED_MODULE_1__[/* SimpleOuterSubscriber */ "b"]));
//# sourceMappingURL=catchError.js.map


/***/ }),

/***/ 178:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ConnectableObservable; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "b", function() { return connectableObservableDescriptor; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subject__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(28);
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(15);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(18);
/* harmony import */ var _Subscription__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(22);
/* harmony import */ var _operators_refCount__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(118);
/** PURE_IMPORTS_START tslib,_Subject,_Observable,_Subscriber,_Subscription,_operators_refCount PURE_IMPORTS_END */






var ConnectableObservable = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](ConnectableObservable, _super);
    function ConnectableObservable(source, subjectFactory) {
        var _this = _super.call(this) || this;
        _this.source = source;
        _this.subjectFactory = subjectFactory;
        _this._refCount = 0;
        _this._isComplete = false;
        return _this;
    }
    ConnectableObservable.prototype._subscribe = function (subscriber) {
        return this.getSubject().subscribe(subscriber);
    };
    ConnectableObservable.prototype.getSubject = function () {
        var subject = this._subject;
        if (!subject || subject.isStopped) {
            this._subject = this.subjectFactory();
        }
        return this._subject;
    };
    ConnectableObservable.prototype.connect = function () {
        var connection = this._connection;
        if (!connection) {
            this._isComplete = false;
            connection = this._connection = new _Subscription__WEBPACK_IMPORTED_MODULE_4__[/* Subscription */ "a"]();
            connection.add(this.source
                .subscribe(new ConnectableSubscriber(this.getSubject(), this)));
            if (connection.closed) {
                this._connection = null;
                connection = _Subscription__WEBPACK_IMPORTED_MODULE_4__[/* Subscription */ "a"].EMPTY;
            }
        }
        return connection;
    };
    ConnectableObservable.prototype.refCount = function () {
        return Object(_operators_refCount__WEBPACK_IMPORTED_MODULE_5__[/* refCount */ "a"])()(this);
    };
    return ConnectableObservable;
}(_Observable__WEBPACK_IMPORTED_MODULE_2__[/* Observable */ "a"]));

var connectableObservableDescriptor = /*@__PURE__*/ (function () {
    var connectableProto = ConnectableObservable.prototype;
    return {
        operator: { value: null },
        _refCount: { value: 0, writable: true },
        _subject: { value: null, writable: true },
        _connection: { value: null, writable: true },
        _subscribe: { value: connectableProto._subscribe },
        _isComplete: { value: connectableProto._isComplete, writable: true },
        getSubject: { value: connectableProto.getSubject },
        connect: { value: connectableProto.connect },
        refCount: { value: connectableProto.refCount }
    };
})();
var ConnectableSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](ConnectableSubscriber, _super);
    function ConnectableSubscriber(destination, connectable) {
        var _this = _super.call(this, destination) || this;
        _this.connectable = connectable;
        return _this;
    }
    ConnectableSubscriber.prototype._error = function (err) {
        this._unsubscribe();
        _super.prototype._error.call(this, err);
    };
    ConnectableSubscriber.prototype._complete = function () {
        this.connectable._isComplete = true;
        this._unsubscribe();
        _super.prototype._complete.call(this);
    };
    ConnectableSubscriber.prototype._unsubscribe = function () {
        var connectable = this.connectable;
        if (connectable) {
            this.connectable = null;
            var connection = connectable._connection;
            connectable._refCount = 0;
            connectable._subject = null;
            connectable._connection = null;
            if (connection) {
                connection.unsubscribe();
            }
        }
    };
    return ConnectableSubscriber;
}(_Subject__WEBPACK_IMPORTED_MODULE_1__[/* SubjectSubscriber */ "b"]));
var RefCountOperator = /*@__PURE__*/ (function () {
    function RefCountOperator(connectable) {
        this.connectable = connectable;
    }
    RefCountOperator.prototype.call = function (subscriber, source) {
        var connectable = this.connectable;
        connectable._refCount++;
        var refCounter = new RefCountSubscriber(subscriber, connectable);
        var subscription = source.subscribe(refCounter);
        if (!refCounter.closed) {
            refCounter.connection = connectable.connect();
        }
        return subscription;
    };
    return RefCountOperator;
}());
var RefCountSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](RefCountSubscriber, _super);
    function RefCountSubscriber(destination, connectable) {
        var _this = _super.call(this, destination) || this;
        _this.connectable = connectable;
        return _this;
    }
    RefCountSubscriber.prototype._unsubscribe = function () {
        var connectable = this.connectable;
        if (!connectable) {
            this.connection = null;
            return;
        }
        this.connectable = null;
        var refCount = connectable._refCount;
        if (refCount <= 0) {
            this.connection = null;
            return;
        }
        connectable._refCount = refCount - 1;
        if (refCount > 1) {
            this.connection = null;
            return;
        }
        var connection = this.connection;
        var sharedConnection = connectable._connection;
        this.connection = null;
        if (sharedConnection && (!connection || sharedConnection === connection)) {
            sharedConnection.unsubscribe();
        }
    };
    return RefCountSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_3__[/* Subscriber */ "a"]));
//# sourceMappingURL=ConnectableObservable.js.map


/***/ }),

/***/ 18:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return Subscriber; });
/* unused harmony export SafeSubscriber */
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _util_isFunction__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(83);
/* harmony import */ var _Observer__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(97);
/* harmony import */ var _Subscription__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(22);
/* harmony import */ var _internal_symbol_rxSubscriber__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(82);
/* harmony import */ var _config__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(47);
/* harmony import */ var _util_hostReportError__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(65);
/** PURE_IMPORTS_START tslib,_util_isFunction,_Observer,_Subscription,_internal_symbol_rxSubscriber,_config,_util_hostReportError PURE_IMPORTS_END */







var Subscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](Subscriber, _super);
    function Subscriber(destinationOrNext, error, complete) {
        var _this = _super.call(this) || this;
        _this.syncErrorValue = null;
        _this.syncErrorThrown = false;
        _this.syncErrorThrowable = false;
        _this.isStopped = false;
        switch (arguments.length) {
            case 0:
                _this.destination = _Observer__WEBPACK_IMPORTED_MODULE_2__[/* empty */ "a"];
                break;
            case 1:
                if (!destinationOrNext) {
                    _this.destination = _Observer__WEBPACK_IMPORTED_MODULE_2__[/* empty */ "a"];
                    break;
                }
                if (typeof destinationOrNext === 'object') {
                    if (destinationOrNext instanceof Subscriber) {
                        _this.syncErrorThrowable = destinationOrNext.syncErrorThrowable;
                        _this.destination = destinationOrNext;
                        destinationOrNext.add(_this);
                    }
                    else {
                        _this.syncErrorThrowable = true;
                        _this.destination = new SafeSubscriber(_this, destinationOrNext);
                    }
                    break;
                }
            default:
                _this.syncErrorThrowable = true;
                _this.destination = new SafeSubscriber(_this, destinationOrNext, error, complete);
                break;
        }
        return _this;
    }
    Subscriber.prototype[_internal_symbol_rxSubscriber__WEBPACK_IMPORTED_MODULE_4__[/* rxSubscriber */ "a"]] = function () { return this; };
    Subscriber.create = function (next, error, complete) {
        var subscriber = new Subscriber(next, error, complete);
        subscriber.syncErrorThrowable = false;
        return subscriber;
    };
    Subscriber.prototype.next = function (value) {
        if (!this.isStopped) {
            this._next(value);
        }
    };
    Subscriber.prototype.error = function (err) {
        if (!this.isStopped) {
            this.isStopped = true;
            this._error(err);
        }
    };
    Subscriber.prototype.complete = function () {
        if (!this.isStopped) {
            this.isStopped = true;
            this._complete();
        }
    };
    Subscriber.prototype.unsubscribe = function () {
        if (this.closed) {
            return;
        }
        this.isStopped = true;
        _super.prototype.unsubscribe.call(this);
    };
    Subscriber.prototype._next = function (value) {
        this.destination.next(value);
    };
    Subscriber.prototype._error = function (err) {
        this.destination.error(err);
        this.unsubscribe();
    };
    Subscriber.prototype._complete = function () {
        this.destination.complete();
        this.unsubscribe();
    };
    Subscriber.prototype._unsubscribeAndRecycle = function () {
        var _parentOrParents = this._parentOrParents;
        this._parentOrParents = null;
        this.unsubscribe();
        this.closed = false;
        this.isStopped = false;
        this._parentOrParents = _parentOrParents;
        return this;
    };
    return Subscriber;
}(_Subscription__WEBPACK_IMPORTED_MODULE_3__[/* Subscription */ "a"]));

var SafeSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](SafeSubscriber, _super);
    function SafeSubscriber(_parentSubscriber, observerOrNext, error, complete) {
        var _this = _super.call(this) || this;
        _this._parentSubscriber = _parentSubscriber;
        var next;
        var context = _this;
        if (Object(_util_isFunction__WEBPACK_IMPORTED_MODULE_1__[/* isFunction */ "a"])(observerOrNext)) {
            next = observerOrNext;
        }
        else if (observerOrNext) {
            next = observerOrNext.next;
            error = observerOrNext.error;
            complete = observerOrNext.complete;
            if (observerOrNext !== _Observer__WEBPACK_IMPORTED_MODULE_2__[/* empty */ "a"]) {
                context = Object.create(observerOrNext);
                if (Object(_util_isFunction__WEBPACK_IMPORTED_MODULE_1__[/* isFunction */ "a"])(context.unsubscribe)) {
                    _this.add(context.unsubscribe.bind(context));
                }
                context.unsubscribe = _this.unsubscribe.bind(_this);
            }
        }
        _this._context = context;
        _this._next = next;
        _this._error = error;
        _this._complete = complete;
        return _this;
    }
    SafeSubscriber.prototype.next = function (value) {
        if (!this.isStopped && this._next) {
            var _parentSubscriber = this._parentSubscriber;
            if (!_config__WEBPACK_IMPORTED_MODULE_5__[/* config */ "a"].useDeprecatedSynchronousErrorHandling || !_parentSubscriber.syncErrorThrowable) {
                this.__tryOrUnsub(this._next, value);
            }
            else if (this.__tryOrSetError(_parentSubscriber, this._next, value)) {
                this.unsubscribe();
            }
        }
    };
    SafeSubscriber.prototype.error = function (err) {
        if (!this.isStopped) {
            var _parentSubscriber = this._parentSubscriber;
            var useDeprecatedSynchronousErrorHandling = _config__WEBPACK_IMPORTED_MODULE_5__[/* config */ "a"].useDeprecatedSynchronousErrorHandling;
            if (this._error) {
                if (!useDeprecatedSynchronousErrorHandling || !_parentSubscriber.syncErrorThrowable) {
                    this.__tryOrUnsub(this._error, err);
                    this.unsubscribe();
                }
                else {
                    this.__tryOrSetError(_parentSubscriber, this._error, err);
                    this.unsubscribe();
                }
            }
            else if (!_parentSubscriber.syncErrorThrowable) {
                this.unsubscribe();
                if (useDeprecatedSynchronousErrorHandling) {
                    throw err;
                }
                Object(_util_hostReportError__WEBPACK_IMPORTED_MODULE_6__[/* hostReportError */ "a"])(err);
            }
            else {
                if (useDeprecatedSynchronousErrorHandling) {
                    _parentSubscriber.syncErrorValue = err;
                    _parentSubscriber.syncErrorThrown = true;
                }
                else {
                    Object(_util_hostReportError__WEBPACK_IMPORTED_MODULE_6__[/* hostReportError */ "a"])(err);
                }
                this.unsubscribe();
            }
        }
    };
    SafeSubscriber.prototype.complete = function () {
        var _this = this;
        if (!this.isStopped) {
            var _parentSubscriber = this._parentSubscriber;
            if (this._complete) {
                var wrappedComplete = function () { return _this._complete.call(_this._context); };
                if (!_config__WEBPACK_IMPORTED_MODULE_5__[/* config */ "a"].useDeprecatedSynchronousErrorHandling || !_parentSubscriber.syncErrorThrowable) {
                    this.__tryOrUnsub(wrappedComplete);
                    this.unsubscribe();
                }
                else {
                    this.__tryOrSetError(_parentSubscriber, wrappedComplete);
                    this.unsubscribe();
                }
            }
            else {
                this.unsubscribe();
            }
        }
    };
    SafeSubscriber.prototype.__tryOrUnsub = function (fn, value) {
        try {
            fn.call(this._context, value);
        }
        catch (err) {
            this.unsubscribe();
            if (_config__WEBPACK_IMPORTED_MODULE_5__[/* config */ "a"].useDeprecatedSynchronousErrorHandling) {
                throw err;
            }
            else {
                Object(_util_hostReportError__WEBPACK_IMPORTED_MODULE_6__[/* hostReportError */ "a"])(err);
            }
        }
    };
    SafeSubscriber.prototype.__tryOrSetError = function (parent, fn, value) {
        if (!_config__WEBPACK_IMPORTED_MODULE_5__[/* config */ "a"].useDeprecatedSynchronousErrorHandling) {
            throw new Error('bad call');
        }
        try {
            fn.call(this._context, value);
        }
        catch (err) {
            if (_config__WEBPACK_IMPORTED_MODULE_5__[/* config */ "a"].useDeprecatedSynchronousErrorHandling) {
                parent.syncErrorValue = err;
                parent.syncErrorThrown = true;
                return true;
            }
            else {
                Object(_util_hostReportError__WEBPACK_IMPORTED_MODULE_6__[/* hostReportError */ "a"])(err);
                return true;
            }
        }
        return false;
    };
    SafeSubscriber.prototype._unsubscribe = function () {
        var _parentSubscriber = this._parentSubscriber;
        this._context = null;
        this._parentSubscriber = null;
        _parentSubscriber.unsubscribe();
    };
    return SafeSubscriber;
}(Subscriber));

//# sourceMappingURL=Subscriber.js.map


/***/ }),

/***/ 190:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return take; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/* harmony import */ var _util_ArgumentOutOfRangeError__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(254);
/* harmony import */ var _observable_empty__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(98);
/** PURE_IMPORTS_START tslib,_Subscriber,_util_ArgumentOutOfRangeError,_observable_empty PURE_IMPORTS_END */




function take(count) {
    return function (source) {
        if (count === 0) {
            return Object(_observable_empty__WEBPACK_IMPORTED_MODULE_3__[/* empty */ "b"])();
        }
        else {
            return source.lift(new TakeOperator(count));
        }
    };
}
var TakeOperator = /*@__PURE__*/ (function () {
    function TakeOperator(total) {
        this.total = total;
        if (this.total < 0) {
            throw new _util_ArgumentOutOfRangeError__WEBPACK_IMPORTED_MODULE_2__[/* ArgumentOutOfRangeError */ "a"];
        }
    }
    TakeOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new TakeSubscriber(subscriber, this.total));
    };
    return TakeOperator;
}());
var TakeSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](TakeSubscriber, _super);
    function TakeSubscriber(destination, total) {
        var _this = _super.call(this, destination) || this;
        _this.total = total;
        _this.count = 0;
        return _this;
    }
    TakeSubscriber.prototype._next = function (value) {
        var total = this.total;
        var count = ++this.count;
        if (count <= total) {
            this.destination.next(value);
            if (count === total) {
                this.destination.complete();
                this.unsubscribe();
            }
        }
    };
    return TakeSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));
//# sourceMappingURL=take.js.map


/***/ }),

/***/ 192:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ share; });

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/observable/ConnectableObservable.js
var ConnectableObservable = __webpack_require__(178);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/operators/multicast.js
/** PURE_IMPORTS_START _observable_ConnectableObservable PURE_IMPORTS_END */

function multicast(subjectOrSubjectFactory, selector) {
    return function multicastOperatorFunction(source) {
        var subjectFactory;
        if (typeof subjectOrSubjectFactory === 'function') {
            subjectFactory = subjectOrSubjectFactory;
        }
        else {
            subjectFactory = function subjectFactory() {
                return subjectOrSubjectFactory;
            };
        }
        if (typeof selector === 'function') {
            return source.lift(new MulticastOperator(subjectFactory, selector));
        }
        var connectable = Object.create(source, ConnectableObservable["b" /* connectableObservableDescriptor */]);
        connectable.source = source;
        connectable.subjectFactory = subjectFactory;
        return connectable;
    };
}
var MulticastOperator = /*@__PURE__*/ (function () {
    function MulticastOperator(subjectFactory, selector) {
        this.subjectFactory = subjectFactory;
        this.selector = selector;
    }
    MulticastOperator.prototype.call = function (subscriber, source) {
        var selector = this.selector;
        var subject = this.subjectFactory();
        var subscription = selector(subject).subscribe(subscriber);
        subscription.add(source.subscribe(subject));
        return subscription;
    };
    return MulticastOperator;
}());

//# sourceMappingURL=multicast.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/operators/refCount.js
var refCount = __webpack_require__(118);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Subject.js
var Subject = __webpack_require__(28);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/operators/share.js
/** PURE_IMPORTS_START _multicast,_refCount,_Subject PURE_IMPORTS_END */



function shareSubjectFactory() {
    return new Subject["a" /* Subject */]();
}
function share() {
    return function (source) { return Object(refCount["a" /* refCount */])()(multicast(shareSubjectFactory)(source)); };
}
//# sourceMappingURL=share.js.map


/***/ }),

/***/ 193:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return first; });
/* harmony import */ var _util_EmptyError__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(166);
/* harmony import */ var _filter__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(151);
/* harmony import */ var _take__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(190);
/* harmony import */ var _defaultIfEmpty__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(255);
/* harmony import */ var _throwIfEmpty__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(256);
/* harmony import */ var _util_identity__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(95);
/** PURE_IMPORTS_START _util_EmptyError,_filter,_take,_defaultIfEmpty,_throwIfEmpty,_util_identity PURE_IMPORTS_END */






function first(predicate, defaultValue) {
    var hasDefaultValue = arguments.length >= 2;
    return function (source) { return source.pipe(predicate ? Object(_filter__WEBPACK_IMPORTED_MODULE_1__[/* filter */ "a"])(function (v, i) { return predicate(v, i, source); }) : _util_identity__WEBPACK_IMPORTED_MODULE_5__[/* identity */ "a"], Object(_take__WEBPACK_IMPORTED_MODULE_2__[/* take */ "a"])(1), hasDefaultValue ? Object(_defaultIfEmpty__WEBPACK_IMPORTED_MODULE_3__[/* defaultIfEmpty */ "a"])(defaultValue) : Object(_throwIfEmpty__WEBPACK_IMPORTED_MODULE_4__[/* throwIfEmpty */ "a"])(function () { return new _util_EmptyError__WEBPACK_IMPORTED_MODULE_0__[/* EmptyError */ "a"](); })); };
}
//# sourceMappingURL=first.js.map


/***/ }),

/***/ 210:
/***/ (function(module, exports, __webpack_require__) {

"use strict";
// Copyright Joyent, Inc. and other Node contributors.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to permit
// persons to whom the Software is furnished to do so, subject to the
// following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
// NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.



var punycode = __webpack_require__(319);
var util = __webpack_require__(320);

exports.parse = urlParse;
exports.resolve = urlResolve;
exports.resolveObject = urlResolveObject;
exports.format = urlFormat;

exports.Url = Url;

function Url() {
  this.protocol = null;
  this.slashes = null;
  this.auth = null;
  this.host = null;
  this.port = null;
  this.hostname = null;
  this.hash = null;
  this.search = null;
  this.query = null;
  this.pathname = null;
  this.path = null;
  this.href = null;
}

// Reference: RFC 3986, RFC 1808, RFC 2396

// define these here so at least they only have to be
// compiled once on the first module load.
var protocolPattern = /^([a-z0-9.+-]+:)/i,
    portPattern = /:[0-9]*$/,

    // Special case for a simple path URL
    simplePathPattern = /^(\/\/?(?!\/)[^\?\s]*)(\?[^\s]*)?$/,

    // RFC 2396: characters reserved for delimiting URLs.
    // We actually just auto-escape these.
    delims = ['<', '>', '"', '`', ' ', '\r', '\n', '\t'],

    // RFC 2396: characters not allowed for various reasons.
    unwise = ['{', '}', '|', '\\', '^', '`'].concat(delims),

    // Allowed by RFCs, but cause of XSS attacks.  Always escape these.
    autoEscape = ['\''].concat(unwise),
    // Characters that are never ever allowed in a hostname.
    // Note that any invalid chars are also handled, but these
    // are the ones that are *expected* to be seen, so we fast-path
    // them.
    nonHostChars = ['%', '/', '?', ';', '#'].concat(autoEscape),
    hostEndingChars = ['/', '?', '#'],
    hostnameMaxLen = 255,
    hostnamePartPattern = /^[+a-z0-9A-Z_-]{0,63}$/,
    hostnamePartStart = /^([+a-z0-9A-Z_-]{0,63})(.*)$/,
    // protocols that can allow "unsafe" and "unwise" chars.
    unsafeProtocol = {
      'javascript': true,
      'javascript:': true
    },
    // protocols that never have a hostname.
    hostlessProtocol = {
      'javascript': true,
      'javascript:': true
    },
    // protocols that always contain a // bit.
    slashedProtocol = {
      'http': true,
      'https': true,
      'ftp': true,
      'gopher': true,
      'file': true,
      'http:': true,
      'https:': true,
      'ftp:': true,
      'gopher:': true,
      'file:': true
    },
    querystring = __webpack_require__(321);

function urlParse(url, parseQueryString, slashesDenoteHost) {
  if (url && util.isObject(url) && url instanceof Url) return url;

  var u = new Url;
  u.parse(url, parseQueryString, slashesDenoteHost);
  return u;
}

Url.prototype.parse = function(url, parseQueryString, slashesDenoteHost) {
  if (!util.isString(url)) {
    throw new TypeError("Parameter 'url' must be a string, not " + typeof url);
  }

  // Copy chrome, IE, opera backslash-handling behavior.
  // Back slashes before the query string get converted to forward slashes
  // See: https://code.google.com/p/chromium/issues/detail?id=25916
  var queryIndex = url.indexOf('?'),
      splitter =
          (queryIndex !== -1 && queryIndex < url.indexOf('#')) ? '?' : '#',
      uSplit = url.split(splitter),
      slashRegex = /\\/g;
  uSplit[0] = uSplit[0].replace(slashRegex, '/');
  url = uSplit.join(splitter);

  var rest = url;

  // trim before proceeding.
  // This is to support parse stuff like "  http://foo.com  \n"
  rest = rest.trim();

  if (!slashesDenoteHost && url.split('#').length === 1) {
    // Try fast path regexp
    var simplePath = simplePathPattern.exec(rest);
    if (simplePath) {
      this.path = rest;
      this.href = rest;
      this.pathname = simplePath[1];
      if (simplePath[2]) {
        this.search = simplePath[2];
        if (parseQueryString) {
          this.query = querystring.parse(this.search.substr(1));
        } else {
          this.query = this.search.substr(1);
        }
      } else if (parseQueryString) {
        this.search = '';
        this.query = {};
      }
      return this;
    }
  }

  var proto = protocolPattern.exec(rest);
  if (proto) {
    proto = proto[0];
    var lowerProto = proto.toLowerCase();
    this.protocol = lowerProto;
    rest = rest.substr(proto.length);
  }

  // figure out if it's got a host
  // user@server is *always* interpreted as a hostname, and url
  // resolution will treat //foo/bar as host=foo,path=bar because that's
  // how the browser resolves relative URLs.
  if (slashesDenoteHost || proto || rest.match(/^\/\/[^@\/]+@[^@\/]+/)) {
    var slashes = rest.substr(0, 2) === '//';
    if (slashes && !(proto && hostlessProtocol[proto])) {
      rest = rest.substr(2);
      this.slashes = true;
    }
  }

  if (!hostlessProtocol[proto] &&
      (slashes || (proto && !slashedProtocol[proto]))) {

    // there's a hostname.
    // the first instance of /, ?, ;, or # ends the host.
    //
    // If there is an @ in the hostname, then non-host chars *are* allowed
    // to the left of the last @ sign, unless some host-ending character
    // comes *before* the @-sign.
    // URLs are obnoxious.
    //
    // ex:
    // http://a@b@c/ => user:a@b host:c
    // http://a@b?@c => user:a host:c path:/?@c

    // v0.12 TODO(isaacs): This is not quite how Chrome does things.
    // Review our test case against browsers more comprehensively.

    // find the first instance of any hostEndingChars
    var hostEnd = -1;
    for (var i = 0; i < hostEndingChars.length; i++) {
      var hec = rest.indexOf(hostEndingChars[i]);
      if (hec !== -1 && (hostEnd === -1 || hec < hostEnd))
        hostEnd = hec;
    }

    // at this point, either we have an explicit point where the
    // auth portion cannot go past, or the last @ char is the decider.
    var auth, atSign;
    if (hostEnd === -1) {
      // atSign can be anywhere.
      atSign = rest.lastIndexOf('@');
    } else {
      // atSign must be in auth portion.
      // http://a@b/c@d => host:b auth:a path:/c@d
      atSign = rest.lastIndexOf('@', hostEnd);
    }

    // Now we have a portion which is definitely the auth.
    // Pull that off.
    if (atSign !== -1) {
      auth = rest.slice(0, atSign);
      rest = rest.slice(atSign + 1);
      this.auth = decodeURIComponent(auth);
    }

    // the host is the remaining to the left of the first non-host char
    hostEnd = -1;
    for (var i = 0; i < nonHostChars.length; i++) {
      var hec = rest.indexOf(nonHostChars[i]);
      if (hec !== -1 && (hostEnd === -1 || hec < hostEnd))
        hostEnd = hec;
    }
    // if we still have not hit it, then the entire thing is a host.
    if (hostEnd === -1)
      hostEnd = rest.length;

    this.host = rest.slice(0, hostEnd);
    rest = rest.slice(hostEnd);

    // pull out port.
    this.parseHost();

    // we've indicated that there is a hostname,
    // so even if it's empty, it has to be present.
    this.hostname = this.hostname || '';

    // if hostname begins with [ and ends with ]
    // assume that it's an IPv6 address.
    var ipv6Hostname = this.hostname[0] === '[' &&
        this.hostname[this.hostname.length - 1] === ']';

    // validate a little.
    if (!ipv6Hostname) {
      var hostparts = this.hostname.split(/\./);
      for (var i = 0, l = hostparts.length; i < l; i++) {
        var part = hostparts[i];
        if (!part) continue;
        if (!part.match(hostnamePartPattern)) {
          var newpart = '';
          for (var j = 0, k = part.length; j < k; j++) {
            if (part.charCodeAt(j) > 127) {
              // we replace non-ASCII char with a temporary placeholder
              // we need this to make sure size of hostname is not
              // broken by replacing non-ASCII by nothing
              newpart += 'x';
            } else {
              newpart += part[j];
            }
          }
          // we test again with ASCII char only
          if (!newpart.match(hostnamePartPattern)) {
            var validParts = hostparts.slice(0, i);
            var notHost = hostparts.slice(i + 1);
            var bit = part.match(hostnamePartStart);
            if (bit) {
              validParts.push(bit[1]);
              notHost.unshift(bit[2]);
            }
            if (notHost.length) {
              rest = '/' + notHost.join('.') + rest;
            }
            this.hostname = validParts.join('.');
            break;
          }
        }
      }
    }

    if (this.hostname.length > hostnameMaxLen) {
      this.hostname = '';
    } else {
      // hostnames are always lower case.
      this.hostname = this.hostname.toLowerCase();
    }

    if (!ipv6Hostname) {
      // IDNA Support: Returns a punycoded representation of "domain".
      // It only converts parts of the domain name that
      // have non-ASCII characters, i.e. it doesn't matter if
      // you call it with a domain that already is ASCII-only.
      this.hostname = punycode.toASCII(this.hostname);
    }

    var p = this.port ? ':' + this.port : '';
    var h = this.hostname || '';
    this.host = h + p;
    this.href += this.host;

    // strip [ and ] from the hostname
    // the host field still retains them, though
    if (ipv6Hostname) {
      this.hostname = this.hostname.substr(1, this.hostname.length - 2);
      if (rest[0] !== '/') {
        rest = '/' + rest;
      }
    }
  }

  // now rest is set to the post-host stuff.
  // chop off any delim chars.
  if (!unsafeProtocol[lowerProto]) {

    // First, make 100% sure that any "autoEscape" chars get
    // escaped, even if encodeURIComponent doesn't think they
    // need to be.
    for (var i = 0, l = autoEscape.length; i < l; i++) {
      var ae = autoEscape[i];
      if (rest.indexOf(ae) === -1)
        continue;
      var esc = encodeURIComponent(ae);
      if (esc === ae) {
        esc = escape(ae);
      }
      rest = rest.split(ae).join(esc);
    }
  }


  // chop off from the tail first.
  var hash = rest.indexOf('#');
  if (hash !== -1) {
    // got a fragment string.
    this.hash = rest.substr(hash);
    rest = rest.slice(0, hash);
  }
  var qm = rest.indexOf('?');
  if (qm !== -1) {
    this.search = rest.substr(qm);
    this.query = rest.substr(qm + 1);
    if (parseQueryString) {
      this.query = querystring.parse(this.query);
    }
    rest = rest.slice(0, qm);
  } else if (parseQueryString) {
    // no query string, but parseQueryString still requested
    this.search = '';
    this.query = {};
  }
  if (rest) this.pathname = rest;
  if (slashedProtocol[lowerProto] &&
      this.hostname && !this.pathname) {
    this.pathname = '/';
  }

  //to support http.request
  if (this.pathname || this.search) {
    var p = this.pathname || '';
    var s = this.search || '';
    this.path = p + s;
  }

  // finally, reconstruct the href based on what has been validated.
  this.href = this.format();
  return this;
};

// format a parsed object into a url string
function urlFormat(obj) {
  // ensure it's an object, and not a string url.
  // If it's an obj, this is a no-op.
  // this way, you can call url_format() on strings
  // to clean up potentially wonky urls.
  if (util.isString(obj)) obj = urlParse(obj);
  if (!(obj instanceof Url)) return Url.prototype.format.call(obj);
  return obj.format();
}

Url.prototype.format = function() {
  var auth = this.auth || '';
  if (auth) {
    auth = encodeURIComponent(auth);
    auth = auth.replace(/%3A/i, ':');
    auth += '@';
  }

  var protocol = this.protocol || '',
      pathname = this.pathname || '',
      hash = this.hash || '',
      host = false,
      query = '';

  if (this.host) {
    host = auth + this.host;
  } else if (this.hostname) {
    host = auth + (this.hostname.indexOf(':') === -1 ?
        this.hostname :
        '[' + this.hostname + ']');
    if (this.port) {
      host += ':' + this.port;
    }
  }

  if (this.query &&
      util.isObject(this.query) &&
      Object.keys(this.query).length) {
    query = querystring.stringify(this.query);
  }

  var search = this.search || (query && ('?' + query)) || '';

  if (protocol && protocol.substr(-1) !== ':') protocol += ':';

  // only the slashedProtocols get the //.  Not mailto:, xmpp:, etc.
  // unless they had them to begin with.
  if (this.slashes ||
      (!protocol || slashedProtocol[protocol]) && host !== false) {
    host = '//' + (host || '');
    if (pathname && pathname.charAt(0) !== '/') pathname = '/' + pathname;
  } else if (!host) {
    host = '';
  }

  if (hash && hash.charAt(0) !== '#') hash = '#' + hash;
  if (search && search.charAt(0) !== '?') search = '?' + search;

  pathname = pathname.replace(/[?#]/g, function(match) {
    return encodeURIComponent(match);
  });
  search = search.replace('#', '%23');

  return protocol + host + pathname + search + hash;
};

function urlResolve(source, relative) {
  return urlParse(source, false, true).resolve(relative);
}

Url.prototype.resolve = function(relative) {
  return this.resolveObject(urlParse(relative, false, true)).format();
};

function urlResolveObject(source, relative) {
  if (!source) return relative;
  return urlParse(source, false, true).resolveObject(relative);
}

Url.prototype.resolveObject = function(relative) {
  if (util.isString(relative)) {
    var rel = new Url();
    rel.parse(relative, false, true);
    relative = rel;
  }

  var result = new Url();
  var tkeys = Object.keys(this);
  for (var tk = 0; tk < tkeys.length; tk++) {
    var tkey = tkeys[tk];
    result[tkey] = this[tkey];
  }

  // hash is always overridden, no matter what.
  // even href="" will remove it.
  result.hash = relative.hash;

  // if the relative url is empty, then there's nothing left to do here.
  if (relative.href === '') {
    result.href = result.format();
    return result;
  }

  // hrefs like //foo/bar always cut to the protocol.
  if (relative.slashes && !relative.protocol) {
    // take everything except the protocol from relative
    var rkeys = Object.keys(relative);
    for (var rk = 0; rk < rkeys.length; rk++) {
      var rkey = rkeys[rk];
      if (rkey !== 'protocol')
        result[rkey] = relative[rkey];
    }

    //urlParse appends trailing / to urls like http://www.example.com
    if (slashedProtocol[result.protocol] &&
        result.hostname && !result.pathname) {
      result.path = result.pathname = '/';
    }

    result.href = result.format();
    return result;
  }

  if (relative.protocol && relative.protocol !== result.protocol) {
    // if it's a known url protocol, then changing
    // the protocol does weird things
    // first, if it's not file:, then we MUST have a host,
    // and if there was a path
    // to begin with, then we MUST have a path.
    // if it is file:, then the host is dropped,
    // because that's known to be hostless.
    // anything else is assumed to be absolute.
    if (!slashedProtocol[relative.protocol]) {
      var keys = Object.keys(relative);
      for (var v = 0; v < keys.length; v++) {
        var k = keys[v];
        result[k] = relative[k];
      }
      result.href = result.format();
      return result;
    }

    result.protocol = relative.protocol;
    if (!relative.host && !hostlessProtocol[relative.protocol]) {
      var relPath = (relative.pathname || '').split('/');
      while (relPath.length && !(relative.host = relPath.shift()));
      if (!relative.host) relative.host = '';
      if (!relative.hostname) relative.hostname = '';
      if (relPath[0] !== '') relPath.unshift('');
      if (relPath.length < 2) relPath.unshift('');
      result.pathname = relPath.join('/');
    } else {
      result.pathname = relative.pathname;
    }
    result.search = relative.search;
    result.query = relative.query;
    result.host = relative.host || '';
    result.auth = relative.auth;
    result.hostname = relative.hostname || relative.host;
    result.port = relative.port;
    // to support http.request
    if (result.pathname || result.search) {
      var p = result.pathname || '';
      var s = result.search || '';
      result.path = p + s;
    }
    result.slashes = result.slashes || relative.slashes;
    result.href = result.format();
    return result;
  }

  var isSourceAbs = (result.pathname && result.pathname.charAt(0) === '/'),
      isRelAbs = (
          relative.host ||
          relative.pathname && relative.pathname.charAt(0) === '/'
      ),
      mustEndAbs = (isRelAbs || isSourceAbs ||
                    (result.host && relative.pathname)),
      removeAllDots = mustEndAbs,
      srcPath = result.pathname && result.pathname.split('/') || [],
      relPath = relative.pathname && relative.pathname.split('/') || [],
      psychotic = result.protocol && !slashedProtocol[result.protocol];

  // if the url is a non-slashed url, then relative
  // links like ../.. should be able
  // to crawl up to the hostname, as well.  This is strange.
  // result.protocol has already been set by now.
  // Later on, put the first path part into the host field.
  if (psychotic) {
    result.hostname = '';
    result.port = null;
    if (result.host) {
      if (srcPath[0] === '') srcPath[0] = result.host;
      else srcPath.unshift(result.host);
    }
    result.host = '';
    if (relative.protocol) {
      relative.hostname = null;
      relative.port = null;
      if (relative.host) {
        if (relPath[0] === '') relPath[0] = relative.host;
        else relPath.unshift(relative.host);
      }
      relative.host = null;
    }
    mustEndAbs = mustEndAbs && (relPath[0] === '' || srcPath[0] === '');
  }

  if (isRelAbs) {
    // it's absolute.
    result.host = (relative.host || relative.host === '') ?
                  relative.host : result.host;
    result.hostname = (relative.hostname || relative.hostname === '') ?
                      relative.hostname : result.hostname;
    result.search = relative.search;
    result.query = relative.query;
    srcPath = relPath;
    // fall through to the dot-handling below.
  } else if (relPath.length) {
    // it's relative
    // throw away the existing file, and take the new path instead.
    if (!srcPath) srcPath = [];
    srcPath.pop();
    srcPath = srcPath.concat(relPath);
    result.search = relative.search;
    result.query = relative.query;
  } else if (!util.isNullOrUndefined(relative.search)) {
    // just pull out the search.
    // like href='?foo'.
    // Put this after the other two cases because it simplifies the booleans
    if (psychotic) {
      result.hostname = result.host = srcPath.shift();
      //occationaly the auth can get stuck only in host
      //this especially happens in cases like
      //url.resolveObject('mailto:local1@domain1', 'local2@domain2')
      var authInHost = result.host && result.host.indexOf('@') > 0 ?
                       result.host.split('@') : false;
      if (authInHost) {
        result.auth = authInHost.shift();
        result.host = result.hostname = authInHost.shift();
      }
    }
    result.search = relative.search;
    result.query = relative.query;
    //to support http.request
    if (!util.isNull(result.pathname) || !util.isNull(result.search)) {
      result.path = (result.pathname ? result.pathname : '') +
                    (result.search ? result.search : '');
    }
    result.href = result.format();
    return result;
  }

  if (!srcPath.length) {
    // no path at all.  easy.
    // we've already handled the other stuff above.
    result.pathname = null;
    //to support http.request
    if (result.search) {
      result.path = '/' + result.search;
    } else {
      result.path = null;
    }
    result.href = result.format();
    return result;
  }

  // if a url ENDs in . or .., then it must get a trailing slash.
  // however, if it ends in anything else non-slashy,
  // then it must NOT get a trailing slash.
  var last = srcPath.slice(-1)[0];
  var hasTrailingSlash = (
      (result.host || relative.host || srcPath.length > 1) &&
      (last === '.' || last === '..') || last === '');

  // strip single dots, resolve double dots to parent dir
  // if the path tries to go above the root, `up` ends up > 0
  var up = 0;
  for (var i = srcPath.length; i >= 0; i--) {
    last = srcPath[i];
    if (last === '.') {
      srcPath.splice(i, 1);
    } else if (last === '..') {
      srcPath.splice(i, 1);
      up++;
    } else if (up) {
      srcPath.splice(i, 1);
      up--;
    }
  }

  // if the path is allowed to go above the root, restore leading ..s
  if (!mustEndAbs && !removeAllDots) {
    for (; up--; up) {
      srcPath.unshift('..');
    }
  }

  if (mustEndAbs && srcPath[0] !== '' &&
      (!srcPath[0] || srcPath[0].charAt(0) !== '/')) {
    srcPath.unshift('');
  }

  if (hasTrailingSlash && (srcPath.join('/').substr(-1) !== '/')) {
    srcPath.push('');
  }

  var isAbsolute = srcPath[0] === '' ||
      (srcPath[0] && srcPath[0].charAt(0) === '/');

  // put the host back
  if (psychotic) {
    result.hostname = result.host = isAbsolute ? '' :
                                    srcPath.length ? srcPath.shift() : '';
    //occationaly the auth can get stuck only in host
    //this especially happens in cases like
    //url.resolveObject('mailto:local1@domain1', 'local2@domain2')
    var authInHost = result.host && result.host.indexOf('@') > 0 ?
                     result.host.split('@') : false;
    if (authInHost) {
      result.auth = authInHost.shift();
      result.host = result.hostname = authInHost.shift();
    }
  }

  mustEndAbs = mustEndAbs || (result.host && srcPath.length);

  if (mustEndAbs && !isAbsolute) {
    srcPath.unshift('');
  }

  if (!srcPath.length) {
    result.pathname = null;
    result.path = null;
  } else {
    result.pathname = srcPath.join('/');
  }

  //to support request.http
  if (!util.isNull(result.pathname) || !util.isNull(result.search)) {
    result.path = (result.pathname ? result.pathname : '') +
                  (result.search ? result.search : '');
  }
  result.auth = relative.auth || result.auth;
  result.slashes = result.slashes || relative.slashes;
  result.href = result.format();
  return result;
};

Url.prototype.parseHost = function() {
  var host = this.host;
  var port = portPattern.exec(host);
  if (port) {
    port = port[0];
    if (port !== ':') {
      this.port = port.substr(1);
    }
    host = host.substr(0, host.length - port.length);
  }
  if (host) this.hostname = host;
};


/***/ }),

/***/ 211:
/***/ (function(module, exports, __webpack_require__) {

"use strict";



/**
 * Check if the code point is a digit [0-9]
 *
 * @param {number} code
 * @return boolean
 */
function isDigit(code) {
  // 48 == '0'
  // 57 == '9'
  return code >= 48 && code <= 57;
}


/**
 * Check if the code point is a letter [a-zA-Z]
 *
 * @param {number} code
 * @return boolean
 */
function isAlpha(code) {
  // 97 === 'a'
  // 122 == 'z'
  return code >= 97 && code <= 122;
}


/**
 * Check if a hostname string is valid (according to RFC). It's usually a
 * preliminary check before trying to use getDomain or anything else.
 *
 * Beware: it does not check if the TLD exists.
 *
 * @api
 * @param {string} hostname
 * @return {boolean}
 */
module.exports = function isValid(hostname) {
  if (typeof hostname !== 'string') {
    return false;
  }

  if (hostname.length > 255) {
    return false;
  }

  if (hostname.length === 0) {
    return false;
  }

  // Check first character: [a-zA-Z0-9]
  var firstCharCode = hostname.charCodeAt(0);
  if (!(isAlpha(firstCharCode) || isDigit(firstCharCode))) {
    return false;
  }

  // Validate hostname according to RFC
  var lastDotIndex = -1;
  var lastCharCode;
  var code;
  var len = hostname.length;

  for (var i = 0; i < len; i += 1) {
    code = hostname.charCodeAt(i);

    if (code === 46) { // '.'
      if (
        // Check that previous label is < 63 bytes long (64 = 63 + '.')
        (i - lastDotIndex) > 64 ||
        // Check that previous character was not already a '.'
        lastCharCode === 46 ||
        // Check that the previous label does not end with a '-'
        lastCharCode === 45
      ) {
        return false;
      }

      lastDotIndex = i;
    } else if (!(isAlpha(code) || isDigit(code) || code === 45)) {
      // Check if there is a forbidden character in the label: [^a-zA-Z0-9-]
      return false;
    }

    lastCharCode = code;
  }

  return (
    // Check that last label is shorter than 63 chars
    (len - lastDotIndex - 1) <= 63 &&
    // Check that the last character is an allowed trailing label character.
    // Since we already checked that the char is a valid hostname character,
    // we only need to check that it's different from '-'.
    lastCharCode !== 45
  );
};


/***/ }),

/***/ 212:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


/**
 * Utility to extract the TLD from a hostname string
 *
 * @param {string} host
 * @return {String}
 */
module.exports = function extractTldFromHost(hostname) {
  var lastDotIndex = hostname.lastIndexOf('.');
  if (lastDotIndex === -1) {
    return null;
  }

  return hostname.substr(lastDotIndex + 1);
};


/***/ }),

/***/ 22:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ Subscription_Subscription; });

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isArray.js
var isArray = __webpack_require__(86);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isObject.js
var isObject = __webpack_require__(109);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isFunction.js
var isFunction = __webpack_require__(83);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/UnsubscriptionError.js
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
var UnsubscriptionErrorImpl = /*@__PURE__*/ (function () {
    function UnsubscriptionErrorImpl(errors) {
        Error.call(this);
        this.message = errors ?
            errors.length + " errors occurred during unsubscription:\n" + errors.map(function (err, i) { return i + 1 + ") " + err.toString(); }).join('\n  ') : '';
        this.name = 'UnsubscriptionError';
        this.errors = errors;
        return this;
    }
    UnsubscriptionErrorImpl.prototype = /*@__PURE__*/ Object.create(Error.prototype);
    return UnsubscriptionErrorImpl;
})();
var UnsubscriptionError = UnsubscriptionErrorImpl;
//# sourceMappingURL=UnsubscriptionError.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/Subscription.js
/** PURE_IMPORTS_START _util_isArray,_util_isObject,_util_isFunction,_util_UnsubscriptionError PURE_IMPORTS_END */




var Subscription_Subscription = /*@__PURE__*/ (function () {
    function Subscription(unsubscribe) {
        this.closed = false;
        this._parentOrParents = null;
        this._subscriptions = null;
        if (unsubscribe) {
            this._ctorUnsubscribe = true;
            this._unsubscribe = unsubscribe;
        }
    }
    Subscription.prototype.unsubscribe = function () {
        var errors;
        if (this.closed) {
            return;
        }
        var _a = this, _parentOrParents = _a._parentOrParents, _ctorUnsubscribe = _a._ctorUnsubscribe, _unsubscribe = _a._unsubscribe, _subscriptions = _a._subscriptions;
        this.closed = true;
        this._parentOrParents = null;
        this._subscriptions = null;
        if (_parentOrParents instanceof Subscription) {
            _parentOrParents.remove(this);
        }
        else if (_parentOrParents !== null) {
            for (var index = 0; index < _parentOrParents.length; ++index) {
                var parent_1 = _parentOrParents[index];
                parent_1.remove(this);
            }
        }
        if (Object(isFunction["a" /* isFunction */])(_unsubscribe)) {
            if (_ctorUnsubscribe) {
                this._unsubscribe = undefined;
            }
            try {
                _unsubscribe.call(this);
            }
            catch (e) {
                errors = e instanceof UnsubscriptionError ? flattenUnsubscriptionErrors(e.errors) : [e];
            }
        }
        if (Object(isArray["a" /* isArray */])(_subscriptions)) {
            var index = -1;
            var len = _subscriptions.length;
            while (++index < len) {
                var sub = _subscriptions[index];
                if (Object(isObject["a" /* isObject */])(sub)) {
                    try {
                        sub.unsubscribe();
                    }
                    catch (e) {
                        errors = errors || [];
                        if (e instanceof UnsubscriptionError) {
                            errors = errors.concat(flattenUnsubscriptionErrors(e.errors));
                        }
                        else {
                            errors.push(e);
                        }
                    }
                }
            }
        }
        if (errors) {
            throw new UnsubscriptionError(errors);
        }
    };
    Subscription.prototype.add = function (teardown) {
        var subscription = teardown;
        if (!teardown) {
            return Subscription.EMPTY;
        }
        switch (typeof teardown) {
            case 'function':
                subscription = new Subscription(teardown);
            case 'object':
                if (subscription === this || subscription.closed || typeof subscription.unsubscribe !== 'function') {
                    return subscription;
                }
                else if (this.closed) {
                    subscription.unsubscribe();
                    return subscription;
                }
                else if (!(subscription instanceof Subscription)) {
                    var tmp = subscription;
                    subscription = new Subscription();
                    subscription._subscriptions = [tmp];
                }
                break;
            default: {
                throw new Error('unrecognized teardown ' + teardown + ' added to Subscription.');
            }
        }
        var _parentOrParents = subscription._parentOrParents;
        if (_parentOrParents === null) {
            subscription._parentOrParents = this;
        }
        else if (_parentOrParents instanceof Subscription) {
            if (_parentOrParents === this) {
                return subscription;
            }
            subscription._parentOrParents = [_parentOrParents, this];
        }
        else if (_parentOrParents.indexOf(this) === -1) {
            _parentOrParents.push(this);
        }
        else {
            return subscription;
        }
        var subscriptions = this._subscriptions;
        if (subscriptions === null) {
            this._subscriptions = [subscription];
        }
        else {
            subscriptions.push(subscription);
        }
        return subscription;
    };
    Subscription.prototype.remove = function (subscription) {
        var subscriptions = this._subscriptions;
        if (subscriptions) {
            var subscriptionIndex = subscriptions.indexOf(subscription);
            if (subscriptionIndex !== -1) {
                subscriptions.splice(subscriptionIndex, 1);
            }
        }
    };
    Subscription.EMPTY = (function (empty) {
        empty.closed = true;
        return empty;
    }(new Subscription()));
    return Subscription;
}());

function flattenUnsubscriptionErrors(errors) {
    return errors.reduce(function (errs, err) { return errs.concat((err instanceof UnsubscriptionError) ? err.errors : err); }, []);
}
//# sourceMappingURL=Subscription.js.map


/***/ }),

/***/ 221:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return isNumeric; });
/* harmony import */ var _isArray__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(86);
/** PURE_IMPORTS_START _isArray PURE_IMPORTS_END */

function isNumeric(val) {
    return !Object(_isArray__WEBPACK_IMPORTED_MODULE_0__[/* isArray */ "a"])(val) && (val - parseFloat(val) + 1) >= 0;
}
//# sourceMappingURL=isNumeric.js.map


/***/ }),

/***/ 223:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return concatMap; });
/* harmony import */ var _mergeMap__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(62);
/** PURE_IMPORTS_START _mergeMap PURE_IMPORTS_END */

function concatMap(project, resultSelector) {
    return Object(_mergeMap__WEBPACK_IMPORTED_MODULE_0__[/* mergeMap */ "a"])(project, resultSelector, 1);
}
//# sourceMappingURL=concatMap.js.map


/***/ }),

/***/ 24:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return of; });
/* harmony import */ var _util_isScheduler__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(87);
/* harmony import */ var _fromArray__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(132);
/* harmony import */ var _scheduled_scheduleArray__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(110);
/** PURE_IMPORTS_START _util_isScheduler,_fromArray,_scheduled_scheduleArray PURE_IMPORTS_END */



function of() {
    var args = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        args[_i] = arguments[_i];
    }
    var scheduler = args[args.length - 1];
    if (Object(_util_isScheduler__WEBPACK_IMPORTED_MODULE_0__[/* isScheduler */ "a"])(scheduler)) {
        args.pop();
        return Object(_scheduled_scheduleArray__WEBPACK_IMPORTED_MODULE_2__[/* scheduleArray */ "a"])(args, scheduler);
    }
    else {
        return Object(_fromArray__WEBPACK_IMPORTED_MODULE_1__[/* fromArray */ "a"])(args);
    }
}
//# sourceMappingURL=of.js.map


/***/ }),

/***/ 246:
/***/ (function(module, exports) {

var toString = {}.toString;

module.exports = Array.isArray || function (arr) {
  return toString.call(arr) == '[object Array]';
};


/***/ }),

/***/ 247:
/***/ (function(module, exports) {

module.exports = function(module) {
	if (!module.webpackPolyfill) {
		module.deprecate = function() {};
		module.paths = [];
		// module.parent = undefined by default
		if (!module.children) module.children = [];
		Object.defineProperty(module, "loaded", {
			enumerable: true,
			get: function() {
				return module.l;
			}
		});
		Object.defineProperty(module, "id", {
			enumerable: true,
			get: function() {
				return module.i;
			}
		});
		module.webpackPolyfill = 1;
	}
	return module;
};


/***/ }),

/***/ 254:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ArgumentOutOfRangeError; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
var ArgumentOutOfRangeErrorImpl = /*@__PURE__*/ (function () {
    function ArgumentOutOfRangeErrorImpl() {
        Error.call(this);
        this.message = 'argument out of range';
        this.name = 'ArgumentOutOfRangeError';
        return this;
    }
    ArgumentOutOfRangeErrorImpl.prototype = /*@__PURE__*/ Object.create(Error.prototype);
    return ArgumentOutOfRangeErrorImpl;
})();
var ArgumentOutOfRangeError = ArgumentOutOfRangeErrorImpl;
//# sourceMappingURL=ArgumentOutOfRangeError.js.map


/***/ }),

/***/ 255:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return defaultIfEmpty; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/** PURE_IMPORTS_START tslib,_Subscriber PURE_IMPORTS_END */


function defaultIfEmpty(defaultValue) {
    if (defaultValue === void 0) {
        defaultValue = null;
    }
    return function (source) { return source.lift(new DefaultIfEmptyOperator(defaultValue)); };
}
var DefaultIfEmptyOperator = /*@__PURE__*/ (function () {
    function DefaultIfEmptyOperator(defaultValue) {
        this.defaultValue = defaultValue;
    }
    DefaultIfEmptyOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new DefaultIfEmptySubscriber(subscriber, this.defaultValue));
    };
    return DefaultIfEmptyOperator;
}());
var DefaultIfEmptySubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](DefaultIfEmptySubscriber, _super);
    function DefaultIfEmptySubscriber(destination, defaultValue) {
        var _this = _super.call(this, destination) || this;
        _this.defaultValue = defaultValue;
        _this.isEmpty = true;
        return _this;
    }
    DefaultIfEmptySubscriber.prototype._next = function (value) {
        this.isEmpty = false;
        this.destination.next(value);
    };
    DefaultIfEmptySubscriber.prototype._complete = function () {
        if (this.isEmpty) {
            this.destination.next(this.defaultValue);
        }
        this.destination.complete();
    };
    return DefaultIfEmptySubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));
//# sourceMappingURL=defaultIfEmpty.js.map


/***/ }),

/***/ 256:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return throwIfEmpty; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _util_EmptyError__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(166);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(18);
/** PURE_IMPORTS_START tslib,_util_EmptyError,_Subscriber PURE_IMPORTS_END */



function throwIfEmpty(errorFactory) {
    if (errorFactory === void 0) {
        errorFactory = defaultErrorFactory;
    }
    return function (source) {
        return source.lift(new ThrowIfEmptyOperator(errorFactory));
    };
}
var ThrowIfEmptyOperator = /*@__PURE__*/ (function () {
    function ThrowIfEmptyOperator(errorFactory) {
        this.errorFactory = errorFactory;
    }
    ThrowIfEmptyOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new ThrowIfEmptySubscriber(subscriber, this.errorFactory));
    };
    return ThrowIfEmptyOperator;
}());
var ThrowIfEmptySubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](ThrowIfEmptySubscriber, _super);
    function ThrowIfEmptySubscriber(destination, errorFactory) {
        var _this = _super.call(this, destination) || this;
        _this.errorFactory = errorFactory;
        _this.hasValue = false;
        return _this;
    }
    ThrowIfEmptySubscriber.prototype._next = function (value) {
        this.hasValue = true;
        this.destination.next(value);
    };
    ThrowIfEmptySubscriber.prototype._complete = function () {
        if (!this.hasValue) {
            var err = void 0;
            try {
                err = this.errorFactory();
            }
            catch (e) {
                err = e;
            }
            this.destination.error(err);
        }
        else {
            return this.destination.complete();
        }
    };
    return ThrowIfEmptySubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_2__[/* Subscriber */ "a"]));
function defaultErrorFactory() {
    return new _util_EmptyError__WEBPACK_IMPORTED_MODULE_1__[/* EmptyError */ "a"]();
}
//# sourceMappingURL=throwIfEmpty.js.map


/***/ }),

/***/ 275:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return merge; });
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(15);
/* harmony import */ var _util_isScheduler__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(87);
/* harmony import */ var _operators_mergeAll__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(119);
/* harmony import */ var _fromArray__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(132);
/** PURE_IMPORTS_START _Observable,_util_isScheduler,_operators_mergeAll,_fromArray PURE_IMPORTS_END */




function merge() {
    var observables = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        observables[_i] = arguments[_i];
    }
    var concurrent = Number.POSITIVE_INFINITY;
    var scheduler = null;
    var last = observables[observables.length - 1];
    if (Object(_util_isScheduler__WEBPACK_IMPORTED_MODULE_1__[/* isScheduler */ "a"])(last)) {
        scheduler = observables.pop();
        if (observables.length > 1 && typeof observables[observables.length - 1] === 'number') {
            concurrent = observables.pop();
        }
    }
    else if (typeof last === 'number') {
        concurrent = observables.pop();
    }
    if (scheduler === null && observables.length === 1 && observables[0] instanceof _Observable__WEBPACK_IMPORTED_MODULE_0__[/* Observable */ "a"]) {
        return observables[0];
    }
    return Object(_operators_mergeAll__WEBPACK_IMPORTED_MODULE_2__[/* mergeAll */ "a"])(concurrent)(Object(_fromArray__WEBPACK_IMPORTED_MODULE_3__[/* fromArray */ "a"])(observables, scheduler));
}
//# sourceMappingURL=merge.js.map


/***/ }),

/***/ 276:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return takeLast; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/* harmony import */ var _util_ArgumentOutOfRangeError__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(254);
/* harmony import */ var _observable_empty__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(98);
/** PURE_IMPORTS_START tslib,_Subscriber,_util_ArgumentOutOfRangeError,_observable_empty PURE_IMPORTS_END */




function takeLast(count) {
    return function takeLastOperatorFunction(source) {
        if (count === 0) {
            return Object(_observable_empty__WEBPACK_IMPORTED_MODULE_3__[/* empty */ "b"])();
        }
        else {
            return source.lift(new TakeLastOperator(count));
        }
    };
}
var TakeLastOperator = /*@__PURE__*/ (function () {
    function TakeLastOperator(total) {
        this.total = total;
        if (this.total < 0) {
            throw new _util_ArgumentOutOfRangeError__WEBPACK_IMPORTED_MODULE_2__[/* ArgumentOutOfRangeError */ "a"];
        }
    }
    TakeLastOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new TakeLastSubscriber(subscriber, this.total));
    };
    return TakeLastOperator;
}());
var TakeLastSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](TakeLastSubscriber, _super);
    function TakeLastSubscriber(destination, total) {
        var _this = _super.call(this, destination) || this;
        _this.total = total;
        _this.ring = new Array();
        _this.count = 0;
        return _this;
    }
    TakeLastSubscriber.prototype._next = function (value) {
        var ring = this.ring;
        var total = this.total;
        var count = this.count++;
        if (ring.length < total) {
            ring.push(value);
        }
        else {
            var index = count % total;
            ring[index] = value;
        }
    };
    TakeLastSubscriber.prototype._complete = function () {
        var destination = this.destination;
        var count = this.count;
        if (count > 0) {
            var total = this.count >= this.total ? this.total : this.count;
            var ring = this.ring;
            for (var i = 0; i < total; i++) {
                var idx = (count++) % total;
                destination.next(ring[idx]);
            }
        }
        destination.complete();
    };
    return TakeLastSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));
//# sourceMappingURL=takeLast.js.map


/***/ }),

/***/ 28:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "b", function() { return SubjectSubscriber; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return Subject; });
/* unused harmony export AnonymousSubject */
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(15);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(18);
/* harmony import */ var _Subscription__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(22);
/* harmony import */ var _util_ObjectUnsubscribedError__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(73);
/* harmony import */ var _SubjectSubscription__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(164);
/* harmony import */ var _internal_symbol_rxSubscriber__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(82);
/** PURE_IMPORTS_START tslib,_Observable,_Subscriber,_Subscription,_util_ObjectUnsubscribedError,_SubjectSubscription,_internal_symbol_rxSubscriber PURE_IMPORTS_END */







var SubjectSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](SubjectSubscriber, _super);
    function SubjectSubscriber(destination) {
        var _this = _super.call(this, destination) || this;
        _this.destination = destination;
        return _this;
    }
    return SubjectSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_2__[/* Subscriber */ "a"]));

var Subject = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](Subject, _super);
    function Subject() {
        var _this = _super.call(this) || this;
        _this.observers = [];
        _this.closed = false;
        _this.isStopped = false;
        _this.hasError = false;
        _this.thrownError = null;
        return _this;
    }
    Subject.prototype[_internal_symbol_rxSubscriber__WEBPACK_IMPORTED_MODULE_6__[/* rxSubscriber */ "a"]] = function () {
        return new SubjectSubscriber(this);
    };
    Subject.prototype.lift = function (operator) {
        var subject = new AnonymousSubject(this, this);
        subject.operator = operator;
        return subject;
    };
    Subject.prototype.next = function (value) {
        if (this.closed) {
            throw new _util_ObjectUnsubscribedError__WEBPACK_IMPORTED_MODULE_4__[/* ObjectUnsubscribedError */ "a"]();
        }
        if (!this.isStopped) {
            var observers = this.observers;
            var len = observers.length;
            var copy = observers.slice();
            for (var i = 0; i < len; i++) {
                copy[i].next(value);
            }
        }
    };
    Subject.prototype.error = function (err) {
        if (this.closed) {
            throw new _util_ObjectUnsubscribedError__WEBPACK_IMPORTED_MODULE_4__[/* ObjectUnsubscribedError */ "a"]();
        }
        this.hasError = true;
        this.thrownError = err;
        this.isStopped = true;
        var observers = this.observers;
        var len = observers.length;
        var copy = observers.slice();
        for (var i = 0; i < len; i++) {
            copy[i].error(err);
        }
        this.observers.length = 0;
    };
    Subject.prototype.complete = function () {
        if (this.closed) {
            throw new _util_ObjectUnsubscribedError__WEBPACK_IMPORTED_MODULE_4__[/* ObjectUnsubscribedError */ "a"]();
        }
        this.isStopped = true;
        var observers = this.observers;
        var len = observers.length;
        var copy = observers.slice();
        for (var i = 0; i < len; i++) {
            copy[i].complete();
        }
        this.observers.length = 0;
    };
    Subject.prototype.unsubscribe = function () {
        this.isStopped = true;
        this.closed = true;
        this.observers = null;
    };
    Subject.prototype._trySubscribe = function (subscriber) {
        if (this.closed) {
            throw new _util_ObjectUnsubscribedError__WEBPACK_IMPORTED_MODULE_4__[/* ObjectUnsubscribedError */ "a"]();
        }
        else {
            return _super.prototype._trySubscribe.call(this, subscriber);
        }
    };
    Subject.prototype._subscribe = function (subscriber) {
        if (this.closed) {
            throw new _util_ObjectUnsubscribedError__WEBPACK_IMPORTED_MODULE_4__[/* ObjectUnsubscribedError */ "a"]();
        }
        else if (this.hasError) {
            subscriber.error(this.thrownError);
            return _Subscription__WEBPACK_IMPORTED_MODULE_3__[/* Subscription */ "a"].EMPTY;
        }
        else if (this.isStopped) {
            subscriber.complete();
            return _Subscription__WEBPACK_IMPORTED_MODULE_3__[/* Subscription */ "a"].EMPTY;
        }
        else {
            this.observers.push(subscriber);
            return new _SubjectSubscription__WEBPACK_IMPORTED_MODULE_5__[/* SubjectSubscription */ "a"](this, subscriber);
        }
    };
    Subject.prototype.asObservable = function () {
        var observable = new _Observable__WEBPACK_IMPORTED_MODULE_1__[/* Observable */ "a"]();
        observable.source = this;
        return observable;
    };
    Subject.create = function (destination, source) {
        return new AnonymousSubject(destination, source);
    };
    return Subject;
}(_Observable__WEBPACK_IMPORTED_MODULE_1__[/* Observable */ "a"]));

var AnonymousSubject = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](AnonymousSubject, _super);
    function AnonymousSubject(destination, source) {
        var _this = _super.call(this) || this;
        _this.destination = destination;
        _this.source = source;
        return _this;
    }
    AnonymousSubject.prototype.next = function (value) {
        var destination = this.destination;
        if (destination && destination.next) {
            destination.next(value);
        }
    };
    AnonymousSubject.prototype.error = function (err) {
        var destination = this.destination;
        if (destination && destination.error) {
            this.destination.error(err);
        }
    };
    AnonymousSubject.prototype.complete = function () {
        var destination = this.destination;
        if (destination && destination.complete) {
            this.destination.complete();
        }
    };
    AnonymousSubject.prototype._subscribe = function (subscriber) {
        var source = this.source;
        if (source) {
            return this.source.subscribe(subscriber);
        }
        else {
            return _Subscription__WEBPACK_IMPORTED_MODULE_3__[/* Subscription */ "a"].EMPTY;
        }
    };
    return AnonymousSubject;
}(Subject));

//# sourceMappingURL=Subject.js.map


/***/ }),

/***/ 280:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ concat; });

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/observable/of.js
var of = __webpack_require__(24);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/operators/mergeAll.js
var mergeAll = __webpack_require__(119);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/operators/concatAll.js
/** PURE_IMPORTS_START _mergeAll PURE_IMPORTS_END */

function concatAll() {
    return Object(mergeAll["a" /* mergeAll */])(1);
}
//# sourceMappingURL=concatAll.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/observable/concat.js
/** PURE_IMPORTS_START _of,_operators_concatAll PURE_IMPORTS_END */


function concat() {
    var observables = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        observables[_i] = arguments[_i];
    }
    return concatAll()(of["a" /* of */].apply(void 0, observables));
}
//# sourceMappingURL=concat.js.map


/***/ }),

/***/ 281:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return startWith; });
/* harmony import */ var _observable_concat__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(280);
/* harmony import */ var _util_isScheduler__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(87);
/** PURE_IMPORTS_START _observable_concat,_util_isScheduler PURE_IMPORTS_END */


function startWith() {
    var array = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        array[_i] = arguments[_i];
    }
    var scheduler = array[array.length - 1];
    if (Object(_util_isScheduler__WEBPACK_IMPORTED_MODULE_1__[/* isScheduler */ "a"])(scheduler)) {
        array.pop();
        return function (source) { return Object(_observable_concat__WEBPACK_IMPORTED_MODULE_0__[/* concat */ "a"])(array, source, scheduler); };
    }
    else {
        return function (source) { return Object(_observable_concat__WEBPACK_IMPORTED_MODULE_0__[/* concat */ "a"])(array, source); };
    }
}
//# sourceMappingURL=startWith.js.map


/***/ }),

/***/ 282:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return takeUntil; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _innerSubscribe__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(53);
/** PURE_IMPORTS_START tslib,_innerSubscribe PURE_IMPORTS_END */


function takeUntil(notifier) {
    return function (source) { return source.lift(new TakeUntilOperator(notifier)); };
}
var TakeUntilOperator = /*@__PURE__*/ (function () {
    function TakeUntilOperator(notifier) {
        this.notifier = notifier;
    }
    TakeUntilOperator.prototype.call = function (subscriber, source) {
        var takeUntilSubscriber = new TakeUntilSubscriber(subscriber);
        var notifierSubscription = Object(_innerSubscribe__WEBPACK_IMPORTED_MODULE_1__[/* innerSubscribe */ "c"])(this.notifier, new _innerSubscribe__WEBPACK_IMPORTED_MODULE_1__[/* SimpleInnerSubscriber */ "a"](takeUntilSubscriber));
        if (notifierSubscription && !takeUntilSubscriber.seenValue) {
            takeUntilSubscriber.add(notifierSubscription);
            return source.subscribe(takeUntilSubscriber);
        }
        return takeUntilSubscriber;
    };
    return TakeUntilOperator;
}());
var TakeUntilSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](TakeUntilSubscriber, _super);
    function TakeUntilSubscriber(destination) {
        var _this = _super.call(this, destination) || this;
        _this.seenValue = false;
        return _this;
    }
    TakeUntilSubscriber.prototype.notifyNext = function () {
        this.seenValue = true;
        this.complete();
    };
    TakeUntilSubscriber.prototype.notifyComplete = function () {
    };
    return TakeUntilSubscriber;
}(_innerSubscribe__WEBPACK_IMPORTED_MODULE_1__[/* SimpleOuterSubscriber */ "b"]));
//# sourceMappingURL=takeUntil.js.map


/***/ }),

/***/ 314:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


exports.byteLength = byteLength
exports.toByteArray = toByteArray
exports.fromByteArray = fromByteArray

var lookup = []
var revLookup = []
var Arr = typeof Uint8Array !== 'undefined' ? Uint8Array : Array

var code = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
for (var i = 0, len = code.length; i < len; ++i) {
  lookup[i] = code[i]
  revLookup[code.charCodeAt(i)] = i
}

// Support decoding URL-safe base64 strings, as Node.js does.
// See: https://en.wikipedia.org/wiki/Base64#URL_applications
revLookup['-'.charCodeAt(0)] = 62
revLookup['_'.charCodeAt(0)] = 63

function getLens (b64) {
  var len = b64.length

  if (len % 4 > 0) {
    throw new Error('Invalid string. Length must be a multiple of 4')
  }

  // Trim off extra bytes after placeholder bytes are found
  // See: https://github.com/beatgammit/base64-js/issues/42
  var validLen = b64.indexOf('=')
  if (validLen === -1) validLen = len

  var placeHoldersLen = validLen === len
    ? 0
    : 4 - (validLen % 4)

  return [validLen, placeHoldersLen]
}

// base64 is 4/3 + up to two characters of the original data
function byteLength (b64) {
  var lens = getLens(b64)
  var validLen = lens[0]
  var placeHoldersLen = lens[1]
  return ((validLen + placeHoldersLen) * 3 / 4) - placeHoldersLen
}

function _byteLength (b64, validLen, placeHoldersLen) {
  return ((validLen + placeHoldersLen) * 3 / 4) - placeHoldersLen
}

function toByteArray (b64) {
  var tmp
  var lens = getLens(b64)
  var validLen = lens[0]
  var placeHoldersLen = lens[1]

  var arr = new Arr(_byteLength(b64, validLen, placeHoldersLen))

  var curByte = 0

  // if there are placeholders, only get up to the last complete 4 chars
  var len = placeHoldersLen > 0
    ? validLen - 4
    : validLen

  var i
  for (i = 0; i < len; i += 4) {
    tmp =
      (revLookup[b64.charCodeAt(i)] << 18) |
      (revLookup[b64.charCodeAt(i + 1)] << 12) |
      (revLookup[b64.charCodeAt(i + 2)] << 6) |
      revLookup[b64.charCodeAt(i + 3)]
    arr[curByte++] = (tmp >> 16) & 0xFF
    arr[curByte++] = (tmp >> 8) & 0xFF
    arr[curByte++] = tmp & 0xFF
  }

  if (placeHoldersLen === 2) {
    tmp =
      (revLookup[b64.charCodeAt(i)] << 2) |
      (revLookup[b64.charCodeAt(i + 1)] >> 4)
    arr[curByte++] = tmp & 0xFF
  }

  if (placeHoldersLen === 1) {
    tmp =
      (revLookup[b64.charCodeAt(i)] << 10) |
      (revLookup[b64.charCodeAt(i + 1)] << 4) |
      (revLookup[b64.charCodeAt(i + 2)] >> 2)
    arr[curByte++] = (tmp >> 8) & 0xFF
    arr[curByte++] = tmp & 0xFF
  }

  return arr
}

function tripletToBase64 (num) {
  return lookup[num >> 18 & 0x3F] +
    lookup[num >> 12 & 0x3F] +
    lookup[num >> 6 & 0x3F] +
    lookup[num & 0x3F]
}

function encodeChunk (uint8, start, end) {
  var tmp
  var output = []
  for (var i = start; i < end; i += 3) {
    tmp =
      ((uint8[i] << 16) & 0xFF0000) +
      ((uint8[i + 1] << 8) & 0xFF00) +
      (uint8[i + 2] & 0xFF)
    output.push(tripletToBase64(tmp))
  }
  return output.join('')
}

function fromByteArray (uint8) {
  var tmp
  var len = uint8.length
  var extraBytes = len % 3 // if we have 1 byte left, pad 2 bytes
  var parts = []
  var maxChunkLength = 16383 // must be multiple of 3

  // go through the array every three bytes, we'll deal with trailing stuff later
  for (var i = 0, len2 = len - extraBytes; i < len2; i += maxChunkLength) {
    parts.push(encodeChunk(uint8, i, (i + maxChunkLength) > len2 ? len2 : (i + maxChunkLength)))
  }

  // pad the end with zeros, but make sure to not forget the extra bytes
  if (extraBytes === 1) {
    tmp = uint8[len - 1]
    parts.push(
      lookup[tmp >> 2] +
      lookup[(tmp << 4) & 0x3F] +
      '=='
    )
  } else if (extraBytes === 2) {
    tmp = (uint8[len - 2] << 8) + uint8[len - 1]
    parts.push(
      lookup[tmp >> 10] +
      lookup[(tmp >> 4) & 0x3F] +
      lookup[(tmp << 2) & 0x3F] +
      '='
    )
  }

  return parts.join('')
}


/***/ }),

/***/ 315:
/***/ (function(module, exports) {

/*! ieee754. BSD-3-Clause License. Feross Aboukhadijeh <https://feross.org/opensource> */
exports.read = function (buffer, offset, isLE, mLen, nBytes) {
  var e, m
  var eLen = (nBytes * 8) - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var nBits = -7
  var i = isLE ? (nBytes - 1) : 0
  var d = isLE ? -1 : 1
  var s = buffer[offset + i]

  i += d

  e = s & ((1 << (-nBits)) - 1)
  s >>= (-nBits)
  nBits += eLen
  for (; nBits > 0; e = (e * 256) + buffer[offset + i], i += d, nBits -= 8) {}

  m = e & ((1 << (-nBits)) - 1)
  e >>= (-nBits)
  nBits += mLen
  for (; nBits > 0; m = (m * 256) + buffer[offset + i], i += d, nBits -= 8) {}

  if (e === 0) {
    e = 1 - eBias
  } else if (e === eMax) {
    return m ? NaN : ((s ? -1 : 1) * Infinity)
  } else {
    m = m + Math.pow(2, mLen)
    e = e - eBias
  }
  return (s ? -1 : 1) * m * Math.pow(2, e - mLen)
}

exports.write = function (buffer, value, offset, isLE, mLen, nBytes) {
  var e, m, c
  var eLen = (nBytes * 8) - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var rt = (mLen === 23 ? Math.pow(2, -24) - Math.pow(2, -77) : 0)
  var i = isLE ? 0 : (nBytes - 1)
  var d = isLE ? 1 : -1
  var s = value < 0 || (value === 0 && 1 / value < 0) ? 1 : 0

  value = Math.abs(value)

  if (isNaN(value) || value === Infinity) {
    m = isNaN(value) ? 1 : 0
    e = eMax
  } else {
    e = Math.floor(Math.log(value) / Math.LN2)
    if (value * (c = Math.pow(2, -e)) < 1) {
      e--
      c *= 2
    }
    if (e + eBias >= 1) {
      value += rt / c
    } else {
      value += rt * Math.pow(2, 1 - eBias)
    }
    if (value * c >= 2) {
      e++
      c /= 2
    }

    if (e + eBias >= eMax) {
      m = 0
      e = eMax
    } else if (e + eBias >= 1) {
      m = ((value * c) - 1) * Math.pow(2, mLen)
      e = e + eBias
    } else {
      m = value * Math.pow(2, eBias - 1) * Math.pow(2, mLen)
      e = 0
    }
  }

  for (; mLen >= 8; buffer[offset + i] = m & 0xff, i += d, m /= 256, mLen -= 8) {}

  e = (e << mLen) | m
  eLen += mLen
  for (; eLen > 0; buffer[offset + i] = e & 0xff, i += d, e /= 256, eLen -= 8) {}

  buffer[offset + i - d] |= s * 128
}


/***/ }),

/***/ 316:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


var VALID_HOSTNAME_VALUE = 0;


/**
 * Return min(a, b), handling possible `null` values.
 *
 * @param {number|null} a
 * @param {number|null} b
 * @return {number|null}
 */
function minIndex(a, b) {
  if (a === null) {
    return b;
  } else if (b === null) {
    return a;
  }

  return a < b ? a : b;
}


/**
 * Insert a public suffix rule in the `trie`.
 *
 * @param {object} rule
 * @param {object} trie
 * @return {object} trie (updated)
 */
function insertInTrie(rule, trie) {
  var parts = rule.parts;
  var node = trie;

  for (var i = 0; i < parts.length; i += 1) {
    var part = parts[i];
    var nextNode = node[part];
    if (nextNode === undefined) {
      nextNode = Object.create(null);
      node[part] = nextNode;
    }

    node = nextNode;
  }

  node.$ = VALID_HOSTNAME_VALUE;

  return trie;
}


/**
 * Recursive lookup of `parts` (starting at `index`) in the tree.
 *
 * @param {array} parts
 * @param {object} trie
 * @param {number} index - when to start in `parts` (initially: length - 1)
 * @return {number} size of the suffix found (in number of parts matched)
 */
function lookupInTrie(parts, trie, index) {
  var part;
  var nextNode;
  var publicSuffixIndex = null;

  // We have a match!
  if (trie.$ !== undefined) {
    publicSuffixIndex = index + 1;
  }

  // No more `parts` to look for
  if (index === -1) {
    return publicSuffixIndex;
  }

  part = parts[index];

  // Check branch corresponding to next part of hostname
  nextNode = trie[part];
  if (nextNode !== undefined) {
    publicSuffixIndex = minIndex(
      publicSuffixIndex,
      lookupInTrie(parts, nextNode, index - 1)
    );
  }

  // Check wildcard branch
  nextNode = trie['*'];
  if (nextNode !== undefined) {
    publicSuffixIndex = minIndex(
      publicSuffixIndex,
      lookupInTrie(parts, nextNode, index - 1)
    );
  }

  return publicSuffixIndex;
}


/**
 * Contains the public suffix ruleset as a Trie for efficient look-up.
 *
 * @constructor
 */
function SuffixTrie(rules) {
  this.exceptions = Object.create(null);
  this.rules = Object.create(null);

  if (rules) {
    for (var i = 0; i < rules.length; i += 1) {
      var rule = rules[i];
      if (rule.exception) {
        insertInTrie(rule, this.exceptions);
      } else {
        insertInTrie(rule, this.rules);
      }
    }
  }
}


/**
 * Load the trie from JSON (as serialized by JSON.stringify).
 */
SuffixTrie.fromJson = function (json) {
  var trie = new SuffixTrie();

  trie.exceptions = json.exceptions;
  trie.rules = json.rules;

  return trie;
};


/**
 * Check if `value` is a valid TLD.
 */
SuffixTrie.prototype.hasTld = function (value) {
  // All TLDs are at the root of the Trie.
  return this.rules[value] !== undefined;
};


/**
 * Check if `hostname` has a valid public suffix in `trie`.
 *
 * @param {string} hostname
 * @return {string|null} public suffix
 */
SuffixTrie.prototype.suffixLookup = function (hostname) {
  var parts = hostname.split('.');

  // Look for a match in rules
  var publicSuffixIndex = lookupInTrie(
    parts,
    this.rules,
    parts.length - 1
  );

  if (publicSuffixIndex === null) {
    return null;
  }

  // Look for exceptions
  var exceptionIndex = lookupInTrie(
    parts,
    this.exceptions,
    parts.length - 1
  );

  if (exceptionIndex !== null) {
    return parts.slice(exceptionIndex + 1).join('.');
  }

  return parts.slice(publicSuffixIndex).join('.');
};


module.exports = SuffixTrie;


/***/ }),

/***/ 317:
/***/ (function(module) {

module.exports = JSON.parse("{\"exceptions\":{\"ck\":{\"www\":{\"$\":0}},\"jp\":{\"kawasaki\":{\"city\":{\"$\":0}},\"kitakyushu\":{\"city\":{\"$\":0}},\"kobe\":{\"city\":{\"$\":0}},\"nagoya\":{\"city\":{\"$\":0}},\"sapporo\":{\"city\":{\"$\":0}},\"sendai\":{\"city\":{\"$\":0}},\"yokohama\":{\"city\":{\"$\":0}}}},\"rules\":{\"ac\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"mil\":{\"$\":0},\"org\":{\"$\":0}},\"ad\":{\"$\":0,\"nom\":{\"$\":0}},\"ae\":{\"$\":0,\"co\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"sch\":{\"$\":0},\"ac\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"blogspot\":{\"$\":0},\"nom\":{\"$\":0}},\"aero\":{\"$\":0,\"accident-investigation\":{\"$\":0},\"accident-prevention\":{\"$\":0},\"aerobatic\":{\"$\":0},\"aeroclub\":{\"$\":0},\"aerodrome\":{\"$\":0},\"agents\":{\"$\":0},\"aircraft\":{\"$\":0},\"airline\":{\"$\":0},\"airport\":{\"$\":0},\"air-surveillance\":{\"$\":0},\"airtraffic\":{\"$\":0},\"air-traffic-control\":{\"$\":0},\"ambulance\":{\"$\":0},\"amusement\":{\"$\":0},\"association\":{\"$\":0},\"author\":{\"$\":0},\"ballooning\":{\"$\":0},\"broker\":{\"$\":0},\"caa\":{\"$\":0},\"cargo\":{\"$\":0},\"catering\":{\"$\":0},\"certification\":{\"$\":0},\"championship\":{\"$\":0},\"charter\":{\"$\":0},\"civilaviation\":{\"$\":0},\"club\":{\"$\":0},\"conference\":{\"$\":0},\"consultant\":{\"$\":0},\"consulting\":{\"$\":0},\"control\":{\"$\":0},\"council\":{\"$\":0},\"crew\":{\"$\":0},\"design\":{\"$\":0},\"dgca\":{\"$\":0},\"educator\":{\"$\":0},\"emergency\":{\"$\":0},\"engine\":{\"$\":0},\"engineer\":{\"$\":0},\"entertainment\":{\"$\":0},\"equipment\":{\"$\":0},\"exchange\":{\"$\":0},\"express\":{\"$\":0},\"federation\":{\"$\":0},\"flight\":{\"$\":0},\"freight\":{\"$\":0},\"fuel\":{\"$\":0},\"gliding\":{\"$\":0},\"government\":{\"$\":0},\"groundhandling\":{\"$\":0},\"group\":{\"$\":0},\"hanggliding\":{\"$\":0},\"homebuilt\":{\"$\":0},\"insurance\":{\"$\":0},\"journal\":{\"$\":0},\"journalist\":{\"$\":0},\"leasing\":{\"$\":0},\"logistics\":{\"$\":0},\"magazine\":{\"$\":0},\"maintenance\":{\"$\":0},\"media\":{\"$\":0},\"microlight\":{\"$\":0},\"modelling\":{\"$\":0},\"navigation\":{\"$\":0},\"parachuting\":{\"$\":0},\"paragliding\":{\"$\":0},\"passenger-association\":{\"$\":0},\"pilot\":{\"$\":0},\"press\":{\"$\":0},\"production\":{\"$\":0},\"recreation\":{\"$\":0},\"repbody\":{\"$\":0},\"res\":{\"$\":0},\"research\":{\"$\":0},\"rotorcraft\":{\"$\":0},\"safety\":{\"$\":0},\"scientist\":{\"$\":0},\"services\":{\"$\":0},\"show\":{\"$\":0},\"skydiving\":{\"$\":0},\"software\":{\"$\":0},\"student\":{\"$\":0},\"trader\":{\"$\":0},\"trading\":{\"$\":0},\"trainer\":{\"$\":0},\"union\":{\"$\":0},\"workinggroup\":{\"$\":0},\"works\":{\"$\":0}},\"af\":{\"$\":0,\"gov\":{\"$\":0},\"com\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0},\"edu\":{\"$\":0}},\"ag\":{\"$\":0,\"com\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0},\"co\":{\"$\":0},\"nom\":{\"$\":0}},\"ai\":{\"$\":0,\"off\":{\"$\":0},\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"nom\":{\"$\":0}},\"al\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"blogspot\":{\"$\":0},\"nom\":{\"$\":0}},\"am\":{\"$\":0,\"blogspot\":{\"$\":0}},\"ao\":{\"$\":0,\"ed\":{\"$\":0},\"gv\":{\"$\":0},\"og\":{\"$\":0},\"co\":{\"$\":0},\"pb\":{\"$\":0},\"it\":{\"$\":0}},\"aq\":{\"$\":0},\"ar\":{\"$\":0,\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"edu\":{\"$\":0},\"gob\":{\"$\":0},\"gov\":{\"$\":0},\"int\":{\"$\":0},\"mil\":{\"$\":0},\"musica\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"tur\":{\"$\":0}},\"arpa\":{\"$\":0,\"e164\":{\"$\":0},\"in-addr\":{\"$\":0},\"ip6\":{\"$\":0},\"iris\":{\"$\":0},\"uri\":{\"$\":0},\"urn\":{\"$\":0}},\"as\":{\"$\":0,\"gov\":{\"$\":0}},\"asia\":{\"$\":0,\"cloudns\":{\"$\":0}},\"at\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0,\"blogspot\":{\"$\":0}},\"gv\":{\"$\":0},\"or\":{\"$\":0},\"futurecms\":{\"*\":{\"$\":0}},\"futurehosting\":{\"$\":0},\"futuremailing\":{\"$\":0},\"ortsinfo\":{\"ex\":{\"*\":{\"$\":0}},\"kunden\":{\"*\":{\"$\":0}}},\"biz\":{\"$\":0},\"info\":{\"$\":0},\"priv\":{\"$\":0},\"12hp\":{\"$\":0},\"2ix\":{\"$\":0},\"4lima\":{\"$\":0},\"lima-city\":{\"$\":0}},\"au\":{\"$\":0,\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"net\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0,\"act\":{\"$\":0},\"nsw\":{\"$\":0},\"nt\":{\"$\":0},\"qld\":{\"$\":0},\"sa\":{\"$\":0},\"tas\":{\"$\":0},\"vic\":{\"$\":0},\"wa\":{\"$\":0}},\"gov\":{\"$\":0,\"qld\":{\"$\":0},\"sa\":{\"$\":0},\"tas\":{\"$\":0},\"vic\":{\"$\":0},\"wa\":{\"$\":0}},\"asn\":{\"$\":0},\"id\":{\"$\":0},\"info\":{\"$\":0},\"conf\":{\"$\":0},\"oz\":{\"$\":0},\"act\":{\"$\":0},\"nsw\":{\"$\":0},\"nt\":{\"$\":0},\"qld\":{\"$\":0},\"sa\":{\"$\":0},\"tas\":{\"$\":0},\"vic\":{\"$\":0},\"wa\":{\"$\":0}},\"aw\":{\"$\":0,\"com\":{\"$\":0}},\"ax\":{\"$\":0},\"az\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"int\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"info\":{\"$\":0},\"pp\":{\"$\":0},\"mil\":{\"$\":0},\"name\":{\"$\":0},\"pro\":{\"$\":0},\"biz\":{\"$\":0}},\"ba\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"blogspot\":{\"$\":0}},\"bb\":{\"$\":0,\"biz\":{\"$\":0},\"co\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"info\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"store\":{\"$\":0},\"tv\":{\"$\":0}},\"bd\":{\"*\":{\"$\":0}},\"be\":{\"$\":0,\"ac\":{\"$\":0},\"webhosting\":{\"$\":0},\"blogspot\":{\"$\":0},\"transurl\":{\"*\":{\"$\":0}}},\"bf\":{\"$\":0,\"gov\":{\"$\":0}},\"bg\":{\"0\":{\"$\":0},\"1\":{\"$\":0},\"2\":{\"$\":0},\"3\":{\"$\":0},\"4\":{\"$\":0},\"5\":{\"$\":0},\"6\":{\"$\":0},\"7\":{\"$\":0},\"8\":{\"$\":0},\"9\":{\"$\":0},\"$\":0,\"a\":{\"$\":0},\"b\":{\"$\":0},\"c\":{\"$\":0},\"d\":{\"$\":0},\"e\":{\"$\":0},\"f\":{\"$\":0},\"g\":{\"$\":0},\"h\":{\"$\":0},\"i\":{\"$\":0},\"j\":{\"$\":0},\"k\":{\"$\":0},\"l\":{\"$\":0},\"m\":{\"$\":0},\"n\":{\"$\":0},\"o\":{\"$\":0},\"p\":{\"$\":0},\"q\":{\"$\":0},\"r\":{\"$\":0},\"s\":{\"$\":0},\"t\":{\"$\":0},\"u\":{\"$\":0},\"v\":{\"$\":0},\"w\":{\"$\":0},\"x\":{\"$\":0},\"y\":{\"$\":0},\"z\":{\"$\":0},\"blogspot\":{\"$\":0},\"barsy\":{\"$\":0}},\"bh\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gov\":{\"$\":0}},\"bi\":{\"$\":0,\"co\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"or\":{\"$\":0},\"org\":{\"$\":0}},\"biz\":{\"$\":0,\"cloudns\":{\"$\":0},\"dyndns\":{\"$\":0},\"for-better\":{\"$\":0},\"for-more\":{\"$\":0},\"for-some\":{\"$\":0},\"for-the\":{\"$\":0},\"selfip\":{\"$\":0},\"webhop\":{\"$\":0},\"mmafan\":{\"$\":0},\"myftp\":{\"$\":0},\"no-ip\":{\"$\":0},\"dscloud\":{\"$\":0}},\"bj\":{\"$\":0,\"asso\":{\"$\":0},\"barreau\":{\"$\":0},\"gouv\":{\"$\":0},\"blogspot\":{\"$\":0}},\"bm\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"bn\":{\"*\":{\"$\":0}},\"bo\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gob\":{\"$\":0},\"int\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0},\"mil\":{\"$\":0},\"tv\":{\"$\":0},\"web\":{\"$\":0},\"academia\":{\"$\":0},\"agro\":{\"$\":0},\"arte\":{\"$\":0},\"blog\":{\"$\":0},\"bolivia\":{\"$\":0},\"ciencia\":{\"$\":0},\"cooperativa\":{\"$\":0},\"democracia\":{\"$\":0},\"deporte\":{\"$\":0},\"ecologia\":{\"$\":0},\"economia\":{\"$\":0},\"empresa\":{\"$\":0},\"indigena\":{\"$\":0},\"industria\":{\"$\":0},\"info\":{\"$\":0},\"medicina\":{\"$\":0},\"movimiento\":{\"$\":0},\"musica\":{\"$\":0},\"natural\":{\"$\":0},\"nombre\":{\"$\":0},\"noticias\":{\"$\":0},\"patria\":{\"$\":0},\"politica\":{\"$\":0},\"profesional\":{\"$\":0},\"plurinacional\":{\"$\":0},\"pueblo\":{\"$\":0},\"revista\":{\"$\":0},\"salud\":{\"$\":0},\"tecnologia\":{\"$\":0},\"tksat\":{\"$\":0},\"transporte\":{\"$\":0},\"wiki\":{\"$\":0}},\"br\":{\"$\":0,\"9guacu\":{\"$\":0},\"abc\":{\"$\":0},\"adm\":{\"$\":0},\"adv\":{\"$\":0},\"agr\":{\"$\":0},\"aju\":{\"$\":0},\"am\":{\"$\":0},\"anani\":{\"$\":0},\"aparecida\":{\"$\":0},\"arq\":{\"$\":0},\"art\":{\"$\":0},\"ato\":{\"$\":0},\"b\":{\"$\":0},\"belem\":{\"$\":0},\"bhz\":{\"$\":0},\"bio\":{\"$\":0},\"blog\":{\"$\":0},\"bmd\":{\"$\":0},\"boavista\":{\"$\":0},\"bsb\":{\"$\":0},\"campinagrande\":{\"$\":0},\"campinas\":{\"$\":0},\"caxias\":{\"$\":0},\"cim\":{\"$\":0},\"cng\":{\"$\":0},\"cnt\":{\"$\":0},\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"contagem\":{\"$\":0},\"coop\":{\"$\":0},\"cri\":{\"$\":0},\"cuiaba\":{\"$\":0},\"curitiba\":{\"$\":0},\"def\":{\"$\":0},\"ecn\":{\"$\":0},\"eco\":{\"$\":0},\"edu\":{\"$\":0},\"emp\":{\"$\":0},\"eng\":{\"$\":0},\"esp\":{\"$\":0},\"etc\":{\"$\":0},\"eti\":{\"$\":0},\"far\":{\"$\":0},\"feira\":{\"$\":0},\"flog\":{\"$\":0},\"floripa\":{\"$\":0},\"fm\":{\"$\":0},\"fnd\":{\"$\":0},\"fortal\":{\"$\":0},\"fot\":{\"$\":0},\"foz\":{\"$\":0},\"fst\":{\"$\":0},\"g12\":{\"$\":0},\"ggf\":{\"$\":0},\"goiania\":{\"$\":0},\"gov\":{\"$\":0,\"ac\":{\"$\":0},\"al\":{\"$\":0},\"am\":{\"$\":0},\"ap\":{\"$\":0},\"ba\":{\"$\":0},\"ce\":{\"$\":0},\"df\":{\"$\":0},\"es\":{\"$\":0},\"go\":{\"$\":0},\"ma\":{\"$\":0},\"mg\":{\"$\":0},\"ms\":{\"$\":0},\"mt\":{\"$\":0},\"pa\":{\"$\":0},\"pb\":{\"$\":0},\"pe\":{\"$\":0},\"pi\":{\"$\":0},\"pr\":{\"$\":0},\"rj\":{\"$\":0},\"rn\":{\"$\":0},\"ro\":{\"$\":0},\"rr\":{\"$\":0},\"rs\":{\"$\":0},\"sc\":{\"$\":0},\"se\":{\"$\":0},\"sp\":{\"$\":0},\"to\":{\"$\":0}},\"gru\":{\"$\":0},\"imb\":{\"$\":0},\"ind\":{\"$\":0},\"inf\":{\"$\":0},\"jab\":{\"$\":0},\"jampa\":{\"$\":0},\"jdf\":{\"$\":0},\"joinville\":{\"$\":0},\"jor\":{\"$\":0},\"jus\":{\"$\":0},\"leg\":{\"$\":0,\"ac\":{\"$\":0},\"al\":{\"$\":0},\"am\":{\"$\":0},\"ap\":{\"$\":0},\"ba\":{\"$\":0},\"ce\":{\"$\":0},\"df\":{\"$\":0},\"es\":{\"$\":0},\"go\":{\"$\":0},\"ma\":{\"$\":0},\"mg\":{\"$\":0},\"ms\":{\"$\":0},\"mt\":{\"$\":0},\"pa\":{\"$\":0},\"pb\":{\"$\":0},\"pe\":{\"$\":0},\"pi\":{\"$\":0},\"pr\":{\"$\":0},\"rj\":{\"$\":0},\"rn\":{\"$\":0},\"ro\":{\"$\":0},\"rr\":{\"$\":0},\"rs\":{\"$\":0},\"sc\":{\"$\":0},\"se\":{\"$\":0},\"sp\":{\"$\":0},\"to\":{\"$\":0}},\"lel\":{\"$\":0},\"londrina\":{\"$\":0},\"macapa\":{\"$\":0},\"maceio\":{\"$\":0},\"manaus\":{\"$\":0},\"maringa\":{\"$\":0},\"mat\":{\"$\":0},\"med\":{\"$\":0},\"mil\":{\"$\":0},\"morena\":{\"$\":0},\"mp\":{\"$\":0},\"mus\":{\"$\":0},\"natal\":{\"$\":0},\"net\":{\"$\":0},\"niteroi\":{\"$\":0},\"nom\":{\"*\":{\"$\":0}},\"not\":{\"$\":0},\"ntr\":{\"$\":0},\"odo\":{\"$\":0},\"org\":{\"$\":0},\"osasco\":{\"$\":0},\"palmas\":{\"$\":0},\"poa\":{\"$\":0},\"ppg\":{\"$\":0},\"pro\":{\"$\":0},\"psc\":{\"$\":0},\"psi\":{\"$\":0},\"pvh\":{\"$\":0},\"qsl\":{\"$\":0},\"radio\":{\"$\":0},\"rec\":{\"$\":0},\"recife\":{\"$\":0},\"ribeirao\":{\"$\":0},\"rio\":{\"$\":0},\"riobranco\":{\"$\":0},\"riopreto\":{\"$\":0},\"salvador\":{\"$\":0},\"sampa\":{\"$\":0},\"santamaria\":{\"$\":0},\"santoandre\":{\"$\":0},\"saobernardo\":{\"$\":0},\"saogonca\":{\"$\":0},\"sjc\":{\"$\":0},\"slg\":{\"$\":0},\"slz\":{\"$\":0},\"sorocaba\":{\"$\":0},\"srv\":{\"$\":0},\"taxi\":{\"$\":0},\"teo\":{\"$\":0},\"the\":{\"$\":0},\"tmp\":{\"$\":0},\"trd\":{\"$\":0},\"tur\":{\"$\":0},\"tv\":{\"$\":0},\"udi\":{\"$\":0},\"vet\":{\"$\":0},\"vix\":{\"$\":0},\"vlog\":{\"$\":0},\"wiki\":{\"$\":0},\"zlg\":{\"$\":0}},\"bs\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"we\":{\"$\":0}},\"bt\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"bv\":{\"$\":0},\"bw\":{\"$\":0,\"co\":{\"$\":0},\"org\":{\"$\":0}},\"by\":{\"$\":0,\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"of\":{\"$\":0},\"nym\":{\"$\":0}},\"bz\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"za\":{\"$\":0},\"nym\":{\"$\":0}},\"ca\":{\"$\":0,\"ab\":{\"$\":0},\"bc\":{\"$\":0},\"mb\":{\"$\":0},\"nb\":{\"$\":0},\"nf\":{\"$\":0},\"nl\":{\"$\":0},\"ns\":{\"$\":0},\"nt\":{\"$\":0},\"nu\":{\"$\":0},\"on\":{\"$\":0},\"pe\":{\"$\":0},\"qc\":{\"$\":0},\"sk\":{\"$\":0},\"yk\":{\"$\":0},\"gc\":{\"$\":0},\"1password\":{\"$\":0},\"awdev\":{\"*\":{\"$\":0}},\"co\":{\"$\":0},\"blogspot\":{\"$\":0},\"no-ip\":{\"$\":0}},\"cat\":{\"$\":0},\"cc\":{\"$\":0,\"cloudns\":{\"$\":0},\"ftpaccess\":{\"$\":0},\"game-server\":{\"$\":0},\"myphotos\":{\"$\":0},\"scrapping\":{\"$\":0},\"twmail\":{\"$\":0},\"fantasyleague\":{\"$\":0}},\"cd\":{\"$\":0,\"gov\":{\"$\":0}},\"cf\":{\"$\":0,\"blogspot\":{\"$\":0}},\"cg\":{\"$\":0},\"ch\":{\"$\":0,\"square7\":{\"$\":0},\"blogspot\":{\"$\":0},\"gotdns\":{\"$\":0},\"12hp\":{\"$\":0},\"2ix\":{\"$\":0},\"4lima\":{\"$\":0},\"lima-city\":{\"$\":0}},\"ci\":{\"$\":0,\"org\":{\"$\":0},\"or\":{\"$\":0},\"com\":{\"$\":0},\"co\":{\"$\":0},\"edu\":{\"$\":0},\"ed\":{\"$\":0},\"ac\":{\"$\":0},\"net\":{\"$\":0},\"go\":{\"$\":0},\"asso\":{\"$\":0},\"xn--aroport-bya\":{\"$\":0},\"int\":{\"$\":0},\"presse\":{\"$\":0},\"md\":{\"$\":0},\"gouv\":{\"$\":0}},\"ck\":{\"*\":{\"$\":0}},\"cl\":{\"$\":0,\"gov\":{\"$\":0},\"gob\":{\"$\":0},\"co\":{\"$\":0},\"mil\":{\"$\":0},\"blogspot\":{\"$\":0},\"nom\":{\"$\":0}},\"cm\":{\"$\":0,\"co\":{\"$\":0},\"com\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0}},\"cn\":{\"$\":0,\"ac\":{\"$\":0},\"com\":{\"$\":0,\"amazonaws\":{\"compute\":{\"*\":{\"$\":0}},\"eb\":{\"cn-north-1\":{\"$\":0}},\"elb\":{\"*\":{\"$\":0}},\"cn-north-1\":{\"s3\":{\"$\":0}}}},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"mil\":{\"$\":0},\"xn--55qx5d\":{\"$\":0},\"xn--io0a7i\":{\"$\":0},\"xn--od0alg\":{\"$\":0},\"ah\":{\"$\":0},\"bj\":{\"$\":0},\"cq\":{\"$\":0},\"fj\":{\"$\":0},\"gd\":{\"$\":0},\"gs\":{\"$\":0},\"gz\":{\"$\":0},\"gx\":{\"$\":0},\"ha\":{\"$\":0},\"hb\":{\"$\":0},\"he\":{\"$\":0},\"hi\":{\"$\":0},\"hl\":{\"$\":0},\"hn\":{\"$\":0},\"jl\":{\"$\":0},\"js\":{\"$\":0},\"jx\":{\"$\":0},\"ln\":{\"$\":0},\"nm\":{\"$\":0},\"nx\":{\"$\":0},\"qh\":{\"$\":0},\"sc\":{\"$\":0},\"sd\":{\"$\":0},\"sh\":{\"$\":0},\"sn\":{\"$\":0},\"sx\":{\"$\":0},\"tj\":{\"$\":0},\"xj\":{\"$\":0},\"xz\":{\"$\":0},\"yn\":{\"$\":0},\"zj\":{\"$\":0},\"hk\":{\"$\":0},\"mo\":{\"$\":0},\"tw\":{\"$\":0}},\"co\":{\"$\":0,\"arts\":{\"$\":0},\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"edu\":{\"$\":0},\"firm\":{\"$\":0},\"gov\":{\"$\":0},\"info\":{\"$\":0},\"int\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"nom\":{\"$\":0},\"org\":{\"$\":0},\"rec\":{\"$\":0},\"web\":{\"$\":0},\"nodum\":{\"$\":0}},\"com\":{\"$\":0,\"1password\":{\"$\":0},\"amazonaws\":{\"compute\":{\"*\":{\"$\":0}},\"compute-1\":{\"*\":{\"$\":0}},\"us-east-1\":{\"$\":0,\"dualstack\":{\"s3\":{\"$\":0}}},\"elb\":{\"*\":{\"$\":0}},\"s3\":{\"$\":0},\"s3-ap-northeast-1\":{\"$\":0},\"s3-ap-northeast-2\":{\"$\":0},\"s3-ap-south-1\":{\"$\":0},\"s3-ap-southeast-1\":{\"$\":0},\"s3-ap-southeast-2\":{\"$\":0},\"s3-ca-central-1\":{\"$\":0},\"s3-eu-central-1\":{\"$\":0},\"s3-eu-west-1\":{\"$\":0},\"s3-eu-west-2\":{\"$\":0},\"s3-eu-west-3\":{\"$\":0},\"s3-external-1\":{\"$\":0},\"s3-fips-us-gov-west-1\":{\"$\":0},\"s3-sa-east-1\":{\"$\":0},\"s3-us-gov-west-1\":{\"$\":0},\"s3-us-east-2\":{\"$\":0},\"s3-us-west-1\":{\"$\":0},\"s3-us-west-2\":{\"$\":0},\"ap-northeast-2\":{\"s3\":{\"$\":0},\"dualstack\":{\"s3\":{\"$\":0}},\"s3-website\":{\"$\":0}},\"ap-south-1\":{\"s3\":{\"$\":0},\"dualstack\":{\"s3\":{\"$\":0}},\"s3-website\":{\"$\":0}},\"ca-central-1\":{\"s3\":{\"$\":0},\"dualstack\":{\"s3\":{\"$\":0}},\"s3-website\":{\"$\":0}},\"eu-central-1\":{\"s3\":{\"$\":0},\"dualstack\":{\"s3\":{\"$\":0}},\"s3-website\":{\"$\":0}},\"eu-west-2\":{\"s3\":{\"$\":0},\"dualstack\":{\"s3\":{\"$\":0}},\"s3-website\":{\"$\":0}},\"eu-west-3\":{\"s3\":{\"$\":0},\"dualstack\":{\"s3\":{\"$\":0}},\"s3-website\":{\"$\":0}},\"us-east-2\":{\"s3\":{\"$\":0},\"dualstack\":{\"s3\":{\"$\":0}},\"s3-website\":{\"$\":0}},\"ap-northeast-1\":{\"dualstack\":{\"s3\":{\"$\":0}}},\"ap-southeast-1\":{\"dualstack\":{\"s3\":{\"$\":0}}},\"ap-southeast-2\":{\"dualstack\":{\"s3\":{\"$\":0}}},\"eu-west-1\":{\"dualstack\":{\"s3\":{\"$\":0}}},\"sa-east-1\":{\"dualstack\":{\"s3\":{\"$\":0}}},\"s3-website-us-east-1\":{\"$\":0},\"s3-website-us-west-1\":{\"$\":0},\"s3-website-us-west-2\":{\"$\":0},\"s3-website-ap-northeast-1\":{\"$\":0},\"s3-website-ap-southeast-1\":{\"$\":0},\"s3-website-ap-southeast-2\":{\"$\":0},\"s3-website-eu-west-1\":{\"$\":0},\"s3-website-sa-east-1\":{\"$\":0}},\"elasticbeanstalk\":{\"$\":0,\"ap-northeast-1\":{\"$\":0},\"ap-northeast-2\":{\"$\":0},\"ap-south-1\":{\"$\":0},\"ap-southeast-1\":{\"$\":0},\"ap-southeast-2\":{\"$\":0},\"ca-central-1\":{\"$\":0},\"eu-central-1\":{\"$\":0},\"eu-west-1\":{\"$\":0},\"eu-west-2\":{\"$\":0},\"eu-west-3\":{\"$\":0},\"sa-east-1\":{\"$\":0},\"us-east-1\":{\"$\":0},\"us-east-2\":{\"$\":0},\"us-gov-west-1\":{\"$\":0},\"us-west-1\":{\"$\":0},\"us-west-2\":{\"$\":0}},\"on-aptible\":{\"$\":0},\"myasustor\":{\"$\":0},\"betainabox\":{\"$\":0},\"bplaced\":{\"$\":0},\"ar\":{\"$\":0},\"br\":{\"$\":0},\"cn\":{\"$\":0},\"de\":{\"$\":0},\"eu\":{\"$\":0},\"gb\":{\"$\":0},\"hu\":{\"$\":0},\"jpn\":{\"$\":0},\"kr\":{\"$\":0},\"mex\":{\"$\":0},\"no\":{\"$\":0},\"qc\":{\"$\":0},\"ru\":{\"$\":0},\"sa\":{\"$\":0},\"se\":{\"$\":0},\"uk\":{\"$\":0},\"us\":{\"$\":0},\"uy\":{\"$\":0},\"za\":{\"$\":0},\"africa\":{\"$\":0},\"gr\":{\"$\":0},\"co\":{\"$\":0},\"xenapponazure\":{\"$\":0},\"jdevcloud\":{\"$\":0},\"wpdevcloud\":{\"$\":0},\"cloudcontrolled\":{\"$\":0},\"cloudcontrolapp\":{\"$\":0},\"drayddns\":{\"$\":0},\"dreamhosters\":{\"$\":0},\"mydrobo\":{\"$\":0},\"dyndns-at-home\":{\"$\":0},\"dyndns-at-work\":{\"$\":0},\"dyndns-blog\":{\"$\":0},\"dyndns-free\":{\"$\":0},\"dyndns-home\":{\"$\":0},\"dyndns-ip\":{\"$\":0},\"dyndns-mail\":{\"$\":0},\"dyndns-office\":{\"$\":0},\"dyndns-pics\":{\"$\":0},\"dyndns-remote\":{\"$\":0},\"dyndns-server\":{\"$\":0},\"dyndns-web\":{\"$\":0},\"dyndns-wiki\":{\"$\":0},\"dyndns-work\":{\"$\":0},\"blogdns\":{\"$\":0},\"cechire\":{\"$\":0},\"dnsalias\":{\"$\":0},\"dnsdojo\":{\"$\":0},\"doesntexist\":{\"$\":0},\"dontexist\":{\"$\":0},\"doomdns\":{\"$\":0},\"dyn-o-saur\":{\"$\":0},\"dynalias\":{\"$\":0},\"est-a-la-maison\":{\"$\":0},\"est-a-la-masion\":{\"$\":0},\"est-le-patron\":{\"$\":0},\"est-mon-blogueur\":{\"$\":0},\"from-ak\":{\"$\":0},\"from-al\":{\"$\":0},\"from-ar\":{\"$\":0},\"from-ca\":{\"$\":0},\"from-ct\":{\"$\":0},\"from-dc\":{\"$\":0},\"from-de\":{\"$\":0},\"from-fl\":{\"$\":0},\"from-ga\":{\"$\":0},\"from-hi\":{\"$\":0},\"from-ia\":{\"$\":0},\"from-id\":{\"$\":0},\"from-il\":{\"$\":0},\"from-in\":{\"$\":0},\"from-ks\":{\"$\":0},\"from-ky\":{\"$\":0},\"from-ma\":{\"$\":0},\"from-md\":{\"$\":0},\"from-mi\":{\"$\":0},\"from-mn\":{\"$\":0},\"from-mo\":{\"$\":0},\"from-ms\":{\"$\":0},\"from-mt\":{\"$\":0},\"from-nc\":{\"$\":0},\"from-nd\":{\"$\":0},\"from-ne\":{\"$\":0},\"from-nh\":{\"$\":0},\"from-nj\":{\"$\":0},\"from-nm\":{\"$\":0},\"from-nv\":{\"$\":0},\"from-oh\":{\"$\":0},\"from-ok\":{\"$\":0},\"from-or\":{\"$\":0},\"from-pa\":{\"$\":0},\"from-pr\":{\"$\":0},\"from-ri\":{\"$\":0},\"from-sc\":{\"$\":0},\"from-sd\":{\"$\":0},\"from-tn\":{\"$\":0},\"from-tx\":{\"$\":0},\"from-ut\":{\"$\":0},\"from-va\":{\"$\":0},\"from-vt\":{\"$\":0},\"from-wa\":{\"$\":0},\"from-wi\":{\"$\":0},\"from-wv\":{\"$\":0},\"from-wy\":{\"$\":0},\"getmyip\":{\"$\":0},\"gotdns\":{\"$\":0},\"hobby-site\":{\"$\":0},\"homelinux\":{\"$\":0},\"homeunix\":{\"$\":0},\"iamallama\":{\"$\":0},\"is-a-anarchist\":{\"$\":0},\"is-a-blogger\":{\"$\":0},\"is-a-bookkeeper\":{\"$\":0},\"is-a-bulls-fan\":{\"$\":0},\"is-a-caterer\":{\"$\":0},\"is-a-chef\":{\"$\":0},\"is-a-conservative\":{\"$\":0},\"is-a-cpa\":{\"$\":0},\"is-a-cubicle-slave\":{\"$\":0},\"is-a-democrat\":{\"$\":0},\"is-a-designer\":{\"$\":0},\"is-a-doctor\":{\"$\":0},\"is-a-financialadvisor\":{\"$\":0},\"is-a-geek\":{\"$\":0},\"is-a-green\":{\"$\":0},\"is-a-guru\":{\"$\":0},\"is-a-hard-worker\":{\"$\":0},\"is-a-hunter\":{\"$\":0},\"is-a-landscaper\":{\"$\":0},\"is-a-lawyer\":{\"$\":0},\"is-a-liberal\":{\"$\":0},\"is-a-libertarian\":{\"$\":0},\"is-a-llama\":{\"$\":0},\"is-a-musician\":{\"$\":0},\"is-a-nascarfan\":{\"$\":0},\"is-a-nurse\":{\"$\":0},\"is-a-painter\":{\"$\":0},\"is-a-personaltrainer\":{\"$\":0},\"is-a-photographer\":{\"$\":0},\"is-a-player\":{\"$\":0},\"is-a-republican\":{\"$\":0},\"is-a-rockstar\":{\"$\":0},\"is-a-socialist\":{\"$\":0},\"is-a-student\":{\"$\":0},\"is-a-teacher\":{\"$\":0},\"is-a-techie\":{\"$\":0},\"is-a-therapist\":{\"$\":0},\"is-an-accountant\":{\"$\":0},\"is-an-actor\":{\"$\":0},\"is-an-actress\":{\"$\":0},\"is-an-anarchist\":{\"$\":0},\"is-an-artist\":{\"$\":0},\"is-an-engineer\":{\"$\":0},\"is-an-entertainer\":{\"$\":0},\"is-certified\":{\"$\":0},\"is-gone\":{\"$\":0},\"is-into-anime\":{\"$\":0},\"is-into-cars\":{\"$\":0},\"is-into-cartoons\":{\"$\":0},\"is-into-games\":{\"$\":0},\"is-leet\":{\"$\":0},\"is-not-certified\":{\"$\":0},\"is-slick\":{\"$\":0},\"is-uberleet\":{\"$\":0},\"is-with-theband\":{\"$\":0},\"isa-geek\":{\"$\":0},\"isa-hockeynut\":{\"$\":0},\"issmarterthanyou\":{\"$\":0},\"likes-pie\":{\"$\":0},\"likescandy\":{\"$\":0},\"neat-url\":{\"$\":0},\"saves-the-whales\":{\"$\":0},\"selfip\":{\"$\":0},\"sells-for-less\":{\"$\":0},\"sells-for-u\":{\"$\":0},\"servebbs\":{\"$\":0},\"simple-url\":{\"$\":0},\"space-to-rent\":{\"$\":0},\"teaches-yoga\":{\"$\":0},\"writesthisblog\":{\"$\":0},\"ddnsfree\":{\"$\":0},\"ddnsgeek\":{\"$\":0},\"giize\":{\"$\":0},\"gleeze\":{\"$\":0},\"kozow\":{\"$\":0},\"loseyourip\":{\"$\":0},\"ooguy\":{\"$\":0},\"theworkpc\":{\"$\":0},\"mytuleap\":{\"$\":0},\"evennode\":{\"eu-1\":{\"$\":0},\"eu-2\":{\"$\":0},\"eu-3\":{\"$\":0},\"eu-4\":{\"$\":0},\"us-1\":{\"$\":0},\"us-2\":{\"$\":0},\"us-3\":{\"$\":0},\"us-4\":{\"$\":0}},\"fbsbx\":{\"apps\":{\"$\":0}},\"firebaseapp\":{\"$\":0},\"flynnhub\":{\"$\":0},\"freebox-os\":{\"$\":0},\"freeboxos\":{\"$\":0},\"githubusercontent\":{\"$\":0},\"0emm\":{\"*\":{\"$\":0}},\"appspot\":{\"$\":0},\"blogspot\":{\"$\":0},\"codespot\":{\"$\":0},\"googleapis\":{\"$\":0},\"googlecode\":{\"$\":0},\"pagespeedmobilizer\":{\"$\":0},\"publishproxy\":{\"$\":0},\"withgoogle\":{\"$\":0},\"withyoutube\":{\"$\":0},\"herokuapp\":{\"$\":0},\"herokussl\":{\"$\":0},\"pixolino\":{\"$\":0},\"joyent\":{\"cns\":{\"*\":{\"$\":0}}},\"barsyonline\":{\"$\":0},\"meteorapp\":{\"$\":0,\"eu\":{\"$\":0}},\"bitballoon\":{\"$\":0},\"netlify\":{\"$\":0},\"4u\":{\"$\":0},\"nfshost\":{\"$\":0},\"blogsyte\":{\"$\":0},\"ciscofreak\":{\"$\":0},\"damnserver\":{\"$\":0},\"ditchyourip\":{\"$\":0},\"dnsiskinky\":{\"$\":0},\"dynns\":{\"$\":0},\"geekgalaxy\":{\"$\":0},\"health-carereform\":{\"$\":0},\"homesecuritymac\":{\"$\":0},\"homesecuritypc\":{\"$\":0},\"myactivedirectory\":{\"$\":0},\"mysecuritycamera\":{\"$\":0},\"net-freaks\":{\"$\":0},\"onthewifi\":{\"$\":0},\"point2this\":{\"$\":0},\"quicksytes\":{\"$\":0},\"securitytactics\":{\"$\":0},\"serveexchange\":{\"$\":0},\"servehumour\":{\"$\":0},\"servep2p\":{\"$\":0},\"servesarcasm\":{\"$\":0},\"stufftoread\":{\"$\":0},\"unusualperson\":{\"$\":0},\"workisboring\":{\"$\":0},\"3utilities\":{\"$\":0},\"ddnsking\":{\"$\":0},\"myvnc\":{\"$\":0},\"servebeer\":{\"$\":0},\"servecounterstrike\":{\"$\":0},\"serveftp\":{\"$\":0},\"servegame\":{\"$\":0},\"servehalflife\":{\"$\":0},\"servehttp\":{\"$\":0},\"serveirc\":{\"$\":0},\"servemp3\":{\"$\":0},\"servepics\":{\"$\":0},\"servequake\":{\"$\":0},\"operaunite\":{\"$\":0},\"outsystemscloud\":{\"$\":0},\"ownprovider\":{\"$\":0},\"pgfog\":{\"$\":0},\"pagefrontapp\":{\"$\":0},\"gotpantheon\":{\"$\":0},\"prgmr\":{\"xen\":{\"$\":0}},\"qa2\":{\"$\":0},\"dev-myqnapcloud\":{\"$\":0},\"alpha-myqnapcloud\":{\"$\":0},\"myqnapcloud\":{\"$\":0},\"quipelements\":{\"*\":{\"$\":0}},\"rackmaze\":{\"$\":0},\"rhcloud\":{\"$\":0},\"logoip\":{\"$\":0},\"scrysec\":{\"$\":0},\"firewall-gateway\":{\"$\":0},\"myshopblocks\":{\"$\":0},\"1kapp\":{\"$\":0},\"appchizi\":{\"$\":0},\"applinzi\":{\"$\":0},\"sinaapp\":{\"$\":0},\"vipsinaapp\":{\"$\":0},\"bounty-full\":{\"$\":0,\"alpha\":{\"$\":0},\"beta\":{\"$\":0}},\"temp-dns\":{\"$\":0},\"dsmynas\":{\"$\":0},\"familyds\":{\"$\":0},\"bloxcms\":{\"$\":0},\"townnews-staging\":{\"$\":0},\"hk\":{\"$\":0},\"remotewd\":{\"$\":0},\"yolasite\":{\"$\":0}},\"coop\":{\"$\":0},\"cr\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0},\"ed\":{\"$\":0},\"fi\":{\"$\":0},\"go\":{\"$\":0},\"or\":{\"$\":0},\"sa\":{\"$\":0}},\"cu\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0},\"gov\":{\"$\":0},\"inf\":{\"$\":0}},\"cv\":{\"$\":0,\"blogspot\":{\"$\":0}},\"cw\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"cx\":{\"$\":0,\"gov\":{\"$\":0},\"ath\":{\"$\":0},\"info\":{\"$\":0}},\"cy\":{\"$\":0,\"ac\":{\"$\":0},\"biz\":{\"$\":0},\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"ekloges\":{\"$\":0},\"gov\":{\"$\":0},\"ltd\":{\"$\":0},\"name\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"parliament\":{\"$\":0},\"press\":{\"$\":0},\"pro\":{\"$\":0},\"tm\":{\"$\":0}},\"cz\":{\"$\":0,\"co\":{\"$\":0},\"realm\":{\"$\":0},\"e4\":{\"$\":0},\"blogspot\":{\"$\":0},\"metacentrum\":{\"cloud\":{\"$\":0},\"custom\":{\"$\":0}}},\"de\":{\"$\":0,\"bplaced\":{\"$\":0},\"square7\":{\"$\":0},\"com\":{\"$\":0},\"cosidns\":{\"dyn\":{\"$\":0}},\"dynamisches-dns\":{\"$\":0},\"dnsupdater\":{\"$\":0},\"internet-dns\":{\"$\":0},\"l-o-g-i-n\":{\"$\":0},\"dnshome\":{\"$\":0},\"fuettertdasnetz\":{\"$\":0},\"isteingeek\":{\"$\":0},\"istmein\":{\"$\":0},\"lebtimnetz\":{\"$\":0},\"leitungsen\":{\"$\":0},\"traeumtgerade\":{\"$\":0},\"ddnss\":{\"$\":0,\"dyn\":{\"$\":0},\"dyndns\":{\"$\":0}},\"dyndns1\":{\"$\":0},\"dyn-ip24\":{\"$\":0},\"home-webserver\":{\"$\":0,\"dyn\":{\"$\":0}},\"myhome-server\":{\"$\":0},\"goip\":{\"$\":0},\"blogspot\":{\"$\":0},\"keymachine\":{\"$\":0},\"git-repos\":{\"$\":0},\"lcube-server\":{\"$\":0},\"svn-repos\":{\"$\":0},\"barsy\":{\"$\":0},\"logoip\":{\"$\":0},\"firewall-gateway\":{\"$\":0},\"my-gateway\":{\"$\":0},\"my-router\":{\"$\":0},\"spdns\":{\"$\":0},\"taifun-dns\":{\"$\":0},\"12hp\":{\"$\":0},\"2ix\":{\"$\":0},\"4lima\":{\"$\":0},\"lima-city\":{\"$\":0},\"dd-dns\":{\"$\":0},\"dray-dns\":{\"$\":0},\"draydns\":{\"$\":0},\"dyn-vpn\":{\"$\":0},\"dynvpn\":{\"$\":0},\"mein-vigor\":{\"$\":0},\"my-vigor\":{\"$\":0},\"my-wan\":{\"$\":0},\"syno-ds\":{\"$\":0},\"synology-diskstation\":{\"$\":0},\"synology-ds\":{\"$\":0}},\"dj\":{\"$\":0},\"dk\":{\"$\":0,\"biz\":{\"$\":0},\"co\":{\"$\":0},\"firm\":{\"$\":0},\"reg\":{\"$\":0},\"store\":{\"$\":0},\"blogspot\":{\"$\":0}},\"dm\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0}},\"do\":{\"$\":0,\"art\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gob\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"sld\":{\"$\":0},\"web\":{\"$\":0}},\"dz\":{\"$\":0,\"com\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0},\"gov\":{\"$\":0},\"edu\":{\"$\":0},\"asso\":{\"$\":0},\"pol\":{\"$\":0},\"art\":{\"$\":0}},\"ec\":{\"$\":0,\"com\":{\"$\":0},\"info\":{\"$\":0},\"net\":{\"$\":0},\"fin\":{\"$\":0},\"k12\":{\"$\":0},\"med\":{\"$\":0},\"pro\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"gob\":{\"$\":0},\"mil\":{\"$\":0}},\"edu\":{\"$\":0},\"ee\":{\"$\":0,\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"riik\":{\"$\":0},\"lib\":{\"$\":0},\"med\":{\"$\":0},\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"pri\":{\"$\":0},\"aip\":{\"$\":0},\"org\":{\"$\":0},\"fie\":{\"$\":0}},\"eg\":{\"$\":0,\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"edu\":{\"$\":0},\"eun\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"name\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"sci\":{\"$\":0}},\"er\":{\"*\":{\"$\":0}},\"es\":{\"$\":0,\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"nom\":{\"$\":0},\"org\":{\"$\":0},\"gob\":{\"$\":0},\"edu\":{\"$\":0}},\"et\":{\"$\":0,\"com\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"biz\":{\"$\":0},\"name\":{\"$\":0},\"info\":{\"$\":0},\"net\":{\"$\":0}},\"eu\":{\"$\":0,\"1password\":{\"$\":0},\"mycd\":{\"$\":0},\"cloudns\":{\"$\":0},\"barsy\":{\"$\":0},\"wellbeingzone\":{\"$\":0},\"spdns\":{\"$\":0},\"transurl\":{\"*\":{\"$\":0}},\"diskstation\":{\"$\":0}},\"fi\":{\"$\":0,\"aland\":{\"$\":0},\"dy\":{\"$\":0},\"blogspot\":{\"$\":0},\"iki\":{\"$\":0}},\"fj\":{\"*\":{\"$\":0}},\"fk\":{\"*\":{\"$\":0}},\"fm\":{\"$\":0},\"fo\":{\"$\":0},\"fr\":{\"$\":0,\"com\":{\"$\":0},\"asso\":{\"$\":0},\"nom\":{\"$\":0},\"prd\":{\"$\":0},\"presse\":{\"$\":0},\"tm\":{\"$\":0},\"aeroport\":{\"$\":0},\"assedic\":{\"$\":0},\"avocat\":{\"$\":0},\"avoues\":{\"$\":0},\"cci\":{\"$\":0},\"chambagri\":{\"$\":0},\"chirurgiens-dentistes\":{\"$\":0},\"experts-comptables\":{\"$\":0},\"geometre-expert\":{\"$\":0},\"gouv\":{\"$\":0},\"greta\":{\"$\":0},\"huissier-justice\":{\"$\":0},\"medecin\":{\"$\":0},\"notaires\":{\"$\":0},\"pharmacien\":{\"$\":0},\"port\":{\"$\":0},\"veterinaire\":{\"$\":0},\"fbx-os\":{\"$\":0},\"fbxos\":{\"$\":0},\"freebox-os\":{\"$\":0},\"freeboxos\":{\"$\":0},\"blogspot\":{\"$\":0},\"on-web\":{\"$\":0},\"chirurgiens-dentistes-en-france\":{\"$\":0}},\"ga\":{\"$\":0},\"gb\":{\"$\":0},\"gd\":{\"$\":0,\"nom\":{\"$\":0}},\"ge\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"pvt\":{\"$\":0}},\"gf\":{\"$\":0},\"gg\":{\"$\":0,\"co\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"cya\":{\"$\":0}},\"gh\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"mil\":{\"$\":0}},\"gi\":{\"$\":0,\"com\":{\"$\":0},\"ltd\":{\"$\":0},\"gov\":{\"$\":0},\"mod\":{\"$\":0},\"edu\":{\"$\":0},\"org\":{\"$\":0}},\"gl\":{\"$\":0,\"co\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"nom\":{\"$\":0}},\"gm\":{\"$\":0},\"gn\":{\"$\":0,\"ac\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0}},\"gov\":{\"$\":0},\"gp\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"mobi\":{\"$\":0},\"edu\":{\"$\":0},\"org\":{\"$\":0},\"asso\":{\"$\":0}},\"gq\":{\"$\":0},\"gr\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gov\":{\"$\":0},\"blogspot\":{\"$\":0},\"nym\":{\"$\":0}},\"gs\":{\"$\":0},\"gt\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gob\":{\"$\":0},\"ind\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"nom\":{\"$\":0}},\"gu\":{\"*\":{\"$\":0}},\"gw\":{\"$\":0},\"gy\":{\"$\":0,\"co\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"hk\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"idv\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"xn--55qx5d\":{\"$\":0},\"xn--wcvs22d\":{\"$\":0},\"xn--lcvr32d\":{\"$\":0},\"xn--mxtq1m\":{\"$\":0},\"xn--gmqw5a\":{\"$\":0},\"xn--ciqpn\":{\"$\":0},\"xn--gmq050i\":{\"$\":0},\"xn--zf0avx\":{\"$\":0},\"xn--io0a7i\":{\"$\":0},\"xn--mk0axi\":{\"$\":0},\"xn--od0alg\":{\"$\":0},\"xn--od0aq3b\":{\"$\":0},\"xn--tn0ag\":{\"$\":0},\"xn--uc0atv\":{\"$\":0},\"xn--uc0ay4a\":{\"$\":0},\"blogspot\":{\"$\":0},\"ltd\":{\"$\":0},\"inc\":{\"$\":0}},\"hm\":{\"$\":0},\"hn\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0},\"mil\":{\"$\":0},\"gob\":{\"$\":0},\"nom\":{\"$\":0}},\"hr\":{\"$\":0,\"iz\":{\"$\":0},\"from\":{\"$\":0},\"name\":{\"$\":0},\"com\":{\"$\":0},\"blogspot\":{\"$\":0}},\"ht\":{\"$\":0,\"com\":{\"$\":0},\"shop\":{\"$\":0},\"firm\":{\"$\":0},\"info\":{\"$\":0},\"adult\":{\"$\":0},\"net\":{\"$\":0},\"pro\":{\"$\":0},\"org\":{\"$\":0},\"med\":{\"$\":0},\"art\":{\"$\":0},\"coop\":{\"$\":0},\"pol\":{\"$\":0},\"asso\":{\"$\":0},\"edu\":{\"$\":0},\"rel\":{\"$\":0},\"gouv\":{\"$\":0},\"perso\":{\"$\":0}},\"hu\":{\"2000\":{\"$\":0},\"$\":0,\"co\":{\"$\":0},\"info\":{\"$\":0},\"org\":{\"$\":0},\"priv\":{\"$\":0},\"sport\":{\"$\":0},\"tm\":{\"$\":0},\"agrar\":{\"$\":0},\"bolt\":{\"$\":0},\"casino\":{\"$\":0},\"city\":{\"$\":0},\"erotica\":{\"$\":0},\"erotika\":{\"$\":0},\"film\":{\"$\":0},\"forum\":{\"$\":0},\"games\":{\"$\":0},\"hotel\":{\"$\":0},\"ingatlan\":{\"$\":0},\"jogasz\":{\"$\":0},\"konyvelo\":{\"$\":0},\"lakas\":{\"$\":0},\"media\":{\"$\":0},\"news\":{\"$\":0},\"reklam\":{\"$\":0},\"sex\":{\"$\":0},\"shop\":{\"$\":0},\"suli\":{\"$\":0},\"szex\":{\"$\":0},\"tozsde\":{\"$\":0},\"utazas\":{\"$\":0},\"video\":{\"$\":0},\"blogspot\":{\"$\":0}},\"id\":{\"$\":0,\"ac\":{\"$\":0},\"biz\":{\"$\":0},\"co\":{\"$\":0,\"blogspot\":{\"$\":0}},\"desa\":{\"$\":0},\"go\":{\"$\":0},\"mil\":{\"$\":0},\"my\":{\"$\":0},\"net\":{\"$\":0},\"or\":{\"$\":0},\"sch\":{\"$\":0},\"web\":{\"$\":0}},\"ie\":{\"$\":0,\"gov\":{\"$\":0},\"blogspot\":{\"$\":0}},\"il\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0,\"blogspot\":{\"$\":0}},\"gov\":{\"$\":0},\"idf\":{\"$\":0},\"k12\":{\"$\":0},\"muni\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"im\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0,\"ltd\":{\"$\":0},\"plc\":{\"$\":0}},\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"tt\":{\"$\":0},\"tv\":{\"$\":0},\"ro\":{\"$\":0},\"nom\":{\"$\":0}},\"in\":{\"$\":0,\"co\":{\"$\":0},\"firm\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gen\":{\"$\":0},\"ind\":{\"$\":0},\"nic\":{\"$\":0},\"ac\":{\"$\":0},\"edu\":{\"$\":0},\"res\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"cloudns\":{\"$\":0},\"blogspot\":{\"$\":0},\"barsy\":{\"$\":0}},\"info\":{\"$\":0,\"cloudns\":{\"$\":0},\"dynamic-dns\":{\"$\":0},\"dyndns\":{\"$\":0},\"barrel-of-knowledge\":{\"$\":0},\"barrell-of-knowledge\":{\"$\":0},\"for-our\":{\"$\":0},\"groks-the\":{\"$\":0},\"groks-this\":{\"$\":0},\"here-for-more\":{\"$\":0},\"knowsitall\":{\"$\":0},\"selfip\":{\"$\":0},\"webhop\":{\"$\":0},\"nsupdate\":{\"$\":0},\"dvrcam\":{\"$\":0},\"ilovecollege\":{\"$\":0},\"no-ip\":{\"$\":0},\"v-info\":{\"$\":0}},\"int\":{\"$\":0,\"eu\":{\"$\":0}},\"io\":{\"$\":0,\"com\":{\"$\":0},\"backplaneapp\":{\"$\":0},\"boxfuse\":{\"$\":0},\"browsersafetymark\":{\"$\":0},\"dedyn\":{\"$\":0},\"drud\":{\"$\":0},\"definima\":{\"$\":0},\"enonic\":{\"$\":0,\"customer\":{\"$\":0}},\"github\":{\"$\":0},\"gitlab\":{\"$\":0},\"hasura-app\":{\"$\":0},\"ngrok\":{\"$\":0},\"nodeart\":{\"stage\":{\"$\":0}},\"nodum\":{\"$\":0},\"nid\":{\"$\":0},\"pantheonsite\":{\"$\":0},\"protonet\":{\"$\":0},\"vaporcloud\":{\"$\":0},\"resindevice\":{\"$\":0},\"resinstaging\":{\"devices\":{\"$\":0}},\"hzc\":{\"$\":0},\"sandcats\":{\"$\":0},\"s5y\":{\"*\":{\"$\":0}},\"shiftedit\":{\"$\":0},\"lair\":{\"apps\":{\"$\":0}},\"stolos\":{\"*\":{\"$\":0}},\"spacekit\":{\"$\":0},\"thingdust\":{\"dev\":{\"cust\":{\"$\":0}},\"disrec\":{\"cust\":{\"$\":0}},\"prod\":{\"cust\":{\"$\":0}},\"testing\":{\"cust\":{\"$\":0}}},\"wedeploy\":{\"$\":0}},\"iq\":{\"$\":0,\"gov\":{\"$\":0},\"edu\":{\"$\":0},\"mil\":{\"$\":0},\"com\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0}},\"ir\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0},\"gov\":{\"$\":0},\"id\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"sch\":{\"$\":0},\"xn--mgba3a4f16a\":{\"$\":0},\"xn--mgba3a4fra\":{\"$\":0}},\"is\":{\"$\":0,\"net\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"int\":{\"$\":0},\"cupcake\":{\"$\":0},\"blogspot\":{\"$\":0}},\"it\":{\"$\":0,\"gov\":{\"$\":0},\"edu\":{\"$\":0},\"abr\":{\"$\":0},\"abruzzo\":{\"$\":0},\"aosta-valley\":{\"$\":0},\"aostavalley\":{\"$\":0},\"bas\":{\"$\":0},\"basilicata\":{\"$\":0},\"cal\":{\"$\":0},\"calabria\":{\"$\":0},\"cam\":{\"$\":0},\"campania\":{\"$\":0},\"emilia-romagna\":{\"$\":0},\"emiliaromagna\":{\"$\":0},\"emr\":{\"$\":0},\"friuli-v-giulia\":{\"$\":0},\"friuli-ve-giulia\":{\"$\":0},\"friuli-vegiulia\":{\"$\":0},\"friuli-venezia-giulia\":{\"$\":0},\"friuli-veneziagiulia\":{\"$\":0},\"friuli-vgiulia\":{\"$\":0},\"friuliv-giulia\":{\"$\":0},\"friulive-giulia\":{\"$\":0},\"friulivegiulia\":{\"$\":0},\"friulivenezia-giulia\":{\"$\":0},\"friuliveneziagiulia\":{\"$\":0},\"friulivgiulia\":{\"$\":0},\"fvg\":{\"$\":0},\"laz\":{\"$\":0},\"lazio\":{\"$\":0},\"lig\":{\"$\":0},\"liguria\":{\"$\":0},\"lom\":{\"$\":0},\"lombardia\":{\"$\":0},\"lombardy\":{\"$\":0},\"lucania\":{\"$\":0},\"mar\":{\"$\":0},\"marche\":{\"$\":0},\"mol\":{\"$\":0},\"molise\":{\"$\":0},\"piedmont\":{\"$\":0},\"piemonte\":{\"$\":0},\"pmn\":{\"$\":0},\"pug\":{\"$\":0},\"puglia\":{\"$\":0},\"sar\":{\"$\":0},\"sardegna\":{\"$\":0},\"sardinia\":{\"$\":0},\"sic\":{\"$\":0},\"sicilia\":{\"$\":0},\"sicily\":{\"$\":0},\"taa\":{\"$\":0},\"tos\":{\"$\":0},\"toscana\":{\"$\":0},\"trentino-a-adige\":{\"$\":0},\"trentino-aadige\":{\"$\":0},\"trentino-alto-adige\":{\"$\":0},\"trentino-altoadige\":{\"$\":0},\"trentino-s-tirol\":{\"$\":0},\"trentino-stirol\":{\"$\":0},\"trentino-sud-tirol\":{\"$\":0},\"trentino-sudtirol\":{\"$\":0},\"trentino-sued-tirol\":{\"$\":0},\"trentino-suedtirol\":{\"$\":0},\"trentinoa-adige\":{\"$\":0},\"trentinoaadige\":{\"$\":0},\"trentinoalto-adige\":{\"$\":0},\"trentinoaltoadige\":{\"$\":0},\"trentinos-tirol\":{\"$\":0},\"trentinostirol\":{\"$\":0},\"trentinosud-tirol\":{\"$\":0},\"trentinosudtirol\":{\"$\":0},\"trentinosued-tirol\":{\"$\":0},\"trentinosuedtirol\":{\"$\":0},\"tuscany\":{\"$\":0},\"umb\":{\"$\":0},\"umbria\":{\"$\":0},\"val-d-aosta\":{\"$\":0},\"val-daosta\":{\"$\":0},\"vald-aosta\":{\"$\":0},\"valdaosta\":{\"$\":0},\"valle-aosta\":{\"$\":0},\"valle-d-aosta\":{\"$\":0},\"valle-daosta\":{\"$\":0},\"valleaosta\":{\"$\":0},\"valled-aosta\":{\"$\":0},\"valledaosta\":{\"$\":0},\"vallee-aoste\":{\"$\":0},\"valleeaoste\":{\"$\":0},\"vao\":{\"$\":0},\"vda\":{\"$\":0},\"ven\":{\"$\":0},\"veneto\":{\"$\":0},\"ag\":{\"$\":0},\"agrigento\":{\"$\":0},\"al\":{\"$\":0},\"alessandria\":{\"$\":0},\"alto-adige\":{\"$\":0},\"altoadige\":{\"$\":0},\"an\":{\"$\":0},\"ancona\":{\"$\":0},\"andria-barletta-trani\":{\"$\":0},\"andria-trani-barletta\":{\"$\":0},\"andriabarlettatrani\":{\"$\":0},\"andriatranibarletta\":{\"$\":0},\"ao\":{\"$\":0},\"aosta\":{\"$\":0},\"aoste\":{\"$\":0},\"ap\":{\"$\":0},\"aq\":{\"$\":0},\"aquila\":{\"$\":0},\"ar\":{\"$\":0},\"arezzo\":{\"$\":0},\"ascoli-piceno\":{\"$\":0},\"ascolipiceno\":{\"$\":0},\"asti\":{\"$\":0},\"at\":{\"$\":0},\"av\":{\"$\":0},\"avellino\":{\"$\":0},\"ba\":{\"$\":0},\"balsan\":{\"$\":0},\"bari\":{\"$\":0},\"barletta-trani-andria\":{\"$\":0},\"barlettatraniandria\":{\"$\":0},\"belluno\":{\"$\":0},\"benevento\":{\"$\":0},\"bergamo\":{\"$\":0},\"bg\":{\"$\":0},\"bi\":{\"$\":0},\"biella\":{\"$\":0},\"bl\":{\"$\":0},\"bn\":{\"$\":0},\"bo\":{\"$\":0},\"bologna\":{\"$\":0},\"bolzano\":{\"$\":0},\"bozen\":{\"$\":0},\"br\":{\"$\":0},\"brescia\":{\"$\":0},\"brindisi\":{\"$\":0},\"bs\":{\"$\":0},\"bt\":{\"$\":0},\"bz\":{\"$\":0},\"ca\":{\"$\":0},\"cagliari\":{\"$\":0},\"caltanissetta\":{\"$\":0},\"campidano-medio\":{\"$\":0},\"campidanomedio\":{\"$\":0},\"campobasso\":{\"$\":0},\"carbonia-iglesias\":{\"$\":0},\"carboniaiglesias\":{\"$\":0},\"carrara-massa\":{\"$\":0},\"carraramassa\":{\"$\":0},\"caserta\":{\"$\":0},\"catania\":{\"$\":0},\"catanzaro\":{\"$\":0},\"cb\":{\"$\":0},\"ce\":{\"$\":0},\"cesena-forli\":{\"$\":0},\"cesenaforli\":{\"$\":0},\"ch\":{\"$\":0},\"chieti\":{\"$\":0},\"ci\":{\"$\":0},\"cl\":{\"$\":0},\"cn\":{\"$\":0},\"co\":{\"$\":0},\"como\":{\"$\":0},\"cosenza\":{\"$\":0},\"cr\":{\"$\":0},\"cremona\":{\"$\":0},\"crotone\":{\"$\":0},\"cs\":{\"$\":0},\"ct\":{\"$\":0},\"cuneo\":{\"$\":0},\"cz\":{\"$\":0},\"dell-ogliastra\":{\"$\":0},\"dellogliastra\":{\"$\":0},\"en\":{\"$\":0},\"enna\":{\"$\":0},\"fc\":{\"$\":0},\"fe\":{\"$\":0},\"fermo\":{\"$\":0},\"ferrara\":{\"$\":0},\"fg\":{\"$\":0},\"fi\":{\"$\":0},\"firenze\":{\"$\":0},\"florence\":{\"$\":0},\"fm\":{\"$\":0},\"foggia\":{\"$\":0},\"forli-cesena\":{\"$\":0},\"forlicesena\":{\"$\":0},\"fr\":{\"$\":0},\"frosinone\":{\"$\":0},\"ge\":{\"$\":0},\"genoa\":{\"$\":0},\"genova\":{\"$\":0},\"go\":{\"$\":0},\"gorizia\":{\"$\":0},\"gr\":{\"$\":0},\"grosseto\":{\"$\":0},\"iglesias-carbonia\":{\"$\":0},\"iglesiascarbonia\":{\"$\":0},\"im\":{\"$\":0},\"imperia\":{\"$\":0},\"is\":{\"$\":0},\"isernia\":{\"$\":0},\"kr\":{\"$\":0},\"la-spezia\":{\"$\":0},\"laquila\":{\"$\":0},\"laspezia\":{\"$\":0},\"latina\":{\"$\":0},\"lc\":{\"$\":0},\"le\":{\"$\":0},\"lecce\":{\"$\":0},\"lecco\":{\"$\":0},\"li\":{\"$\":0},\"livorno\":{\"$\":0},\"lo\":{\"$\":0},\"lodi\":{\"$\":0},\"lt\":{\"$\":0},\"lu\":{\"$\":0},\"lucca\":{\"$\":0},\"macerata\":{\"$\":0},\"mantova\":{\"$\":0},\"massa-carrara\":{\"$\":0},\"massacarrara\":{\"$\":0},\"matera\":{\"$\":0},\"mb\":{\"$\":0},\"mc\":{\"$\":0},\"me\":{\"$\":0},\"medio-campidano\":{\"$\":0},\"mediocampidano\":{\"$\":0},\"messina\":{\"$\":0},\"mi\":{\"$\":0},\"milan\":{\"$\":0},\"milano\":{\"$\":0},\"mn\":{\"$\":0},\"mo\":{\"$\":0},\"modena\":{\"$\":0},\"monza-brianza\":{\"$\":0},\"monza-e-della-brianza\":{\"$\":0},\"monza\":{\"$\":0},\"monzabrianza\":{\"$\":0},\"monzaebrianza\":{\"$\":0},\"monzaedellabrianza\":{\"$\":0},\"ms\":{\"$\":0},\"mt\":{\"$\":0},\"na\":{\"$\":0},\"naples\":{\"$\":0},\"napoli\":{\"$\":0},\"no\":{\"$\":0},\"novara\":{\"$\":0},\"nu\":{\"$\":0},\"nuoro\":{\"$\":0},\"og\":{\"$\":0},\"ogliastra\":{\"$\":0},\"olbia-tempio\":{\"$\":0},\"olbiatempio\":{\"$\":0},\"or\":{\"$\":0},\"oristano\":{\"$\":0},\"ot\":{\"$\":0},\"pa\":{\"$\":0},\"padova\":{\"$\":0},\"padua\":{\"$\":0},\"palermo\":{\"$\":0},\"parma\":{\"$\":0},\"pavia\":{\"$\":0},\"pc\":{\"$\":0},\"pd\":{\"$\":0},\"pe\":{\"$\":0},\"perugia\":{\"$\":0},\"pesaro-urbino\":{\"$\":0},\"pesarourbino\":{\"$\":0},\"pescara\":{\"$\":0},\"pg\":{\"$\":0},\"pi\":{\"$\":0},\"piacenza\":{\"$\":0},\"pisa\":{\"$\":0},\"pistoia\":{\"$\":0},\"pn\":{\"$\":0},\"po\":{\"$\":0},\"pordenone\":{\"$\":0},\"potenza\":{\"$\":0},\"pr\":{\"$\":0},\"prato\":{\"$\":0},\"pt\":{\"$\":0},\"pu\":{\"$\":0},\"pv\":{\"$\":0},\"pz\":{\"$\":0},\"ra\":{\"$\":0},\"ragusa\":{\"$\":0},\"ravenna\":{\"$\":0},\"rc\":{\"$\":0},\"re\":{\"$\":0},\"reggio-calabria\":{\"$\":0},\"reggio-emilia\":{\"$\":0},\"reggiocalabria\":{\"$\":0},\"reggioemilia\":{\"$\":0},\"rg\":{\"$\":0},\"ri\":{\"$\":0},\"rieti\":{\"$\":0},\"rimini\":{\"$\":0},\"rm\":{\"$\":0},\"rn\":{\"$\":0},\"ro\":{\"$\":0},\"roma\":{\"$\":0},\"rome\":{\"$\":0},\"rovigo\":{\"$\":0},\"sa\":{\"$\":0},\"salerno\":{\"$\":0},\"sassari\":{\"$\":0},\"savona\":{\"$\":0},\"si\":{\"$\":0},\"siena\":{\"$\":0},\"siracusa\":{\"$\":0},\"so\":{\"$\":0},\"sondrio\":{\"$\":0},\"sp\":{\"$\":0},\"sr\":{\"$\":0},\"ss\":{\"$\":0},\"suedtirol\":{\"$\":0},\"sv\":{\"$\":0},\"ta\":{\"$\":0},\"taranto\":{\"$\":0},\"te\":{\"$\":0},\"tempio-olbia\":{\"$\":0},\"tempioolbia\":{\"$\":0},\"teramo\":{\"$\":0},\"terni\":{\"$\":0},\"tn\":{\"$\":0},\"to\":{\"$\":0},\"torino\":{\"$\":0},\"tp\":{\"$\":0},\"tr\":{\"$\":0},\"trani-andria-barletta\":{\"$\":0},\"trani-barletta-andria\":{\"$\":0},\"traniandriabarletta\":{\"$\":0},\"tranibarlettaandria\":{\"$\":0},\"trapani\":{\"$\":0},\"trentino\":{\"$\":0},\"trento\":{\"$\":0},\"treviso\":{\"$\":0},\"trieste\":{\"$\":0},\"ts\":{\"$\":0},\"turin\":{\"$\":0},\"tv\":{\"$\":0},\"ud\":{\"$\":0},\"udine\":{\"$\":0},\"urbino-pesaro\":{\"$\":0},\"urbinopesaro\":{\"$\":0},\"va\":{\"$\":0},\"varese\":{\"$\":0},\"vb\":{\"$\":0},\"vc\":{\"$\":0},\"ve\":{\"$\":0},\"venezia\":{\"$\":0},\"venice\":{\"$\":0},\"verbania\":{\"$\":0},\"vercelli\":{\"$\":0},\"verona\":{\"$\":0},\"vi\":{\"$\":0},\"vibo-valentia\":{\"$\":0},\"vibovalentia\":{\"$\":0},\"vicenza\":{\"$\":0},\"viterbo\":{\"$\":0},\"vr\":{\"$\":0},\"vs\":{\"$\":0},\"vt\":{\"$\":0},\"vv\":{\"$\":0},\"blogspot\":{\"$\":0}},\"je\":{\"$\":0,\"co\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"jm\":{\"*\":{\"$\":0}},\"jo\":{\"$\":0,\"com\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0},\"edu\":{\"$\":0},\"sch\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"name\":{\"$\":0}},\"jobs\":{\"$\":0},\"jp\":{\"$\":0,\"ac\":{\"$\":0},\"ad\":{\"$\":0},\"co\":{\"$\":0},\"ed\":{\"$\":0},\"go\":{\"$\":0},\"gr\":{\"$\":0},\"lg\":{\"$\":0},\"ne\":{\"$\":0},\"or\":{\"$\":0},\"aichi\":{\"$\":0,\"aisai\":{\"$\":0},\"ama\":{\"$\":0},\"anjo\":{\"$\":0},\"asuke\":{\"$\":0},\"chiryu\":{\"$\":0},\"chita\":{\"$\":0},\"fuso\":{\"$\":0},\"gamagori\":{\"$\":0},\"handa\":{\"$\":0},\"hazu\":{\"$\":0},\"hekinan\":{\"$\":0},\"higashiura\":{\"$\":0},\"ichinomiya\":{\"$\":0},\"inazawa\":{\"$\":0},\"inuyama\":{\"$\":0},\"isshiki\":{\"$\":0},\"iwakura\":{\"$\":0},\"kanie\":{\"$\":0},\"kariya\":{\"$\":0},\"kasugai\":{\"$\":0},\"kira\":{\"$\":0},\"kiyosu\":{\"$\":0},\"komaki\":{\"$\":0},\"konan\":{\"$\":0},\"kota\":{\"$\":0},\"mihama\":{\"$\":0},\"miyoshi\":{\"$\":0},\"nishio\":{\"$\":0},\"nisshin\":{\"$\":0},\"obu\":{\"$\":0},\"oguchi\":{\"$\":0},\"oharu\":{\"$\":0},\"okazaki\":{\"$\":0},\"owariasahi\":{\"$\":0},\"seto\":{\"$\":0},\"shikatsu\":{\"$\":0},\"shinshiro\":{\"$\":0},\"shitara\":{\"$\":0},\"tahara\":{\"$\":0},\"takahama\":{\"$\":0},\"tobishima\":{\"$\":0},\"toei\":{\"$\":0},\"togo\":{\"$\":0},\"tokai\":{\"$\":0},\"tokoname\":{\"$\":0},\"toyoake\":{\"$\":0},\"toyohashi\":{\"$\":0},\"toyokawa\":{\"$\":0},\"toyone\":{\"$\":0},\"toyota\":{\"$\":0},\"tsushima\":{\"$\":0},\"yatomi\":{\"$\":0}},\"akita\":{\"$\":0,\"akita\":{\"$\":0},\"daisen\":{\"$\":0},\"fujisato\":{\"$\":0},\"gojome\":{\"$\":0},\"hachirogata\":{\"$\":0},\"happou\":{\"$\":0},\"higashinaruse\":{\"$\":0},\"honjo\":{\"$\":0},\"honjyo\":{\"$\":0},\"ikawa\":{\"$\":0},\"kamikoani\":{\"$\":0},\"kamioka\":{\"$\":0},\"katagami\":{\"$\":0},\"kazuno\":{\"$\":0},\"kitaakita\":{\"$\":0},\"kosaka\":{\"$\":0},\"kyowa\":{\"$\":0},\"misato\":{\"$\":0},\"mitane\":{\"$\":0},\"moriyoshi\":{\"$\":0},\"nikaho\":{\"$\":0},\"noshiro\":{\"$\":0},\"odate\":{\"$\":0},\"oga\":{\"$\":0},\"ogata\":{\"$\":0},\"semboku\":{\"$\":0},\"yokote\":{\"$\":0},\"yurihonjo\":{\"$\":0}},\"aomori\":{\"$\":0,\"aomori\":{\"$\":0},\"gonohe\":{\"$\":0},\"hachinohe\":{\"$\":0},\"hashikami\":{\"$\":0},\"hiranai\":{\"$\":0},\"hirosaki\":{\"$\":0},\"itayanagi\":{\"$\":0},\"kuroishi\":{\"$\":0},\"misawa\":{\"$\":0},\"mutsu\":{\"$\":0},\"nakadomari\":{\"$\":0},\"noheji\":{\"$\":0},\"oirase\":{\"$\":0},\"owani\":{\"$\":0},\"rokunohe\":{\"$\":0},\"sannohe\":{\"$\":0},\"shichinohe\":{\"$\":0},\"shingo\":{\"$\":0},\"takko\":{\"$\":0},\"towada\":{\"$\":0},\"tsugaru\":{\"$\":0},\"tsuruta\":{\"$\":0}},\"chiba\":{\"$\":0,\"abiko\":{\"$\":0},\"asahi\":{\"$\":0},\"chonan\":{\"$\":0},\"chosei\":{\"$\":0},\"choshi\":{\"$\":0},\"chuo\":{\"$\":0},\"funabashi\":{\"$\":0},\"futtsu\":{\"$\":0},\"hanamigawa\":{\"$\":0},\"ichihara\":{\"$\":0},\"ichikawa\":{\"$\":0},\"ichinomiya\":{\"$\":0},\"inzai\":{\"$\":0},\"isumi\":{\"$\":0},\"kamagaya\":{\"$\":0},\"kamogawa\":{\"$\":0},\"kashiwa\":{\"$\":0},\"katori\":{\"$\":0},\"katsuura\":{\"$\":0},\"kimitsu\":{\"$\":0},\"kisarazu\":{\"$\":0},\"kozaki\":{\"$\":0},\"kujukuri\":{\"$\":0},\"kyonan\":{\"$\":0},\"matsudo\":{\"$\":0},\"midori\":{\"$\":0},\"mihama\":{\"$\":0},\"minamiboso\":{\"$\":0},\"mobara\":{\"$\":0},\"mutsuzawa\":{\"$\":0},\"nagara\":{\"$\":0},\"nagareyama\":{\"$\":0},\"narashino\":{\"$\":0},\"narita\":{\"$\":0},\"noda\":{\"$\":0},\"oamishirasato\":{\"$\":0},\"omigawa\":{\"$\":0},\"onjuku\":{\"$\":0},\"otaki\":{\"$\":0},\"sakae\":{\"$\":0},\"sakura\":{\"$\":0},\"shimofusa\":{\"$\":0},\"shirako\":{\"$\":0},\"shiroi\":{\"$\":0},\"shisui\":{\"$\":0},\"sodegaura\":{\"$\":0},\"sosa\":{\"$\":0},\"tako\":{\"$\":0},\"tateyama\":{\"$\":0},\"togane\":{\"$\":0},\"tohnosho\":{\"$\":0},\"tomisato\":{\"$\":0},\"urayasu\":{\"$\":0},\"yachimata\":{\"$\":0},\"yachiyo\":{\"$\":0},\"yokaichiba\":{\"$\":0},\"yokoshibahikari\":{\"$\":0},\"yotsukaido\":{\"$\":0}},\"ehime\":{\"$\":0,\"ainan\":{\"$\":0},\"honai\":{\"$\":0},\"ikata\":{\"$\":0},\"imabari\":{\"$\":0},\"iyo\":{\"$\":0},\"kamijima\":{\"$\":0},\"kihoku\":{\"$\":0},\"kumakogen\":{\"$\":0},\"masaki\":{\"$\":0},\"matsuno\":{\"$\":0},\"matsuyama\":{\"$\":0},\"namikata\":{\"$\":0},\"niihama\":{\"$\":0},\"ozu\":{\"$\":0},\"saijo\":{\"$\":0},\"seiyo\":{\"$\":0},\"shikokuchuo\":{\"$\":0},\"tobe\":{\"$\":0},\"toon\":{\"$\":0},\"uchiko\":{\"$\":0},\"uwajima\":{\"$\":0},\"yawatahama\":{\"$\":0}},\"fukui\":{\"$\":0,\"echizen\":{\"$\":0},\"eiheiji\":{\"$\":0},\"fukui\":{\"$\":0},\"ikeda\":{\"$\":0},\"katsuyama\":{\"$\":0},\"mihama\":{\"$\":0},\"minamiechizen\":{\"$\":0},\"obama\":{\"$\":0},\"ohi\":{\"$\":0},\"ono\":{\"$\":0},\"sabae\":{\"$\":0},\"sakai\":{\"$\":0},\"takahama\":{\"$\":0},\"tsuruga\":{\"$\":0},\"wakasa\":{\"$\":0}},\"fukuoka\":{\"$\":0,\"ashiya\":{\"$\":0},\"buzen\":{\"$\":0},\"chikugo\":{\"$\":0},\"chikuho\":{\"$\":0},\"chikujo\":{\"$\":0},\"chikushino\":{\"$\":0},\"chikuzen\":{\"$\":0},\"chuo\":{\"$\":0},\"dazaifu\":{\"$\":0},\"fukuchi\":{\"$\":0},\"hakata\":{\"$\":0},\"higashi\":{\"$\":0},\"hirokawa\":{\"$\":0},\"hisayama\":{\"$\":0},\"iizuka\":{\"$\":0},\"inatsuki\":{\"$\":0},\"kaho\":{\"$\":0},\"kasuga\":{\"$\":0},\"kasuya\":{\"$\":0},\"kawara\":{\"$\":0},\"keisen\":{\"$\":0},\"koga\":{\"$\":0},\"kurate\":{\"$\":0},\"kurogi\":{\"$\":0},\"kurume\":{\"$\":0},\"minami\":{\"$\":0},\"miyako\":{\"$\":0},\"miyama\":{\"$\":0},\"miyawaka\":{\"$\":0},\"mizumaki\":{\"$\":0},\"munakata\":{\"$\":0},\"nakagawa\":{\"$\":0},\"nakama\":{\"$\":0},\"nishi\":{\"$\":0},\"nogata\":{\"$\":0},\"ogori\":{\"$\":0},\"okagaki\":{\"$\":0},\"okawa\":{\"$\":0},\"oki\":{\"$\":0},\"omuta\":{\"$\":0},\"onga\":{\"$\":0},\"onojo\":{\"$\":0},\"oto\":{\"$\":0},\"saigawa\":{\"$\":0},\"sasaguri\":{\"$\":0},\"shingu\":{\"$\":0},\"shinyoshitomi\":{\"$\":0},\"shonai\":{\"$\":0},\"soeda\":{\"$\":0},\"sue\":{\"$\":0},\"tachiarai\":{\"$\":0},\"tagawa\":{\"$\":0},\"takata\":{\"$\":0},\"toho\":{\"$\":0},\"toyotsu\":{\"$\":0},\"tsuiki\":{\"$\":0},\"ukiha\":{\"$\":0},\"umi\":{\"$\":0},\"usui\":{\"$\":0},\"yamada\":{\"$\":0},\"yame\":{\"$\":0},\"yanagawa\":{\"$\":0},\"yukuhashi\":{\"$\":0}},\"fukushima\":{\"$\":0,\"aizubange\":{\"$\":0},\"aizumisato\":{\"$\":0},\"aizuwakamatsu\":{\"$\":0},\"asakawa\":{\"$\":0},\"bandai\":{\"$\":0},\"date\":{\"$\":0},\"fukushima\":{\"$\":0},\"furudono\":{\"$\":0},\"futaba\":{\"$\":0},\"hanawa\":{\"$\":0},\"higashi\":{\"$\":0},\"hirata\":{\"$\":0},\"hirono\":{\"$\":0},\"iitate\":{\"$\":0},\"inawashiro\":{\"$\":0},\"ishikawa\":{\"$\":0},\"iwaki\":{\"$\":0},\"izumizaki\":{\"$\":0},\"kagamiishi\":{\"$\":0},\"kaneyama\":{\"$\":0},\"kawamata\":{\"$\":0},\"kitakata\":{\"$\":0},\"kitashiobara\":{\"$\":0},\"koori\":{\"$\":0},\"koriyama\":{\"$\":0},\"kunimi\":{\"$\":0},\"miharu\":{\"$\":0},\"mishima\":{\"$\":0},\"namie\":{\"$\":0},\"nango\":{\"$\":0},\"nishiaizu\":{\"$\":0},\"nishigo\":{\"$\":0},\"okuma\":{\"$\":0},\"omotego\":{\"$\":0},\"ono\":{\"$\":0},\"otama\":{\"$\":0},\"samegawa\":{\"$\":0},\"shimogo\":{\"$\":0},\"shirakawa\":{\"$\":0},\"showa\":{\"$\":0},\"soma\":{\"$\":0},\"sukagawa\":{\"$\":0},\"taishin\":{\"$\":0},\"tamakawa\":{\"$\":0},\"tanagura\":{\"$\":0},\"tenei\":{\"$\":0},\"yabuki\":{\"$\":0},\"yamato\":{\"$\":0},\"yamatsuri\":{\"$\":0},\"yanaizu\":{\"$\":0},\"yugawa\":{\"$\":0}},\"gifu\":{\"$\":0,\"anpachi\":{\"$\":0},\"ena\":{\"$\":0},\"gifu\":{\"$\":0},\"ginan\":{\"$\":0},\"godo\":{\"$\":0},\"gujo\":{\"$\":0},\"hashima\":{\"$\":0},\"hichiso\":{\"$\":0},\"hida\":{\"$\":0},\"higashishirakawa\":{\"$\":0},\"ibigawa\":{\"$\":0},\"ikeda\":{\"$\":0},\"kakamigahara\":{\"$\":0},\"kani\":{\"$\":0},\"kasahara\":{\"$\":0},\"kasamatsu\":{\"$\":0},\"kawaue\":{\"$\":0},\"kitagata\":{\"$\":0},\"mino\":{\"$\":0},\"minokamo\":{\"$\":0},\"mitake\":{\"$\":0},\"mizunami\":{\"$\":0},\"motosu\":{\"$\":0},\"nakatsugawa\":{\"$\":0},\"ogaki\":{\"$\":0},\"sakahogi\":{\"$\":0},\"seki\":{\"$\":0},\"sekigahara\":{\"$\":0},\"shirakawa\":{\"$\":0},\"tajimi\":{\"$\":0},\"takayama\":{\"$\":0},\"tarui\":{\"$\":0},\"toki\":{\"$\":0},\"tomika\":{\"$\":0},\"wanouchi\":{\"$\":0},\"yamagata\":{\"$\":0},\"yaotsu\":{\"$\":0},\"yoro\":{\"$\":0}},\"gunma\":{\"$\":0,\"annaka\":{\"$\":0},\"chiyoda\":{\"$\":0},\"fujioka\":{\"$\":0},\"higashiagatsuma\":{\"$\":0},\"isesaki\":{\"$\":0},\"itakura\":{\"$\":0},\"kanna\":{\"$\":0},\"kanra\":{\"$\":0},\"katashina\":{\"$\":0},\"kawaba\":{\"$\":0},\"kiryu\":{\"$\":0},\"kusatsu\":{\"$\":0},\"maebashi\":{\"$\":0},\"meiwa\":{\"$\":0},\"midori\":{\"$\":0},\"minakami\":{\"$\":0},\"naganohara\":{\"$\":0},\"nakanojo\":{\"$\":0},\"nanmoku\":{\"$\":0},\"numata\":{\"$\":0},\"oizumi\":{\"$\":0},\"ora\":{\"$\":0},\"ota\":{\"$\":0},\"shibukawa\":{\"$\":0},\"shimonita\":{\"$\":0},\"shinto\":{\"$\":0},\"showa\":{\"$\":0},\"takasaki\":{\"$\":0},\"takayama\":{\"$\":0},\"tamamura\":{\"$\":0},\"tatebayashi\":{\"$\":0},\"tomioka\":{\"$\":0},\"tsukiyono\":{\"$\":0},\"tsumagoi\":{\"$\":0},\"ueno\":{\"$\":0},\"yoshioka\":{\"$\":0}},\"hiroshima\":{\"$\":0,\"asaminami\":{\"$\":0},\"daiwa\":{\"$\":0},\"etajima\":{\"$\":0},\"fuchu\":{\"$\":0},\"fukuyama\":{\"$\":0},\"hatsukaichi\":{\"$\":0},\"higashihiroshima\":{\"$\":0},\"hongo\":{\"$\":0},\"jinsekikogen\":{\"$\":0},\"kaita\":{\"$\":0},\"kui\":{\"$\":0},\"kumano\":{\"$\":0},\"kure\":{\"$\":0},\"mihara\":{\"$\":0},\"miyoshi\":{\"$\":0},\"naka\":{\"$\":0},\"onomichi\":{\"$\":0},\"osakikamijima\":{\"$\":0},\"otake\":{\"$\":0},\"saka\":{\"$\":0},\"sera\":{\"$\":0},\"seranishi\":{\"$\":0},\"shinichi\":{\"$\":0},\"shobara\":{\"$\":0},\"takehara\":{\"$\":0}},\"hokkaido\":{\"$\":0,\"abashiri\":{\"$\":0},\"abira\":{\"$\":0},\"aibetsu\":{\"$\":0},\"akabira\":{\"$\":0},\"akkeshi\":{\"$\":0},\"asahikawa\":{\"$\":0},\"ashibetsu\":{\"$\":0},\"ashoro\":{\"$\":0},\"assabu\":{\"$\":0},\"atsuma\":{\"$\":0},\"bibai\":{\"$\":0},\"biei\":{\"$\":0},\"bifuka\":{\"$\":0},\"bihoro\":{\"$\":0},\"biratori\":{\"$\":0},\"chippubetsu\":{\"$\":0},\"chitose\":{\"$\":0},\"date\":{\"$\":0},\"ebetsu\":{\"$\":0},\"embetsu\":{\"$\":0},\"eniwa\":{\"$\":0},\"erimo\":{\"$\":0},\"esan\":{\"$\":0},\"esashi\":{\"$\":0},\"fukagawa\":{\"$\":0},\"fukushima\":{\"$\":0},\"furano\":{\"$\":0},\"furubira\":{\"$\":0},\"haboro\":{\"$\":0},\"hakodate\":{\"$\":0},\"hamatonbetsu\":{\"$\":0},\"hidaka\":{\"$\":0},\"higashikagura\":{\"$\":0},\"higashikawa\":{\"$\":0},\"hiroo\":{\"$\":0},\"hokuryu\":{\"$\":0},\"hokuto\":{\"$\":0},\"honbetsu\":{\"$\":0},\"horokanai\":{\"$\":0},\"horonobe\":{\"$\":0},\"ikeda\":{\"$\":0},\"imakane\":{\"$\":0},\"ishikari\":{\"$\":0},\"iwamizawa\":{\"$\":0},\"iwanai\":{\"$\":0},\"kamifurano\":{\"$\":0},\"kamikawa\":{\"$\":0},\"kamishihoro\":{\"$\":0},\"kamisunagawa\":{\"$\":0},\"kamoenai\":{\"$\":0},\"kayabe\":{\"$\":0},\"kembuchi\":{\"$\":0},\"kikonai\":{\"$\":0},\"kimobetsu\":{\"$\":0},\"kitahiroshima\":{\"$\":0},\"kitami\":{\"$\":0},\"kiyosato\":{\"$\":0},\"koshimizu\":{\"$\":0},\"kunneppu\":{\"$\":0},\"kuriyama\":{\"$\":0},\"kuromatsunai\":{\"$\":0},\"kushiro\":{\"$\":0},\"kutchan\":{\"$\":0},\"kyowa\":{\"$\":0},\"mashike\":{\"$\":0},\"matsumae\":{\"$\":0},\"mikasa\":{\"$\":0},\"minamifurano\":{\"$\":0},\"mombetsu\":{\"$\":0},\"moseushi\":{\"$\":0},\"mukawa\":{\"$\":0},\"muroran\":{\"$\":0},\"naie\":{\"$\":0},\"nakagawa\":{\"$\":0},\"nakasatsunai\":{\"$\":0},\"nakatombetsu\":{\"$\":0},\"nanae\":{\"$\":0},\"nanporo\":{\"$\":0},\"nayoro\":{\"$\":0},\"nemuro\":{\"$\":0},\"niikappu\":{\"$\":0},\"niki\":{\"$\":0},\"nishiokoppe\":{\"$\":0},\"noboribetsu\":{\"$\":0},\"numata\":{\"$\":0},\"obihiro\":{\"$\":0},\"obira\":{\"$\":0},\"oketo\":{\"$\":0},\"okoppe\":{\"$\":0},\"otaru\":{\"$\":0},\"otobe\":{\"$\":0},\"otofuke\":{\"$\":0},\"otoineppu\":{\"$\":0},\"oumu\":{\"$\":0},\"ozora\":{\"$\":0},\"pippu\":{\"$\":0},\"rankoshi\":{\"$\":0},\"rebun\":{\"$\":0},\"rikubetsu\":{\"$\":0},\"rishiri\":{\"$\":0},\"rishirifuji\":{\"$\":0},\"saroma\":{\"$\":0},\"sarufutsu\":{\"$\":0},\"shakotan\":{\"$\":0},\"shari\":{\"$\":0},\"shibecha\":{\"$\":0},\"shibetsu\":{\"$\":0},\"shikabe\":{\"$\":0},\"shikaoi\":{\"$\":0},\"shimamaki\":{\"$\":0},\"shimizu\":{\"$\":0},\"shimokawa\":{\"$\":0},\"shinshinotsu\":{\"$\":0},\"shintoku\":{\"$\":0},\"shiranuka\":{\"$\":0},\"shiraoi\":{\"$\":0},\"shiriuchi\":{\"$\":0},\"sobetsu\":{\"$\":0},\"sunagawa\":{\"$\":0},\"taiki\":{\"$\":0},\"takasu\":{\"$\":0},\"takikawa\":{\"$\":0},\"takinoue\":{\"$\":0},\"teshikaga\":{\"$\":0},\"tobetsu\":{\"$\":0},\"tohma\":{\"$\":0},\"tomakomai\":{\"$\":0},\"tomari\":{\"$\":0},\"toya\":{\"$\":0},\"toyako\":{\"$\":0},\"toyotomi\":{\"$\":0},\"toyoura\":{\"$\":0},\"tsubetsu\":{\"$\":0},\"tsukigata\":{\"$\":0},\"urakawa\":{\"$\":0},\"urausu\":{\"$\":0},\"uryu\":{\"$\":0},\"utashinai\":{\"$\":0},\"wakkanai\":{\"$\":0},\"wassamu\":{\"$\":0},\"yakumo\":{\"$\":0},\"yoichi\":{\"$\":0}},\"hyogo\":{\"$\":0,\"aioi\":{\"$\":0},\"akashi\":{\"$\":0},\"ako\":{\"$\":0},\"amagasaki\":{\"$\":0},\"aogaki\":{\"$\":0},\"asago\":{\"$\":0},\"ashiya\":{\"$\":0},\"awaji\":{\"$\":0},\"fukusaki\":{\"$\":0},\"goshiki\":{\"$\":0},\"harima\":{\"$\":0},\"himeji\":{\"$\":0},\"ichikawa\":{\"$\":0},\"inagawa\":{\"$\":0},\"itami\":{\"$\":0},\"kakogawa\":{\"$\":0},\"kamigori\":{\"$\":0},\"kamikawa\":{\"$\":0},\"kasai\":{\"$\":0},\"kasuga\":{\"$\":0},\"kawanishi\":{\"$\":0},\"miki\":{\"$\":0},\"minamiawaji\":{\"$\":0},\"nishinomiya\":{\"$\":0},\"nishiwaki\":{\"$\":0},\"ono\":{\"$\":0},\"sanda\":{\"$\":0},\"sannan\":{\"$\":0},\"sasayama\":{\"$\":0},\"sayo\":{\"$\":0},\"shingu\":{\"$\":0},\"shinonsen\":{\"$\":0},\"shiso\":{\"$\":0},\"sumoto\":{\"$\":0},\"taishi\":{\"$\":0},\"taka\":{\"$\":0},\"takarazuka\":{\"$\":0},\"takasago\":{\"$\":0},\"takino\":{\"$\":0},\"tamba\":{\"$\":0},\"tatsuno\":{\"$\":0},\"toyooka\":{\"$\":0},\"yabu\":{\"$\":0},\"yashiro\":{\"$\":0},\"yoka\":{\"$\":0},\"yokawa\":{\"$\":0}},\"ibaraki\":{\"$\":0,\"ami\":{\"$\":0},\"asahi\":{\"$\":0},\"bando\":{\"$\":0},\"chikusei\":{\"$\":0},\"daigo\":{\"$\":0},\"fujishiro\":{\"$\":0},\"hitachi\":{\"$\":0},\"hitachinaka\":{\"$\":0},\"hitachiomiya\":{\"$\":0},\"hitachiota\":{\"$\":0},\"ibaraki\":{\"$\":0},\"ina\":{\"$\":0},\"inashiki\":{\"$\":0},\"itako\":{\"$\":0},\"iwama\":{\"$\":0},\"joso\":{\"$\":0},\"kamisu\":{\"$\":0},\"kasama\":{\"$\":0},\"kashima\":{\"$\":0},\"kasumigaura\":{\"$\":0},\"koga\":{\"$\":0},\"miho\":{\"$\":0},\"mito\":{\"$\":0},\"moriya\":{\"$\":0},\"naka\":{\"$\":0},\"namegata\":{\"$\":0},\"oarai\":{\"$\":0},\"ogawa\":{\"$\":0},\"omitama\":{\"$\":0},\"ryugasaki\":{\"$\":0},\"sakai\":{\"$\":0},\"sakuragawa\":{\"$\":0},\"shimodate\":{\"$\":0},\"shimotsuma\":{\"$\":0},\"shirosato\":{\"$\":0},\"sowa\":{\"$\":0},\"suifu\":{\"$\":0},\"takahagi\":{\"$\":0},\"tamatsukuri\":{\"$\":0},\"tokai\":{\"$\":0},\"tomobe\":{\"$\":0},\"tone\":{\"$\":0},\"toride\":{\"$\":0},\"tsuchiura\":{\"$\":0},\"tsukuba\":{\"$\":0},\"uchihara\":{\"$\":0},\"ushiku\":{\"$\":0},\"yachiyo\":{\"$\":0},\"yamagata\":{\"$\":0},\"yawara\":{\"$\":0},\"yuki\":{\"$\":0}},\"ishikawa\":{\"$\":0,\"anamizu\":{\"$\":0},\"hakui\":{\"$\":0},\"hakusan\":{\"$\":0},\"kaga\":{\"$\":0},\"kahoku\":{\"$\":0},\"kanazawa\":{\"$\":0},\"kawakita\":{\"$\":0},\"komatsu\":{\"$\":0},\"nakanoto\":{\"$\":0},\"nanao\":{\"$\":0},\"nomi\":{\"$\":0},\"nonoichi\":{\"$\":0},\"noto\":{\"$\":0},\"shika\":{\"$\":0},\"suzu\":{\"$\":0},\"tsubata\":{\"$\":0},\"tsurugi\":{\"$\":0},\"uchinada\":{\"$\":0},\"wajima\":{\"$\":0}},\"iwate\":{\"$\":0,\"fudai\":{\"$\":0},\"fujisawa\":{\"$\":0},\"hanamaki\":{\"$\":0},\"hiraizumi\":{\"$\":0},\"hirono\":{\"$\":0},\"ichinohe\":{\"$\":0},\"ichinoseki\":{\"$\":0},\"iwaizumi\":{\"$\":0},\"iwate\":{\"$\":0},\"joboji\":{\"$\":0},\"kamaishi\":{\"$\":0},\"kanegasaki\":{\"$\":0},\"karumai\":{\"$\":0},\"kawai\":{\"$\":0},\"kitakami\":{\"$\":0},\"kuji\":{\"$\":0},\"kunohe\":{\"$\":0},\"kuzumaki\":{\"$\":0},\"miyako\":{\"$\":0},\"mizusawa\":{\"$\":0},\"morioka\":{\"$\":0},\"ninohe\":{\"$\":0},\"noda\":{\"$\":0},\"ofunato\":{\"$\":0},\"oshu\":{\"$\":0},\"otsuchi\":{\"$\":0},\"rikuzentakata\":{\"$\":0},\"shiwa\":{\"$\":0},\"shizukuishi\":{\"$\":0},\"sumita\":{\"$\":0},\"tanohata\":{\"$\":0},\"tono\":{\"$\":0},\"yahaba\":{\"$\":0},\"yamada\":{\"$\":0}},\"kagawa\":{\"$\":0,\"ayagawa\":{\"$\":0},\"higashikagawa\":{\"$\":0},\"kanonji\":{\"$\":0},\"kotohira\":{\"$\":0},\"manno\":{\"$\":0},\"marugame\":{\"$\":0},\"mitoyo\":{\"$\":0},\"naoshima\":{\"$\":0},\"sanuki\":{\"$\":0},\"tadotsu\":{\"$\":0},\"takamatsu\":{\"$\":0},\"tonosho\":{\"$\":0},\"uchinomi\":{\"$\":0},\"utazu\":{\"$\":0},\"zentsuji\":{\"$\":0}},\"kagoshima\":{\"$\":0,\"akune\":{\"$\":0},\"amami\":{\"$\":0},\"hioki\":{\"$\":0},\"isa\":{\"$\":0},\"isen\":{\"$\":0},\"izumi\":{\"$\":0},\"kagoshima\":{\"$\":0},\"kanoya\":{\"$\":0},\"kawanabe\":{\"$\":0},\"kinko\":{\"$\":0},\"kouyama\":{\"$\":0},\"makurazaki\":{\"$\":0},\"matsumoto\":{\"$\":0},\"minamitane\":{\"$\":0},\"nakatane\":{\"$\":0},\"nishinoomote\":{\"$\":0},\"satsumasendai\":{\"$\":0},\"soo\":{\"$\":0},\"tarumizu\":{\"$\":0},\"yusui\":{\"$\":0}},\"kanagawa\":{\"$\":0,\"aikawa\":{\"$\":0},\"atsugi\":{\"$\":0},\"ayase\":{\"$\":0},\"chigasaki\":{\"$\":0},\"ebina\":{\"$\":0},\"fujisawa\":{\"$\":0},\"hadano\":{\"$\":0},\"hakone\":{\"$\":0},\"hiratsuka\":{\"$\":0},\"isehara\":{\"$\":0},\"kaisei\":{\"$\":0},\"kamakura\":{\"$\":0},\"kiyokawa\":{\"$\":0},\"matsuda\":{\"$\":0},\"minamiashigara\":{\"$\":0},\"miura\":{\"$\":0},\"nakai\":{\"$\":0},\"ninomiya\":{\"$\":0},\"odawara\":{\"$\":0},\"oi\":{\"$\":0},\"oiso\":{\"$\":0},\"sagamihara\":{\"$\":0},\"samukawa\":{\"$\":0},\"tsukui\":{\"$\":0},\"yamakita\":{\"$\":0},\"yamato\":{\"$\":0},\"yokosuka\":{\"$\":0},\"yugawara\":{\"$\":0},\"zama\":{\"$\":0},\"zushi\":{\"$\":0}},\"kochi\":{\"$\":0,\"aki\":{\"$\":0},\"geisei\":{\"$\":0},\"hidaka\":{\"$\":0},\"higashitsuno\":{\"$\":0},\"ino\":{\"$\":0},\"kagami\":{\"$\":0},\"kami\":{\"$\":0},\"kitagawa\":{\"$\":0},\"kochi\":{\"$\":0},\"mihara\":{\"$\":0},\"motoyama\":{\"$\":0},\"muroto\":{\"$\":0},\"nahari\":{\"$\":0},\"nakamura\":{\"$\":0},\"nankoku\":{\"$\":0},\"nishitosa\":{\"$\":0},\"niyodogawa\":{\"$\":0},\"ochi\":{\"$\":0},\"okawa\":{\"$\":0},\"otoyo\":{\"$\":0},\"otsuki\":{\"$\":0},\"sakawa\":{\"$\":0},\"sukumo\":{\"$\":0},\"susaki\":{\"$\":0},\"tosa\":{\"$\":0},\"tosashimizu\":{\"$\":0},\"toyo\":{\"$\":0},\"tsuno\":{\"$\":0},\"umaji\":{\"$\":0},\"yasuda\":{\"$\":0},\"yusuhara\":{\"$\":0}},\"kumamoto\":{\"$\":0,\"amakusa\":{\"$\":0},\"arao\":{\"$\":0},\"aso\":{\"$\":0},\"choyo\":{\"$\":0},\"gyokuto\":{\"$\":0},\"kamiamakusa\":{\"$\":0},\"kikuchi\":{\"$\":0},\"kumamoto\":{\"$\":0},\"mashiki\":{\"$\":0},\"mifune\":{\"$\":0},\"minamata\":{\"$\":0},\"minamioguni\":{\"$\":0},\"nagasu\":{\"$\":0},\"nishihara\":{\"$\":0},\"oguni\":{\"$\":0},\"ozu\":{\"$\":0},\"sumoto\":{\"$\":0},\"takamori\":{\"$\":0},\"uki\":{\"$\":0},\"uto\":{\"$\":0},\"yamaga\":{\"$\":0},\"yamato\":{\"$\":0},\"yatsushiro\":{\"$\":0}},\"kyoto\":{\"$\":0,\"ayabe\":{\"$\":0},\"fukuchiyama\":{\"$\":0},\"higashiyama\":{\"$\":0},\"ide\":{\"$\":0},\"ine\":{\"$\":0},\"joyo\":{\"$\":0},\"kameoka\":{\"$\":0},\"kamo\":{\"$\":0},\"kita\":{\"$\":0},\"kizu\":{\"$\":0},\"kumiyama\":{\"$\":0},\"kyotamba\":{\"$\":0},\"kyotanabe\":{\"$\":0},\"kyotango\":{\"$\":0},\"maizuru\":{\"$\":0},\"minami\":{\"$\":0},\"minamiyamashiro\":{\"$\":0},\"miyazu\":{\"$\":0},\"muko\":{\"$\":0},\"nagaokakyo\":{\"$\":0},\"nakagyo\":{\"$\":0},\"nantan\":{\"$\":0},\"oyamazaki\":{\"$\":0},\"sakyo\":{\"$\":0},\"seika\":{\"$\":0},\"tanabe\":{\"$\":0},\"uji\":{\"$\":0},\"ujitawara\":{\"$\":0},\"wazuka\":{\"$\":0},\"yamashina\":{\"$\":0},\"yawata\":{\"$\":0}},\"mie\":{\"$\":0,\"asahi\":{\"$\":0},\"inabe\":{\"$\":0},\"ise\":{\"$\":0},\"kameyama\":{\"$\":0},\"kawagoe\":{\"$\":0},\"kiho\":{\"$\":0},\"kisosaki\":{\"$\":0},\"kiwa\":{\"$\":0},\"komono\":{\"$\":0},\"kumano\":{\"$\":0},\"kuwana\":{\"$\":0},\"matsusaka\":{\"$\":0},\"meiwa\":{\"$\":0},\"mihama\":{\"$\":0},\"minamiise\":{\"$\":0},\"misugi\":{\"$\":0},\"miyama\":{\"$\":0},\"nabari\":{\"$\":0},\"shima\":{\"$\":0},\"suzuka\":{\"$\":0},\"tado\":{\"$\":0},\"taiki\":{\"$\":0},\"taki\":{\"$\":0},\"tamaki\":{\"$\":0},\"toba\":{\"$\":0},\"tsu\":{\"$\":0},\"udono\":{\"$\":0},\"ureshino\":{\"$\":0},\"watarai\":{\"$\":0},\"yokkaichi\":{\"$\":0}},\"miyagi\":{\"$\":0,\"furukawa\":{\"$\":0},\"higashimatsushima\":{\"$\":0},\"ishinomaki\":{\"$\":0},\"iwanuma\":{\"$\":0},\"kakuda\":{\"$\":0},\"kami\":{\"$\":0},\"kawasaki\":{\"$\":0},\"marumori\":{\"$\":0},\"matsushima\":{\"$\":0},\"minamisanriku\":{\"$\":0},\"misato\":{\"$\":0},\"murata\":{\"$\":0},\"natori\":{\"$\":0},\"ogawara\":{\"$\":0},\"ohira\":{\"$\":0},\"onagawa\":{\"$\":0},\"osaki\":{\"$\":0},\"rifu\":{\"$\":0},\"semine\":{\"$\":0},\"shibata\":{\"$\":0},\"shichikashuku\":{\"$\":0},\"shikama\":{\"$\":0},\"shiogama\":{\"$\":0},\"shiroishi\":{\"$\":0},\"tagajo\":{\"$\":0},\"taiwa\":{\"$\":0},\"tome\":{\"$\":0},\"tomiya\":{\"$\":0},\"wakuya\":{\"$\":0},\"watari\":{\"$\":0},\"yamamoto\":{\"$\":0},\"zao\":{\"$\":0}},\"miyazaki\":{\"$\":0,\"aya\":{\"$\":0},\"ebino\":{\"$\":0},\"gokase\":{\"$\":0},\"hyuga\":{\"$\":0},\"kadogawa\":{\"$\":0},\"kawaminami\":{\"$\":0},\"kijo\":{\"$\":0},\"kitagawa\":{\"$\":0},\"kitakata\":{\"$\":0},\"kitaura\":{\"$\":0},\"kobayashi\":{\"$\":0},\"kunitomi\":{\"$\":0},\"kushima\":{\"$\":0},\"mimata\":{\"$\":0},\"miyakonojo\":{\"$\":0},\"miyazaki\":{\"$\":0},\"morotsuka\":{\"$\":0},\"nichinan\":{\"$\":0},\"nishimera\":{\"$\":0},\"nobeoka\":{\"$\":0},\"saito\":{\"$\":0},\"shiiba\":{\"$\":0},\"shintomi\":{\"$\":0},\"takaharu\":{\"$\":0},\"takanabe\":{\"$\":0},\"takazaki\":{\"$\":0},\"tsuno\":{\"$\":0}},\"nagano\":{\"$\":0,\"achi\":{\"$\":0},\"agematsu\":{\"$\":0},\"anan\":{\"$\":0},\"aoki\":{\"$\":0},\"asahi\":{\"$\":0},\"azumino\":{\"$\":0},\"chikuhoku\":{\"$\":0},\"chikuma\":{\"$\":0},\"chino\":{\"$\":0},\"fujimi\":{\"$\":0},\"hakuba\":{\"$\":0},\"hara\":{\"$\":0},\"hiraya\":{\"$\":0},\"iida\":{\"$\":0},\"iijima\":{\"$\":0},\"iiyama\":{\"$\":0},\"iizuna\":{\"$\":0},\"ikeda\":{\"$\":0},\"ikusaka\":{\"$\":0},\"ina\":{\"$\":0},\"karuizawa\":{\"$\":0},\"kawakami\":{\"$\":0},\"kiso\":{\"$\":0},\"kisofukushima\":{\"$\":0},\"kitaaiki\":{\"$\":0},\"komagane\":{\"$\":0},\"komoro\":{\"$\":0},\"matsukawa\":{\"$\":0},\"matsumoto\":{\"$\":0},\"miasa\":{\"$\":0},\"minamiaiki\":{\"$\":0},\"minamimaki\":{\"$\":0},\"minamiminowa\":{\"$\":0},\"minowa\":{\"$\":0},\"miyada\":{\"$\":0},\"miyota\":{\"$\":0},\"mochizuki\":{\"$\":0},\"nagano\":{\"$\":0},\"nagawa\":{\"$\":0},\"nagiso\":{\"$\":0},\"nakagawa\":{\"$\":0},\"nakano\":{\"$\":0},\"nozawaonsen\":{\"$\":0},\"obuse\":{\"$\":0},\"ogawa\":{\"$\":0},\"okaya\":{\"$\":0},\"omachi\":{\"$\":0},\"omi\":{\"$\":0},\"ookuwa\":{\"$\":0},\"ooshika\":{\"$\":0},\"otaki\":{\"$\":0},\"otari\":{\"$\":0},\"sakae\":{\"$\":0},\"sakaki\":{\"$\":0},\"saku\":{\"$\":0},\"sakuho\":{\"$\":0},\"shimosuwa\":{\"$\":0},\"shinanomachi\":{\"$\":0},\"shiojiri\":{\"$\":0},\"suwa\":{\"$\":0},\"suzaka\":{\"$\":0},\"takagi\":{\"$\":0},\"takamori\":{\"$\":0},\"takayama\":{\"$\":0},\"tateshina\":{\"$\":0},\"tatsuno\":{\"$\":0},\"togakushi\":{\"$\":0},\"togura\":{\"$\":0},\"tomi\":{\"$\":0},\"ueda\":{\"$\":0},\"wada\":{\"$\":0},\"yamagata\":{\"$\":0},\"yamanouchi\":{\"$\":0},\"yasaka\":{\"$\":0},\"yasuoka\":{\"$\":0}},\"nagasaki\":{\"$\":0,\"chijiwa\":{\"$\":0},\"futsu\":{\"$\":0},\"goto\":{\"$\":0},\"hasami\":{\"$\":0},\"hirado\":{\"$\":0},\"iki\":{\"$\":0},\"isahaya\":{\"$\":0},\"kawatana\":{\"$\":0},\"kuchinotsu\":{\"$\":0},\"matsuura\":{\"$\":0},\"nagasaki\":{\"$\":0},\"obama\":{\"$\":0},\"omura\":{\"$\":0},\"oseto\":{\"$\":0},\"saikai\":{\"$\":0},\"sasebo\":{\"$\":0},\"seihi\":{\"$\":0},\"shimabara\":{\"$\":0},\"shinkamigoto\":{\"$\":0},\"togitsu\":{\"$\":0},\"tsushima\":{\"$\":0},\"unzen\":{\"$\":0}},\"nara\":{\"$\":0,\"ando\":{\"$\":0},\"gose\":{\"$\":0},\"heguri\":{\"$\":0},\"higashiyoshino\":{\"$\":0},\"ikaruga\":{\"$\":0},\"ikoma\":{\"$\":0},\"kamikitayama\":{\"$\":0},\"kanmaki\":{\"$\":0},\"kashiba\":{\"$\":0},\"kashihara\":{\"$\":0},\"katsuragi\":{\"$\":0},\"kawai\":{\"$\":0},\"kawakami\":{\"$\":0},\"kawanishi\":{\"$\":0},\"koryo\":{\"$\":0},\"kurotaki\":{\"$\":0},\"mitsue\":{\"$\":0},\"miyake\":{\"$\":0},\"nara\":{\"$\":0},\"nosegawa\":{\"$\":0},\"oji\":{\"$\":0},\"ouda\":{\"$\":0},\"oyodo\":{\"$\":0},\"sakurai\":{\"$\":0},\"sango\":{\"$\":0},\"shimoichi\":{\"$\":0},\"shimokitayama\":{\"$\":0},\"shinjo\":{\"$\":0},\"soni\":{\"$\":0},\"takatori\":{\"$\":0},\"tawaramoto\":{\"$\":0},\"tenkawa\":{\"$\":0},\"tenri\":{\"$\":0},\"uda\":{\"$\":0},\"yamatokoriyama\":{\"$\":0},\"yamatotakada\":{\"$\":0},\"yamazoe\":{\"$\":0},\"yoshino\":{\"$\":0}},\"niigata\":{\"$\":0,\"aga\":{\"$\":0},\"agano\":{\"$\":0},\"gosen\":{\"$\":0},\"itoigawa\":{\"$\":0},\"izumozaki\":{\"$\":0},\"joetsu\":{\"$\":0},\"kamo\":{\"$\":0},\"kariwa\":{\"$\":0},\"kashiwazaki\":{\"$\":0},\"minamiuonuma\":{\"$\":0},\"mitsuke\":{\"$\":0},\"muika\":{\"$\":0},\"murakami\":{\"$\":0},\"myoko\":{\"$\":0},\"nagaoka\":{\"$\":0},\"niigata\":{\"$\":0},\"ojiya\":{\"$\":0},\"omi\":{\"$\":0},\"sado\":{\"$\":0},\"sanjo\":{\"$\":0},\"seiro\":{\"$\":0},\"seirou\":{\"$\":0},\"sekikawa\":{\"$\":0},\"shibata\":{\"$\":0},\"tagami\":{\"$\":0},\"tainai\":{\"$\":0},\"tochio\":{\"$\":0},\"tokamachi\":{\"$\":0},\"tsubame\":{\"$\":0},\"tsunan\":{\"$\":0},\"uonuma\":{\"$\":0},\"yahiko\":{\"$\":0},\"yoita\":{\"$\":0},\"yuzawa\":{\"$\":0}},\"oita\":{\"$\":0,\"beppu\":{\"$\":0},\"bungoono\":{\"$\":0},\"bungotakada\":{\"$\":0},\"hasama\":{\"$\":0},\"hiji\":{\"$\":0},\"himeshima\":{\"$\":0},\"hita\":{\"$\":0},\"kamitsue\":{\"$\":0},\"kokonoe\":{\"$\":0},\"kuju\":{\"$\":0},\"kunisaki\":{\"$\":0},\"kusu\":{\"$\":0},\"oita\":{\"$\":0},\"saiki\":{\"$\":0},\"taketa\":{\"$\":0},\"tsukumi\":{\"$\":0},\"usa\":{\"$\":0},\"usuki\":{\"$\":0},\"yufu\":{\"$\":0}},\"okayama\":{\"$\":0,\"akaiwa\":{\"$\":0},\"asakuchi\":{\"$\":0},\"bizen\":{\"$\":0},\"hayashima\":{\"$\":0},\"ibara\":{\"$\":0},\"kagamino\":{\"$\":0},\"kasaoka\":{\"$\":0},\"kibichuo\":{\"$\":0},\"kumenan\":{\"$\":0},\"kurashiki\":{\"$\":0},\"maniwa\":{\"$\":0},\"misaki\":{\"$\":0},\"nagi\":{\"$\":0},\"niimi\":{\"$\":0},\"nishiawakura\":{\"$\":0},\"okayama\":{\"$\":0},\"satosho\":{\"$\":0},\"setouchi\":{\"$\":0},\"shinjo\":{\"$\":0},\"shoo\":{\"$\":0},\"soja\":{\"$\":0},\"takahashi\":{\"$\":0},\"tamano\":{\"$\":0},\"tsuyama\":{\"$\":0},\"wake\":{\"$\":0},\"yakage\":{\"$\":0}},\"okinawa\":{\"$\":0,\"aguni\":{\"$\":0},\"ginowan\":{\"$\":0},\"ginoza\":{\"$\":0},\"gushikami\":{\"$\":0},\"haebaru\":{\"$\":0},\"higashi\":{\"$\":0},\"hirara\":{\"$\":0},\"iheya\":{\"$\":0},\"ishigaki\":{\"$\":0},\"ishikawa\":{\"$\":0},\"itoman\":{\"$\":0},\"izena\":{\"$\":0},\"kadena\":{\"$\":0},\"kin\":{\"$\":0},\"kitadaito\":{\"$\":0},\"kitanakagusuku\":{\"$\":0},\"kumejima\":{\"$\":0},\"kunigami\":{\"$\":0},\"minamidaito\":{\"$\":0},\"motobu\":{\"$\":0},\"nago\":{\"$\":0},\"naha\":{\"$\":0},\"nakagusuku\":{\"$\":0},\"nakijin\":{\"$\":0},\"nanjo\":{\"$\":0},\"nishihara\":{\"$\":0},\"ogimi\":{\"$\":0},\"okinawa\":{\"$\":0},\"onna\":{\"$\":0},\"shimoji\":{\"$\":0},\"taketomi\":{\"$\":0},\"tarama\":{\"$\":0},\"tokashiki\":{\"$\":0},\"tomigusuku\":{\"$\":0},\"tonaki\":{\"$\":0},\"urasoe\":{\"$\":0},\"uruma\":{\"$\":0},\"yaese\":{\"$\":0},\"yomitan\":{\"$\":0},\"yonabaru\":{\"$\":0},\"yonaguni\":{\"$\":0},\"zamami\":{\"$\":0}},\"osaka\":{\"$\":0,\"abeno\":{\"$\":0},\"chihayaakasaka\":{\"$\":0},\"chuo\":{\"$\":0},\"daito\":{\"$\":0},\"fujiidera\":{\"$\":0},\"habikino\":{\"$\":0},\"hannan\":{\"$\":0},\"higashiosaka\":{\"$\":0},\"higashisumiyoshi\":{\"$\":0},\"higashiyodogawa\":{\"$\":0},\"hirakata\":{\"$\":0},\"ibaraki\":{\"$\":0},\"ikeda\":{\"$\":0},\"izumi\":{\"$\":0},\"izumiotsu\":{\"$\":0},\"izumisano\":{\"$\":0},\"kadoma\":{\"$\":0},\"kaizuka\":{\"$\":0},\"kanan\":{\"$\":0},\"kashiwara\":{\"$\":0},\"katano\":{\"$\":0},\"kawachinagano\":{\"$\":0},\"kishiwada\":{\"$\":0},\"kita\":{\"$\":0},\"kumatori\":{\"$\":0},\"matsubara\":{\"$\":0},\"minato\":{\"$\":0},\"minoh\":{\"$\":0},\"misaki\":{\"$\":0},\"moriguchi\":{\"$\":0},\"neyagawa\":{\"$\":0},\"nishi\":{\"$\":0},\"nose\":{\"$\":0},\"osakasayama\":{\"$\":0},\"sakai\":{\"$\":0},\"sayama\":{\"$\":0},\"sennan\":{\"$\":0},\"settsu\":{\"$\":0},\"shijonawate\":{\"$\":0},\"shimamoto\":{\"$\":0},\"suita\":{\"$\":0},\"tadaoka\":{\"$\":0},\"taishi\":{\"$\":0},\"tajiri\":{\"$\":0},\"takaishi\":{\"$\":0},\"takatsuki\":{\"$\":0},\"tondabayashi\":{\"$\":0},\"toyonaka\":{\"$\":0},\"toyono\":{\"$\":0},\"yao\":{\"$\":0}},\"saga\":{\"$\":0,\"ariake\":{\"$\":0},\"arita\":{\"$\":0},\"fukudomi\":{\"$\":0},\"genkai\":{\"$\":0},\"hamatama\":{\"$\":0},\"hizen\":{\"$\":0},\"imari\":{\"$\":0},\"kamimine\":{\"$\":0},\"kanzaki\":{\"$\":0},\"karatsu\":{\"$\":0},\"kashima\":{\"$\":0},\"kitagata\":{\"$\":0},\"kitahata\":{\"$\":0},\"kiyama\":{\"$\":0},\"kouhoku\":{\"$\":0},\"kyuragi\":{\"$\":0},\"nishiarita\":{\"$\":0},\"ogi\":{\"$\":0},\"omachi\":{\"$\":0},\"ouchi\":{\"$\":0},\"saga\":{\"$\":0},\"shiroishi\":{\"$\":0},\"taku\":{\"$\":0},\"tara\":{\"$\":0},\"tosu\":{\"$\":0},\"yoshinogari\":{\"$\":0}},\"saitama\":{\"$\":0,\"arakawa\":{\"$\":0},\"asaka\":{\"$\":0},\"chichibu\":{\"$\":0},\"fujimi\":{\"$\":0},\"fujimino\":{\"$\":0},\"fukaya\":{\"$\":0},\"hanno\":{\"$\":0},\"hanyu\":{\"$\":0},\"hasuda\":{\"$\":0},\"hatogaya\":{\"$\":0},\"hatoyama\":{\"$\":0},\"hidaka\":{\"$\":0},\"higashichichibu\":{\"$\":0},\"higashimatsuyama\":{\"$\":0},\"honjo\":{\"$\":0},\"ina\":{\"$\":0},\"iruma\":{\"$\":0},\"iwatsuki\":{\"$\":0},\"kamiizumi\":{\"$\":0},\"kamikawa\":{\"$\":0},\"kamisato\":{\"$\":0},\"kasukabe\":{\"$\":0},\"kawagoe\":{\"$\":0},\"kawaguchi\":{\"$\":0},\"kawajima\":{\"$\":0},\"kazo\":{\"$\":0},\"kitamoto\":{\"$\":0},\"koshigaya\":{\"$\":0},\"kounosu\":{\"$\":0},\"kuki\":{\"$\":0},\"kumagaya\":{\"$\":0},\"matsubushi\":{\"$\":0},\"minano\":{\"$\":0},\"misato\":{\"$\":0},\"miyashiro\":{\"$\":0},\"miyoshi\":{\"$\":0},\"moroyama\":{\"$\":0},\"nagatoro\":{\"$\":0},\"namegawa\":{\"$\":0},\"niiza\":{\"$\":0},\"ogano\":{\"$\":0},\"ogawa\":{\"$\":0},\"ogose\":{\"$\":0},\"okegawa\":{\"$\":0},\"omiya\":{\"$\":0},\"otaki\":{\"$\":0},\"ranzan\":{\"$\":0},\"ryokami\":{\"$\":0},\"saitama\":{\"$\":0},\"sakado\":{\"$\":0},\"satte\":{\"$\":0},\"sayama\":{\"$\":0},\"shiki\":{\"$\":0},\"shiraoka\":{\"$\":0},\"soka\":{\"$\":0},\"sugito\":{\"$\":0},\"toda\":{\"$\":0},\"tokigawa\":{\"$\":0},\"tokorozawa\":{\"$\":0},\"tsurugashima\":{\"$\":0},\"urawa\":{\"$\":0},\"warabi\":{\"$\":0},\"yashio\":{\"$\":0},\"yokoze\":{\"$\":0},\"yono\":{\"$\":0},\"yorii\":{\"$\":0},\"yoshida\":{\"$\":0},\"yoshikawa\":{\"$\":0},\"yoshimi\":{\"$\":0}},\"shiga\":{\"$\":0,\"aisho\":{\"$\":0},\"gamo\":{\"$\":0},\"higashiomi\":{\"$\":0},\"hikone\":{\"$\":0},\"koka\":{\"$\":0},\"konan\":{\"$\":0},\"kosei\":{\"$\":0},\"koto\":{\"$\":0},\"kusatsu\":{\"$\":0},\"maibara\":{\"$\":0},\"moriyama\":{\"$\":0},\"nagahama\":{\"$\":0},\"nishiazai\":{\"$\":0},\"notogawa\":{\"$\":0},\"omihachiman\":{\"$\":0},\"otsu\":{\"$\":0},\"ritto\":{\"$\":0},\"ryuoh\":{\"$\":0},\"takashima\":{\"$\":0},\"takatsuki\":{\"$\":0},\"torahime\":{\"$\":0},\"toyosato\":{\"$\":0},\"yasu\":{\"$\":0}},\"shimane\":{\"$\":0,\"akagi\":{\"$\":0},\"ama\":{\"$\":0},\"gotsu\":{\"$\":0},\"hamada\":{\"$\":0},\"higashiizumo\":{\"$\":0},\"hikawa\":{\"$\":0},\"hikimi\":{\"$\":0},\"izumo\":{\"$\":0},\"kakinoki\":{\"$\":0},\"masuda\":{\"$\":0},\"matsue\":{\"$\":0},\"misato\":{\"$\":0},\"nishinoshima\":{\"$\":0},\"ohda\":{\"$\":0},\"okinoshima\":{\"$\":0},\"okuizumo\":{\"$\":0},\"shimane\":{\"$\":0},\"tamayu\":{\"$\":0},\"tsuwano\":{\"$\":0},\"unnan\":{\"$\":0},\"yakumo\":{\"$\":0},\"yasugi\":{\"$\":0},\"yatsuka\":{\"$\":0}},\"shizuoka\":{\"$\":0,\"arai\":{\"$\":0},\"atami\":{\"$\":0},\"fuji\":{\"$\":0},\"fujieda\":{\"$\":0},\"fujikawa\":{\"$\":0},\"fujinomiya\":{\"$\":0},\"fukuroi\":{\"$\":0},\"gotemba\":{\"$\":0},\"haibara\":{\"$\":0},\"hamamatsu\":{\"$\":0},\"higashiizu\":{\"$\":0},\"ito\":{\"$\":0},\"iwata\":{\"$\":0},\"izu\":{\"$\":0},\"izunokuni\":{\"$\":0},\"kakegawa\":{\"$\":0},\"kannami\":{\"$\":0},\"kawanehon\":{\"$\":0},\"kawazu\":{\"$\":0},\"kikugawa\":{\"$\":0},\"kosai\":{\"$\":0},\"makinohara\":{\"$\":0},\"matsuzaki\":{\"$\":0},\"minamiizu\":{\"$\":0},\"mishima\":{\"$\":0},\"morimachi\":{\"$\":0},\"nishiizu\":{\"$\":0},\"numazu\":{\"$\":0},\"omaezaki\":{\"$\":0},\"shimada\":{\"$\":0},\"shimizu\":{\"$\":0},\"shimoda\":{\"$\":0},\"shizuoka\":{\"$\":0},\"susono\":{\"$\":0},\"yaizu\":{\"$\":0},\"yoshida\":{\"$\":0}},\"tochigi\":{\"$\":0,\"ashikaga\":{\"$\":0},\"bato\":{\"$\":0},\"haga\":{\"$\":0},\"ichikai\":{\"$\":0},\"iwafune\":{\"$\":0},\"kaminokawa\":{\"$\":0},\"kanuma\":{\"$\":0},\"karasuyama\":{\"$\":0},\"kuroiso\":{\"$\":0},\"mashiko\":{\"$\":0},\"mibu\":{\"$\":0},\"moka\":{\"$\":0},\"motegi\":{\"$\":0},\"nasu\":{\"$\":0},\"nasushiobara\":{\"$\":0},\"nikko\":{\"$\":0},\"nishikata\":{\"$\":0},\"nogi\":{\"$\":0},\"ohira\":{\"$\":0},\"ohtawara\":{\"$\":0},\"oyama\":{\"$\":0},\"sakura\":{\"$\":0},\"sano\":{\"$\":0},\"shimotsuke\":{\"$\":0},\"shioya\":{\"$\":0},\"takanezawa\":{\"$\":0},\"tochigi\":{\"$\":0},\"tsuga\":{\"$\":0},\"ujiie\":{\"$\":0},\"utsunomiya\":{\"$\":0},\"yaita\":{\"$\":0}},\"tokushima\":{\"$\":0,\"aizumi\":{\"$\":0},\"anan\":{\"$\":0},\"ichiba\":{\"$\":0},\"itano\":{\"$\":0},\"kainan\":{\"$\":0},\"komatsushima\":{\"$\":0},\"matsushige\":{\"$\":0},\"mima\":{\"$\":0},\"minami\":{\"$\":0},\"miyoshi\":{\"$\":0},\"mugi\":{\"$\":0},\"nakagawa\":{\"$\":0},\"naruto\":{\"$\":0},\"sanagochi\":{\"$\":0},\"shishikui\":{\"$\":0},\"tokushima\":{\"$\":0},\"wajiki\":{\"$\":0}},\"tokyo\":{\"$\":0,\"adachi\":{\"$\":0},\"akiruno\":{\"$\":0},\"akishima\":{\"$\":0},\"aogashima\":{\"$\":0},\"arakawa\":{\"$\":0},\"bunkyo\":{\"$\":0},\"chiyoda\":{\"$\":0},\"chofu\":{\"$\":0},\"chuo\":{\"$\":0},\"edogawa\":{\"$\":0},\"fuchu\":{\"$\":0},\"fussa\":{\"$\":0},\"hachijo\":{\"$\":0},\"hachioji\":{\"$\":0},\"hamura\":{\"$\":0},\"higashikurume\":{\"$\":0},\"higashimurayama\":{\"$\":0},\"higashiyamato\":{\"$\":0},\"hino\":{\"$\":0},\"hinode\":{\"$\":0},\"hinohara\":{\"$\":0},\"inagi\":{\"$\":0},\"itabashi\":{\"$\":0},\"katsushika\":{\"$\":0},\"kita\":{\"$\":0},\"kiyose\":{\"$\":0},\"kodaira\":{\"$\":0},\"koganei\":{\"$\":0},\"kokubunji\":{\"$\":0},\"komae\":{\"$\":0},\"koto\":{\"$\":0},\"kouzushima\":{\"$\":0},\"kunitachi\":{\"$\":0},\"machida\":{\"$\":0},\"meguro\":{\"$\":0},\"minato\":{\"$\":0},\"mitaka\":{\"$\":0},\"mizuho\":{\"$\":0},\"musashimurayama\":{\"$\":0},\"musashino\":{\"$\":0},\"nakano\":{\"$\":0},\"nerima\":{\"$\":0},\"ogasawara\":{\"$\":0},\"okutama\":{\"$\":0},\"ome\":{\"$\":0},\"oshima\":{\"$\":0},\"ota\":{\"$\":0},\"setagaya\":{\"$\":0},\"shibuya\":{\"$\":0},\"shinagawa\":{\"$\":0},\"shinjuku\":{\"$\":0},\"suginami\":{\"$\":0},\"sumida\":{\"$\":0},\"tachikawa\":{\"$\":0},\"taito\":{\"$\":0},\"tama\":{\"$\":0},\"toshima\":{\"$\":0}},\"tottori\":{\"$\":0,\"chizu\":{\"$\":0},\"hino\":{\"$\":0},\"kawahara\":{\"$\":0},\"koge\":{\"$\":0},\"kotoura\":{\"$\":0},\"misasa\":{\"$\":0},\"nanbu\":{\"$\":0},\"nichinan\":{\"$\":0},\"sakaiminato\":{\"$\":0},\"tottori\":{\"$\":0},\"wakasa\":{\"$\":0},\"yazu\":{\"$\":0},\"yonago\":{\"$\":0}},\"toyama\":{\"$\":0,\"asahi\":{\"$\":0},\"fuchu\":{\"$\":0},\"fukumitsu\":{\"$\":0},\"funahashi\":{\"$\":0},\"himi\":{\"$\":0},\"imizu\":{\"$\":0},\"inami\":{\"$\":0},\"johana\":{\"$\":0},\"kamiichi\":{\"$\":0},\"kurobe\":{\"$\":0},\"nakaniikawa\":{\"$\":0},\"namerikawa\":{\"$\":0},\"nanto\":{\"$\":0},\"nyuzen\":{\"$\":0},\"oyabe\":{\"$\":0},\"taira\":{\"$\":0},\"takaoka\":{\"$\":0},\"tateyama\":{\"$\":0},\"toga\":{\"$\":0},\"tonami\":{\"$\":0},\"toyama\":{\"$\":0},\"unazuki\":{\"$\":0},\"uozu\":{\"$\":0},\"yamada\":{\"$\":0}},\"wakayama\":{\"$\":0,\"arida\":{\"$\":0},\"aridagawa\":{\"$\":0},\"gobo\":{\"$\":0},\"hashimoto\":{\"$\":0},\"hidaka\":{\"$\":0},\"hirogawa\":{\"$\":0},\"inami\":{\"$\":0},\"iwade\":{\"$\":0},\"kainan\":{\"$\":0},\"kamitonda\":{\"$\":0},\"katsuragi\":{\"$\":0},\"kimino\":{\"$\":0},\"kinokawa\":{\"$\":0},\"kitayama\":{\"$\":0},\"koya\":{\"$\":0},\"koza\":{\"$\":0},\"kozagawa\":{\"$\":0},\"kudoyama\":{\"$\":0},\"kushimoto\":{\"$\":0},\"mihama\":{\"$\":0},\"misato\":{\"$\":0},\"nachikatsuura\":{\"$\":0},\"shingu\":{\"$\":0},\"shirahama\":{\"$\":0},\"taiji\":{\"$\":0},\"tanabe\":{\"$\":0},\"wakayama\":{\"$\":0},\"yuasa\":{\"$\":0},\"yura\":{\"$\":0}},\"yamagata\":{\"$\":0,\"asahi\":{\"$\":0},\"funagata\":{\"$\":0},\"higashine\":{\"$\":0},\"iide\":{\"$\":0},\"kahoku\":{\"$\":0},\"kaminoyama\":{\"$\":0},\"kaneyama\":{\"$\":0},\"kawanishi\":{\"$\":0},\"mamurogawa\":{\"$\":0},\"mikawa\":{\"$\":0},\"murayama\":{\"$\":0},\"nagai\":{\"$\":0},\"nakayama\":{\"$\":0},\"nanyo\":{\"$\":0},\"nishikawa\":{\"$\":0},\"obanazawa\":{\"$\":0},\"oe\":{\"$\":0},\"oguni\":{\"$\":0},\"ohkura\":{\"$\":0},\"oishida\":{\"$\":0},\"sagae\":{\"$\":0},\"sakata\":{\"$\":0},\"sakegawa\":{\"$\":0},\"shinjo\":{\"$\":0},\"shirataka\":{\"$\":0},\"shonai\":{\"$\":0},\"takahata\":{\"$\":0},\"tendo\":{\"$\":0},\"tozawa\":{\"$\":0},\"tsuruoka\":{\"$\":0},\"yamagata\":{\"$\":0},\"yamanobe\":{\"$\":0},\"yonezawa\":{\"$\":0},\"yuza\":{\"$\":0}},\"yamaguchi\":{\"$\":0,\"abu\":{\"$\":0},\"hagi\":{\"$\":0},\"hikari\":{\"$\":0},\"hofu\":{\"$\":0},\"iwakuni\":{\"$\":0},\"kudamatsu\":{\"$\":0},\"mitou\":{\"$\":0},\"nagato\":{\"$\":0},\"oshima\":{\"$\":0},\"shimonoseki\":{\"$\":0},\"shunan\":{\"$\":0},\"tabuse\":{\"$\":0},\"tokuyama\":{\"$\":0},\"toyota\":{\"$\":0},\"ube\":{\"$\":0},\"yuu\":{\"$\":0}},\"yamanashi\":{\"$\":0,\"chuo\":{\"$\":0},\"doshi\":{\"$\":0},\"fuefuki\":{\"$\":0},\"fujikawa\":{\"$\":0},\"fujikawaguchiko\":{\"$\":0},\"fujiyoshida\":{\"$\":0},\"hayakawa\":{\"$\":0},\"hokuto\":{\"$\":0},\"ichikawamisato\":{\"$\":0},\"kai\":{\"$\":0},\"kofu\":{\"$\":0},\"koshu\":{\"$\":0},\"kosuge\":{\"$\":0},\"minami-alps\":{\"$\":0},\"minobu\":{\"$\":0},\"nakamichi\":{\"$\":0},\"nanbu\":{\"$\":0},\"narusawa\":{\"$\":0},\"nirasaki\":{\"$\":0},\"nishikatsura\":{\"$\":0},\"oshino\":{\"$\":0},\"otsuki\":{\"$\":0},\"showa\":{\"$\":0},\"tabayama\":{\"$\":0},\"tsuru\":{\"$\":0},\"uenohara\":{\"$\":0},\"yamanakako\":{\"$\":0},\"yamanashi\":{\"$\":0}},\"xn--4pvxs\":{\"$\":0},\"xn--vgu402c\":{\"$\":0},\"xn--c3s14m\":{\"$\":0},\"xn--f6qx53a\":{\"$\":0},\"xn--8pvr4u\":{\"$\":0},\"xn--uist22h\":{\"$\":0},\"xn--djrs72d6uy\":{\"$\":0},\"xn--mkru45i\":{\"$\":0},\"xn--0trq7p7nn\":{\"$\":0},\"xn--8ltr62k\":{\"$\":0},\"xn--2m4a15e\":{\"$\":0},\"xn--efvn9s\":{\"$\":0},\"xn--32vp30h\":{\"$\":0},\"xn--4it797k\":{\"$\":0},\"xn--1lqs71d\":{\"$\":0},\"xn--5rtp49c\":{\"$\":0},\"xn--5js045d\":{\"$\":0},\"xn--ehqz56n\":{\"$\":0},\"xn--1lqs03n\":{\"$\":0},\"xn--qqqt11m\":{\"$\":0},\"xn--kbrq7o\":{\"$\":0},\"xn--pssu33l\":{\"$\":0},\"xn--ntsq17g\":{\"$\":0},\"xn--uisz3g\":{\"$\":0},\"xn--6btw5a\":{\"$\":0},\"xn--1ctwo\":{\"$\":0},\"xn--6orx2r\":{\"$\":0},\"xn--rht61e\":{\"$\":0},\"xn--rht27z\":{\"$\":0},\"xn--djty4k\":{\"$\":0},\"xn--nit225k\":{\"$\":0},\"xn--rht3d\":{\"$\":0},\"xn--klty5x\":{\"$\":0},\"xn--kltx9a\":{\"$\":0},\"xn--kltp7d\":{\"$\":0},\"xn--uuwu58a\":{\"$\":0},\"xn--zbx025d\":{\"$\":0},\"xn--ntso0iqx3a\":{\"$\":0},\"xn--elqq16h\":{\"$\":0},\"xn--4it168d\":{\"$\":0},\"xn--klt787d\":{\"$\":0},\"xn--rny31h\":{\"$\":0},\"xn--7t0a264c\":{\"$\":0},\"xn--5rtq34k\":{\"$\":0},\"xn--k7yn95e\":{\"$\":0},\"xn--tor131o\":{\"$\":0},\"xn--d5qv7z876c\":{\"$\":0},\"kawasaki\":{\"*\":{\"$\":0}},\"kitakyushu\":{\"*\":{\"$\":0}},\"kobe\":{\"*\":{\"$\":0}},\"nagoya\":{\"*\":{\"$\":0}},\"sapporo\":{\"*\":{\"$\":0}},\"sendai\":{\"*\":{\"$\":0}},\"yokohama\":{\"*\":{\"$\":0}},\"blogspot\":{\"$\":0}},\"ke\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0,\"blogspot\":{\"$\":0}},\"go\":{\"$\":0},\"info\":{\"$\":0},\"me\":{\"$\":0},\"mobi\":{\"$\":0},\"ne\":{\"$\":0},\"or\":{\"$\":0},\"sc\":{\"$\":0}},\"kg\":{\"$\":0,\"org\":{\"$\":0},\"net\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0}},\"kh\":{\"*\":{\"$\":0}},\"ki\":{\"$\":0,\"edu\":{\"$\":0},\"biz\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gov\":{\"$\":0},\"info\":{\"$\":0},\"com\":{\"$\":0}},\"km\":{\"$\":0,\"org\":{\"$\":0},\"nom\":{\"$\":0},\"gov\":{\"$\":0},\"prd\":{\"$\":0},\"tm\":{\"$\":0},\"edu\":{\"$\":0},\"mil\":{\"$\":0},\"ass\":{\"$\":0},\"com\":{\"$\":0},\"coop\":{\"$\":0},\"asso\":{\"$\":0},\"presse\":{\"$\":0},\"medecin\":{\"$\":0},\"notaires\":{\"$\":0},\"pharmaciens\":{\"$\":0},\"veterinaire\":{\"$\":0},\"gouv\":{\"$\":0}},\"kn\":{\"$\":0,\"net\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0}},\"kp\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"rep\":{\"$\":0},\"tra\":{\"$\":0}},\"kr\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0},\"es\":{\"$\":0},\"go\":{\"$\":0},\"hs\":{\"$\":0},\"kg\":{\"$\":0},\"mil\":{\"$\":0},\"ms\":{\"$\":0},\"ne\":{\"$\":0},\"or\":{\"$\":0},\"pe\":{\"$\":0},\"re\":{\"$\":0},\"sc\":{\"$\":0},\"busan\":{\"$\":0},\"chungbuk\":{\"$\":0},\"chungnam\":{\"$\":0},\"daegu\":{\"$\":0},\"daejeon\":{\"$\":0},\"gangwon\":{\"$\":0},\"gwangju\":{\"$\":0},\"gyeongbuk\":{\"$\":0},\"gyeonggi\":{\"$\":0},\"gyeongnam\":{\"$\":0},\"incheon\":{\"$\":0},\"jeju\":{\"$\":0},\"jeonbuk\":{\"$\":0},\"jeonnam\":{\"$\":0},\"seoul\":{\"$\":0},\"ulsan\":{\"$\":0},\"blogspot\":{\"$\":0}},\"kw\":{\"*\":{\"$\":0}},\"ky\":{\"$\":0,\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"com\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0}},\"kz\":{\"$\":0,\"org\":{\"$\":0},\"edu\":{\"$\":0},\"net\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"com\":{\"$\":0},\"nym\":{\"$\":0}},\"la\":{\"$\":0,\"int\":{\"$\":0},\"net\":{\"$\":0},\"info\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"per\":{\"$\":0},\"com\":{\"$\":0},\"org\":{\"$\":0},\"bnr\":{\"$\":0},\"c\":{\"$\":0},\"nym\":{\"$\":0}},\"lb\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"lc\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"co\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"oy\":{\"$\":0}},\"li\":{\"$\":0,\"blogspot\":{\"$\":0},\"nom\":{\"$\":0},\"nym\":{\"$\":0}},\"lk\":{\"$\":0,\"gov\":{\"$\":0},\"sch\":{\"$\":0},\"net\":{\"$\":0},\"int\":{\"$\":0},\"com\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"ngo\":{\"$\":0},\"soc\":{\"$\":0},\"web\":{\"$\":0},\"ltd\":{\"$\":0},\"assn\":{\"$\":0},\"grp\":{\"$\":0},\"hotel\":{\"$\":0},\"ac\":{\"$\":0}},\"lr\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0}},\"ls\":{\"$\":0,\"co\":{\"$\":0},\"org\":{\"$\":0}},\"lt\":{\"$\":0,\"gov\":{\"$\":0},\"blogspot\":{\"$\":0},\"nym\":{\"$\":0}},\"lu\":{\"$\":0,\"blogspot\":{\"$\":0},\"nym\":{\"$\":0}},\"lv\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"mil\":{\"$\":0},\"id\":{\"$\":0},\"net\":{\"$\":0},\"asn\":{\"$\":0},\"conf\":{\"$\":0}},\"ly\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"gov\":{\"$\":0},\"plc\":{\"$\":0},\"edu\":{\"$\":0},\"sch\":{\"$\":0},\"med\":{\"$\":0},\"org\":{\"$\":0},\"id\":{\"$\":0}},\"ma\":{\"$\":0,\"co\":{\"$\":0},\"net\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"ac\":{\"$\":0},\"press\":{\"$\":0}},\"mc\":{\"$\":0,\"tm\":{\"$\":0},\"asso\":{\"$\":0}},\"md\":{\"$\":0,\"blogspot\":{\"$\":0}},\"me\":{\"$\":0,\"co\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"ac\":{\"$\":0},\"gov\":{\"$\":0},\"its\":{\"$\":0},\"priv\":{\"$\":0},\"c66\":{\"$\":0},\"daplie\":{\"$\":0,\"localhost\":{\"$\":0}},\"filegear\":{\"$\":0},\"brasilia\":{\"$\":0},\"ddns\":{\"$\":0},\"dnsfor\":{\"$\":0},\"hopto\":{\"$\":0},\"loginto\":{\"$\":0},\"noip\":{\"$\":0},\"webhop\":{\"$\":0},\"nym\":{\"$\":0},\"diskstation\":{\"$\":0},\"dscloud\":{\"$\":0},\"i234\":{\"$\":0},\"myds\":{\"$\":0},\"synology\":{\"$\":0},\"wedeploy\":{\"$\":0},\"yombo\":{\"$\":0}},\"mg\":{\"$\":0,\"org\":{\"$\":0},\"nom\":{\"$\":0},\"gov\":{\"$\":0},\"prd\":{\"$\":0},\"tm\":{\"$\":0},\"edu\":{\"$\":0},\"mil\":{\"$\":0},\"com\":{\"$\":0},\"co\":{\"$\":0}},\"mh\":{\"$\":0},\"mil\":{\"$\":0},\"mk\":{\"$\":0,\"com\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"inf\":{\"$\":0},\"name\":{\"$\":0},\"blogspot\":{\"$\":0},\"nom\":{\"$\":0}},\"ml\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gouv\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"presse\":{\"$\":0}},\"mm\":{\"*\":{\"$\":0}},\"mn\":{\"$\":0,\"gov\":{\"$\":0},\"edu\":{\"$\":0},\"org\":{\"$\":0},\"nyc\":{\"$\":0}},\"mo\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0}},\"mobi\":{\"$\":0,\"dscloud\":{\"$\":0}},\"mp\":{\"$\":0},\"mq\":{\"$\":0},\"mr\":{\"$\":0,\"gov\":{\"$\":0},\"blogspot\":{\"$\":0}},\"ms\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"mt\":{\"$\":0,\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"edu\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"mu\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gov\":{\"$\":0},\"ac\":{\"$\":0},\"co\":{\"$\":0},\"or\":{\"$\":0}},\"museum\":{\"$\":0,\"academy\":{\"$\":0},\"agriculture\":{\"$\":0},\"air\":{\"$\":0},\"airguard\":{\"$\":0},\"alabama\":{\"$\":0},\"alaska\":{\"$\":0},\"amber\":{\"$\":0},\"ambulance\":{\"$\":0},\"american\":{\"$\":0},\"americana\":{\"$\":0},\"americanantiques\":{\"$\":0},\"americanart\":{\"$\":0},\"amsterdam\":{\"$\":0},\"and\":{\"$\":0},\"annefrank\":{\"$\":0},\"anthro\":{\"$\":0},\"anthropology\":{\"$\":0},\"antiques\":{\"$\":0},\"aquarium\":{\"$\":0},\"arboretum\":{\"$\":0},\"archaeological\":{\"$\":0},\"archaeology\":{\"$\":0},\"architecture\":{\"$\":0},\"art\":{\"$\":0},\"artanddesign\":{\"$\":0},\"artcenter\":{\"$\":0},\"artdeco\":{\"$\":0},\"arteducation\":{\"$\":0},\"artgallery\":{\"$\":0},\"arts\":{\"$\":0},\"artsandcrafts\":{\"$\":0},\"asmatart\":{\"$\":0},\"assassination\":{\"$\":0},\"assisi\":{\"$\":0},\"association\":{\"$\":0},\"astronomy\":{\"$\":0},\"atlanta\":{\"$\":0},\"austin\":{\"$\":0},\"australia\":{\"$\":0},\"automotive\":{\"$\":0},\"aviation\":{\"$\":0},\"axis\":{\"$\":0},\"badajoz\":{\"$\":0},\"baghdad\":{\"$\":0},\"bahn\":{\"$\":0},\"bale\":{\"$\":0},\"baltimore\":{\"$\":0},\"barcelona\":{\"$\":0},\"baseball\":{\"$\":0},\"basel\":{\"$\":0},\"baths\":{\"$\":0},\"bauern\":{\"$\":0},\"beauxarts\":{\"$\":0},\"beeldengeluid\":{\"$\":0},\"bellevue\":{\"$\":0},\"bergbau\":{\"$\":0},\"berkeley\":{\"$\":0},\"berlin\":{\"$\":0},\"bern\":{\"$\":0},\"bible\":{\"$\":0},\"bilbao\":{\"$\":0},\"bill\":{\"$\":0},\"birdart\":{\"$\":0},\"birthplace\":{\"$\":0},\"bonn\":{\"$\":0},\"boston\":{\"$\":0},\"botanical\":{\"$\":0},\"botanicalgarden\":{\"$\":0},\"botanicgarden\":{\"$\":0},\"botany\":{\"$\":0},\"brandywinevalley\":{\"$\":0},\"brasil\":{\"$\":0},\"bristol\":{\"$\":0},\"british\":{\"$\":0},\"britishcolumbia\":{\"$\":0},\"broadcast\":{\"$\":0},\"brunel\":{\"$\":0},\"brussel\":{\"$\":0},\"brussels\":{\"$\":0},\"bruxelles\":{\"$\":0},\"building\":{\"$\":0},\"burghof\":{\"$\":0},\"bus\":{\"$\":0},\"bushey\":{\"$\":0},\"cadaques\":{\"$\":0},\"california\":{\"$\":0},\"cambridge\":{\"$\":0},\"can\":{\"$\":0},\"canada\":{\"$\":0},\"capebreton\":{\"$\":0},\"carrier\":{\"$\":0},\"cartoonart\":{\"$\":0},\"casadelamoneda\":{\"$\":0},\"castle\":{\"$\":0},\"castres\":{\"$\":0},\"celtic\":{\"$\":0},\"center\":{\"$\":0},\"chattanooga\":{\"$\":0},\"cheltenham\":{\"$\":0},\"chesapeakebay\":{\"$\":0},\"chicago\":{\"$\":0},\"children\":{\"$\":0},\"childrens\":{\"$\":0},\"childrensgarden\":{\"$\":0},\"chiropractic\":{\"$\":0},\"chocolate\":{\"$\":0},\"christiansburg\":{\"$\":0},\"cincinnati\":{\"$\":0},\"cinema\":{\"$\":0},\"circus\":{\"$\":0},\"civilisation\":{\"$\":0},\"civilization\":{\"$\":0},\"civilwar\":{\"$\":0},\"clinton\":{\"$\":0},\"clock\":{\"$\":0},\"coal\":{\"$\":0},\"coastaldefence\":{\"$\":0},\"cody\":{\"$\":0},\"coldwar\":{\"$\":0},\"collection\":{\"$\":0},\"colonialwilliamsburg\":{\"$\":0},\"coloradoplateau\":{\"$\":0},\"columbia\":{\"$\":0},\"columbus\":{\"$\":0},\"communication\":{\"$\":0},\"communications\":{\"$\":0},\"community\":{\"$\":0},\"computer\":{\"$\":0},\"computerhistory\":{\"$\":0},\"xn--comunicaes-v6a2o\":{\"$\":0},\"contemporary\":{\"$\":0},\"contemporaryart\":{\"$\":0},\"convent\":{\"$\":0},\"copenhagen\":{\"$\":0},\"corporation\":{\"$\":0},\"xn--correios-e-telecomunicaes-ghc29a\":{\"$\":0},\"corvette\":{\"$\":0},\"costume\":{\"$\":0},\"countryestate\":{\"$\":0},\"county\":{\"$\":0},\"crafts\":{\"$\":0},\"cranbrook\":{\"$\":0},\"creation\":{\"$\":0},\"cultural\":{\"$\":0},\"culturalcenter\":{\"$\":0},\"culture\":{\"$\":0},\"cyber\":{\"$\":0},\"cymru\":{\"$\":0},\"dali\":{\"$\":0},\"dallas\":{\"$\":0},\"database\":{\"$\":0},\"ddr\":{\"$\":0},\"decorativearts\":{\"$\":0},\"delaware\":{\"$\":0},\"delmenhorst\":{\"$\":0},\"denmark\":{\"$\":0},\"depot\":{\"$\":0},\"design\":{\"$\":0},\"detroit\":{\"$\":0},\"dinosaur\":{\"$\":0},\"discovery\":{\"$\":0},\"dolls\":{\"$\":0},\"donostia\":{\"$\":0},\"durham\":{\"$\":0},\"eastafrica\":{\"$\":0},\"eastcoast\":{\"$\":0},\"education\":{\"$\":0},\"educational\":{\"$\":0},\"egyptian\":{\"$\":0},\"eisenbahn\":{\"$\":0},\"elburg\":{\"$\":0},\"elvendrell\":{\"$\":0},\"embroidery\":{\"$\":0},\"encyclopedic\":{\"$\":0},\"england\":{\"$\":0},\"entomology\":{\"$\":0},\"environment\":{\"$\":0},\"environmentalconservation\":{\"$\":0},\"epilepsy\":{\"$\":0},\"essex\":{\"$\":0},\"estate\":{\"$\":0},\"ethnology\":{\"$\":0},\"exeter\":{\"$\":0},\"exhibition\":{\"$\":0},\"family\":{\"$\":0},\"farm\":{\"$\":0},\"farmequipment\":{\"$\":0},\"farmers\":{\"$\":0},\"farmstead\":{\"$\":0},\"field\":{\"$\":0},\"figueres\":{\"$\":0},\"filatelia\":{\"$\":0},\"film\":{\"$\":0},\"fineart\":{\"$\":0},\"finearts\":{\"$\":0},\"finland\":{\"$\":0},\"flanders\":{\"$\":0},\"florida\":{\"$\":0},\"force\":{\"$\":0},\"fortmissoula\":{\"$\":0},\"fortworth\":{\"$\":0},\"foundation\":{\"$\":0},\"francaise\":{\"$\":0},\"frankfurt\":{\"$\":0},\"franziskaner\":{\"$\":0},\"freemasonry\":{\"$\":0},\"freiburg\":{\"$\":0},\"fribourg\":{\"$\":0},\"frog\":{\"$\":0},\"fundacio\":{\"$\":0},\"furniture\":{\"$\":0},\"gallery\":{\"$\":0},\"garden\":{\"$\":0},\"gateway\":{\"$\":0},\"geelvinck\":{\"$\":0},\"gemological\":{\"$\":0},\"geology\":{\"$\":0},\"georgia\":{\"$\":0},\"giessen\":{\"$\":0},\"glas\":{\"$\":0},\"glass\":{\"$\":0},\"gorge\":{\"$\":0},\"grandrapids\":{\"$\":0},\"graz\":{\"$\":0},\"guernsey\":{\"$\":0},\"halloffame\":{\"$\":0},\"hamburg\":{\"$\":0},\"handson\":{\"$\":0},\"harvestcelebration\":{\"$\":0},\"hawaii\":{\"$\":0},\"health\":{\"$\":0},\"heimatunduhren\":{\"$\":0},\"hellas\":{\"$\":0},\"helsinki\":{\"$\":0},\"hembygdsforbund\":{\"$\":0},\"heritage\":{\"$\":0},\"histoire\":{\"$\":0},\"historical\":{\"$\":0},\"historicalsociety\":{\"$\":0},\"historichouses\":{\"$\":0},\"historisch\":{\"$\":0},\"historisches\":{\"$\":0},\"history\":{\"$\":0},\"historyofscience\":{\"$\":0},\"horology\":{\"$\":0},\"house\":{\"$\":0},\"humanities\":{\"$\":0},\"illustration\":{\"$\":0},\"imageandsound\":{\"$\":0},\"indian\":{\"$\":0},\"indiana\":{\"$\":0},\"indianapolis\":{\"$\":0},\"indianmarket\":{\"$\":0},\"intelligence\":{\"$\":0},\"interactive\":{\"$\":0},\"iraq\":{\"$\":0},\"iron\":{\"$\":0},\"isleofman\":{\"$\":0},\"jamison\":{\"$\":0},\"jefferson\":{\"$\":0},\"jerusalem\":{\"$\":0},\"jewelry\":{\"$\":0},\"jewish\":{\"$\":0},\"jewishart\":{\"$\":0},\"jfk\":{\"$\":0},\"journalism\":{\"$\":0},\"judaica\":{\"$\":0},\"judygarland\":{\"$\":0},\"juedisches\":{\"$\":0},\"juif\":{\"$\":0},\"karate\":{\"$\":0},\"karikatur\":{\"$\":0},\"kids\":{\"$\":0},\"koebenhavn\":{\"$\":0},\"koeln\":{\"$\":0},\"kunst\":{\"$\":0},\"kunstsammlung\":{\"$\":0},\"kunstunddesign\":{\"$\":0},\"labor\":{\"$\":0},\"labour\":{\"$\":0},\"lajolla\":{\"$\":0},\"lancashire\":{\"$\":0},\"landes\":{\"$\":0},\"lans\":{\"$\":0},\"xn--lns-qla\":{\"$\":0},\"larsson\":{\"$\":0},\"lewismiller\":{\"$\":0},\"lincoln\":{\"$\":0},\"linz\":{\"$\":0},\"living\":{\"$\":0},\"livinghistory\":{\"$\":0},\"localhistory\":{\"$\":0},\"london\":{\"$\":0},\"losangeles\":{\"$\":0},\"louvre\":{\"$\":0},\"loyalist\":{\"$\":0},\"lucerne\":{\"$\":0},\"luxembourg\":{\"$\":0},\"luzern\":{\"$\":0},\"mad\":{\"$\":0},\"madrid\":{\"$\":0},\"mallorca\":{\"$\":0},\"manchester\":{\"$\":0},\"mansion\":{\"$\":0},\"mansions\":{\"$\":0},\"manx\":{\"$\":0},\"marburg\":{\"$\":0},\"maritime\":{\"$\":0},\"maritimo\":{\"$\":0},\"maryland\":{\"$\":0},\"marylhurst\":{\"$\":0},\"media\":{\"$\":0},\"medical\":{\"$\":0},\"medizinhistorisches\":{\"$\":0},\"meeres\":{\"$\":0},\"memorial\":{\"$\":0},\"mesaverde\":{\"$\":0},\"michigan\":{\"$\":0},\"midatlantic\":{\"$\":0},\"military\":{\"$\":0},\"mill\":{\"$\":0},\"miners\":{\"$\":0},\"mining\":{\"$\":0},\"minnesota\":{\"$\":0},\"missile\":{\"$\":0},\"missoula\":{\"$\":0},\"modern\":{\"$\":0},\"moma\":{\"$\":0},\"money\":{\"$\":0},\"monmouth\":{\"$\":0},\"monticello\":{\"$\":0},\"montreal\":{\"$\":0},\"moscow\":{\"$\":0},\"motorcycle\":{\"$\":0},\"muenchen\":{\"$\":0},\"muenster\":{\"$\":0},\"mulhouse\":{\"$\":0},\"muncie\":{\"$\":0},\"museet\":{\"$\":0},\"museumcenter\":{\"$\":0},\"museumvereniging\":{\"$\":0},\"music\":{\"$\":0},\"national\":{\"$\":0},\"nationalfirearms\":{\"$\":0},\"nationalheritage\":{\"$\":0},\"nativeamerican\":{\"$\":0},\"naturalhistory\":{\"$\":0},\"naturalhistorymuseum\":{\"$\":0},\"naturalsciences\":{\"$\":0},\"nature\":{\"$\":0},\"naturhistorisches\":{\"$\":0},\"natuurwetenschappen\":{\"$\":0},\"naumburg\":{\"$\":0},\"naval\":{\"$\":0},\"nebraska\":{\"$\":0},\"neues\":{\"$\":0},\"newhampshire\":{\"$\":0},\"newjersey\":{\"$\":0},\"newmexico\":{\"$\":0},\"newport\":{\"$\":0},\"newspaper\":{\"$\":0},\"newyork\":{\"$\":0},\"niepce\":{\"$\":0},\"norfolk\":{\"$\":0},\"north\":{\"$\":0},\"nrw\":{\"$\":0},\"nuernberg\":{\"$\":0},\"nuremberg\":{\"$\":0},\"nyc\":{\"$\":0},\"nyny\":{\"$\":0},\"oceanographic\":{\"$\":0},\"oceanographique\":{\"$\":0},\"omaha\":{\"$\":0},\"online\":{\"$\":0},\"ontario\":{\"$\":0},\"openair\":{\"$\":0},\"oregon\":{\"$\":0},\"oregontrail\":{\"$\":0},\"otago\":{\"$\":0},\"oxford\":{\"$\":0},\"pacific\":{\"$\":0},\"paderborn\":{\"$\":0},\"palace\":{\"$\":0},\"paleo\":{\"$\":0},\"palmsprings\":{\"$\":0},\"panama\":{\"$\":0},\"paris\":{\"$\":0},\"pasadena\":{\"$\":0},\"pharmacy\":{\"$\":0},\"philadelphia\":{\"$\":0},\"philadelphiaarea\":{\"$\":0},\"philately\":{\"$\":0},\"phoenix\":{\"$\":0},\"photography\":{\"$\":0},\"pilots\":{\"$\":0},\"pittsburgh\":{\"$\":0},\"planetarium\":{\"$\":0},\"plantation\":{\"$\":0},\"plants\":{\"$\":0},\"plaza\":{\"$\":0},\"portal\":{\"$\":0},\"portland\":{\"$\":0},\"portlligat\":{\"$\":0},\"posts-and-telecommunications\":{\"$\":0},\"preservation\":{\"$\":0},\"presidio\":{\"$\":0},\"press\":{\"$\":0},\"project\":{\"$\":0},\"public\":{\"$\":0},\"pubol\":{\"$\":0},\"quebec\":{\"$\":0},\"railroad\":{\"$\":0},\"railway\":{\"$\":0},\"research\":{\"$\":0},\"resistance\":{\"$\":0},\"riodejaneiro\":{\"$\":0},\"rochester\":{\"$\":0},\"rockart\":{\"$\":0},\"roma\":{\"$\":0},\"russia\":{\"$\":0},\"saintlouis\":{\"$\":0},\"salem\":{\"$\":0},\"salvadordali\":{\"$\":0},\"salzburg\":{\"$\":0},\"sandiego\":{\"$\":0},\"sanfrancisco\":{\"$\":0},\"santabarbara\":{\"$\":0},\"santacruz\":{\"$\":0},\"santafe\":{\"$\":0},\"saskatchewan\":{\"$\":0},\"satx\":{\"$\":0},\"savannahga\":{\"$\":0},\"schlesisches\":{\"$\":0},\"schoenbrunn\":{\"$\":0},\"schokoladen\":{\"$\":0},\"school\":{\"$\":0},\"schweiz\":{\"$\":0},\"science\":{\"$\":0},\"scienceandhistory\":{\"$\":0},\"scienceandindustry\":{\"$\":0},\"sciencecenter\":{\"$\":0},\"sciencecenters\":{\"$\":0},\"science-fiction\":{\"$\":0},\"sciencehistory\":{\"$\":0},\"sciences\":{\"$\":0},\"sciencesnaturelles\":{\"$\":0},\"scotland\":{\"$\":0},\"seaport\":{\"$\":0},\"settlement\":{\"$\":0},\"settlers\":{\"$\":0},\"shell\":{\"$\":0},\"sherbrooke\":{\"$\":0},\"sibenik\":{\"$\":0},\"silk\":{\"$\":0},\"ski\":{\"$\":0},\"skole\":{\"$\":0},\"society\":{\"$\":0},\"sologne\":{\"$\":0},\"soundandvision\":{\"$\":0},\"southcarolina\":{\"$\":0},\"southwest\":{\"$\":0},\"space\":{\"$\":0},\"spy\":{\"$\":0},\"square\":{\"$\":0},\"stadt\":{\"$\":0},\"stalbans\":{\"$\":0},\"starnberg\":{\"$\":0},\"state\":{\"$\":0},\"stateofdelaware\":{\"$\":0},\"station\":{\"$\":0},\"steam\":{\"$\":0},\"steiermark\":{\"$\":0},\"stjohn\":{\"$\":0},\"stockholm\":{\"$\":0},\"stpetersburg\":{\"$\":0},\"stuttgart\":{\"$\":0},\"suisse\":{\"$\":0},\"surgeonshall\":{\"$\":0},\"surrey\":{\"$\":0},\"svizzera\":{\"$\":0},\"sweden\":{\"$\":0},\"sydney\":{\"$\":0},\"tank\":{\"$\":0},\"tcm\":{\"$\":0},\"technology\":{\"$\":0},\"telekommunikation\":{\"$\":0},\"television\":{\"$\":0},\"texas\":{\"$\":0},\"textile\":{\"$\":0},\"theater\":{\"$\":0},\"time\":{\"$\":0},\"timekeeping\":{\"$\":0},\"topology\":{\"$\":0},\"torino\":{\"$\":0},\"touch\":{\"$\":0},\"town\":{\"$\":0},\"transport\":{\"$\":0},\"tree\":{\"$\":0},\"trolley\":{\"$\":0},\"trust\":{\"$\":0},\"trustee\":{\"$\":0},\"uhren\":{\"$\":0},\"ulm\":{\"$\":0},\"undersea\":{\"$\":0},\"university\":{\"$\":0},\"usa\":{\"$\":0},\"usantiques\":{\"$\":0},\"usarts\":{\"$\":0},\"uscountryestate\":{\"$\":0},\"usculture\":{\"$\":0},\"usdecorativearts\":{\"$\":0},\"usgarden\":{\"$\":0},\"ushistory\":{\"$\":0},\"ushuaia\":{\"$\":0},\"uslivinghistory\":{\"$\":0},\"utah\":{\"$\":0},\"uvic\":{\"$\":0},\"valley\":{\"$\":0},\"vantaa\":{\"$\":0},\"versailles\":{\"$\":0},\"viking\":{\"$\":0},\"village\":{\"$\":0},\"virginia\":{\"$\":0},\"virtual\":{\"$\":0},\"virtuel\":{\"$\":0},\"vlaanderen\":{\"$\":0},\"volkenkunde\":{\"$\":0},\"wales\":{\"$\":0},\"wallonie\":{\"$\":0},\"war\":{\"$\":0},\"washingtondc\":{\"$\":0},\"watchandclock\":{\"$\":0},\"watch-and-clock\":{\"$\":0},\"western\":{\"$\":0},\"westfalen\":{\"$\":0},\"whaling\":{\"$\":0},\"wildlife\":{\"$\":0},\"williamsburg\":{\"$\":0},\"windmill\":{\"$\":0},\"workshop\":{\"$\":0},\"york\":{\"$\":0},\"yorkshire\":{\"$\":0},\"yosemite\":{\"$\":0},\"youth\":{\"$\":0},\"zoological\":{\"$\":0},\"zoology\":{\"$\":0},\"xn--9dbhblg6di\":{\"$\":0},\"xn--h1aegh\":{\"$\":0}},\"mv\":{\"$\":0,\"aero\":{\"$\":0},\"biz\":{\"$\":0},\"com\":{\"$\":0},\"coop\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"info\":{\"$\":0},\"int\":{\"$\":0},\"mil\":{\"$\":0},\"museum\":{\"$\":0},\"name\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"pro\":{\"$\":0}},\"mw\":{\"$\":0,\"ac\":{\"$\":0},\"biz\":{\"$\":0},\"co\":{\"$\":0},\"com\":{\"$\":0},\"coop\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"int\":{\"$\":0},\"museum\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"mx\":{\"$\":0,\"com\":{\"$\":0},\"org\":{\"$\":0},\"gob\":{\"$\":0},\"edu\":{\"$\":0},\"net\":{\"$\":0},\"blogspot\":{\"$\":0},\"nym\":{\"$\":0}},\"my\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gov\":{\"$\":0},\"edu\":{\"$\":0},\"mil\":{\"$\":0},\"name\":{\"$\":0},\"blogspot\":{\"$\":0}},\"mz\":{\"$\":0,\"ac\":{\"$\":0},\"adv\":{\"$\":0},\"co\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"na\":{\"$\":0,\"info\":{\"$\":0},\"pro\":{\"$\":0},\"name\":{\"$\":0},\"school\":{\"$\":0},\"or\":{\"$\":0},\"dr\":{\"$\":0},\"us\":{\"$\":0},\"mx\":{\"$\":0},\"ca\":{\"$\":0},\"in\":{\"$\":0},\"cc\":{\"$\":0},\"tv\":{\"$\":0},\"ws\":{\"$\":0},\"mobi\":{\"$\":0},\"co\":{\"$\":0},\"com\":{\"$\":0},\"org\":{\"$\":0}},\"name\":{\"$\":0,\"her\":{\"forgot\":{\"$\":0}},\"his\":{\"forgot\":{\"$\":0}}},\"nc\":{\"$\":0,\"asso\":{\"$\":0},\"nom\":{\"$\":0}},\"ne\":{\"$\":0},\"net\":{\"$\":0,\"alwaysdata\":{\"$\":0},\"cloudfront\":{\"$\":0},\"t3l3p0rt\":{\"$\":0},\"myfritz\":{\"$\":0},\"boomla\":{\"$\":0},\"bplaced\":{\"$\":0},\"square7\":{\"$\":0},\"gb\":{\"$\":0},\"hu\":{\"$\":0},\"jp\":{\"$\":0},\"se\":{\"$\":0},\"uk\":{\"$\":0},\"in\":{\"$\":0},\"cloudaccess\":{\"$\":0},\"cdn77-ssl\":{\"$\":0},\"cdn77\":{\"r\":{\"$\":0}},\"feste-ip\":{\"$\":0},\"knx-server\":{\"$\":0},\"static-access\":{\"$\":0},\"cryptonomic\":{\"*\":{\"$\":0}},\"debian\":{\"$\":0},\"at-band-camp\":{\"$\":0},\"blogdns\":{\"$\":0},\"broke-it\":{\"$\":0},\"buyshouses\":{\"$\":0},\"dnsalias\":{\"$\":0},\"dnsdojo\":{\"$\":0},\"does-it\":{\"$\":0},\"dontexist\":{\"$\":0},\"dynalias\":{\"$\":0},\"dynathome\":{\"$\":0},\"endofinternet\":{\"$\":0},\"from-az\":{\"$\":0},\"from-co\":{\"$\":0},\"from-la\":{\"$\":0},\"from-ny\":{\"$\":0},\"gets-it\":{\"$\":0},\"ham-radio-op\":{\"$\":0},\"homeftp\":{\"$\":0},\"homeip\":{\"$\":0},\"homelinux\":{\"$\":0},\"homeunix\":{\"$\":0},\"in-the-band\":{\"$\":0},\"is-a-chef\":{\"$\":0},\"is-a-geek\":{\"$\":0},\"isa-geek\":{\"$\":0},\"kicks-ass\":{\"$\":0},\"office-on-the\":{\"$\":0},\"podzone\":{\"$\":0},\"scrapper-site\":{\"$\":0},\"selfip\":{\"$\":0},\"sells-it\":{\"$\":0},\"servebbs\":{\"$\":0},\"serveftp\":{\"$\":0},\"thruhere\":{\"$\":0},\"webhop\":{\"$\":0},\"definima\":{\"$\":0},\"casacam\":{\"$\":0},\"dynu\":{\"$\":0},\"dynv6\":{\"$\":0},\"twmail\":{\"$\":0},\"ru\":{\"$\":0},\"channelsdvr\":{\"$\":0},\"fastlylb\":{\"$\":0,\"map\":{\"$\":0}},\"fastly\":{\"freetls\":{\"$\":0},\"map\":{\"$\":0},\"prod\":{\"a\":{\"$\":0},\"global\":{\"$\":0}},\"ssl\":{\"a\":{\"$\":0},\"b\":{\"$\":0},\"global\":{\"$\":0}}},\"flynnhosting\":{\"$\":0},\"cloudfunctions\":{\"$\":0},\"moonscale\":{\"$\":0},\"ipifony\":{\"$\":0},\"barsy\":{\"$\":0},\"azurewebsites\":{\"$\":0},\"azure-mobile\":{\"$\":0},\"cloudapp\":{\"$\":0},\"eating-organic\":{\"$\":0},\"mydissent\":{\"$\":0},\"myeffect\":{\"$\":0},\"mymediapc\":{\"$\":0},\"mypsx\":{\"$\":0},\"mysecuritycamera\":{\"$\":0},\"nhlfan\":{\"$\":0},\"no-ip\":{\"$\":0},\"pgafan\":{\"$\":0},\"privatizehealthinsurance\":{\"$\":0},\"bounceme\":{\"$\":0},\"ddns\":{\"$\":0},\"redirectme\":{\"$\":0},\"serveblog\":{\"$\":0},\"serveminecraft\":{\"$\":0},\"sytes\":{\"$\":0},\"rackmaze\":{\"$\":0},\"firewall-gateway\":{\"$\":0},\"dsmynas\":{\"$\":0},\"familyds\":{\"$\":0},\"za\":{\"$\":0}},\"nf\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"per\":{\"$\":0},\"rec\":{\"$\":0},\"web\":{\"$\":0},\"arts\":{\"$\":0},\"firm\":{\"$\":0},\"info\":{\"$\":0},\"other\":{\"$\":0},\"store\":{\"$\":0}},\"ng\":{\"$\":0,\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"i\":{\"$\":0},\"mil\":{\"$\":0},\"mobi\":{\"$\":0},\"name\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"sch\":{\"$\":0}},\"ni\":{\"$\":0,\"ac\":{\"$\":0},\"biz\":{\"$\":0},\"co\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gob\":{\"$\":0},\"in\":{\"$\":0},\"info\":{\"$\":0},\"int\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"nom\":{\"$\":0},\"org\":{\"$\":0},\"web\":{\"$\":0}},\"nl\":{\"$\":0,\"bv\":{\"$\":0},\"virtueeldomein\":{\"$\":0},\"co\":{\"$\":0},\"hosting-cluster\":{\"$\":0},\"blogspot\":{\"$\":0},\"transurl\":{\"*\":{\"$\":0}},\"cistron\":{\"$\":0},\"demon\":{\"$\":0}},\"no\":{\"$\":0,\"fhs\":{\"$\":0},\"vgs\":{\"$\":0},\"fylkesbibl\":{\"$\":0},\"folkebibl\":{\"$\":0},\"museum\":{\"$\":0},\"idrett\":{\"$\":0},\"priv\":{\"$\":0},\"mil\":{\"$\":0},\"stat\":{\"$\":0},\"dep\":{\"$\":0},\"kommune\":{\"$\":0},\"herad\":{\"$\":0},\"aa\":{\"$\":0,\"gs\":{\"$\":0}},\"ah\":{\"$\":0,\"gs\":{\"$\":0}},\"bu\":{\"$\":0,\"gs\":{\"$\":0}},\"fm\":{\"$\":0,\"gs\":{\"$\":0}},\"hl\":{\"$\":0,\"gs\":{\"$\":0}},\"hm\":{\"$\":0,\"gs\":{\"$\":0}},\"jan-mayen\":{\"$\":0,\"gs\":{\"$\":0}},\"mr\":{\"$\":0,\"gs\":{\"$\":0}},\"nl\":{\"$\":0,\"gs\":{\"$\":0}},\"nt\":{\"$\":0,\"gs\":{\"$\":0}},\"of\":{\"$\":0,\"gs\":{\"$\":0}},\"ol\":{\"$\":0,\"gs\":{\"$\":0}},\"oslo\":{\"$\":0,\"gs\":{\"$\":0}},\"rl\":{\"$\":0,\"gs\":{\"$\":0}},\"sf\":{\"$\":0,\"gs\":{\"$\":0}},\"st\":{\"$\":0,\"gs\":{\"$\":0}},\"svalbard\":{\"$\":0,\"gs\":{\"$\":0}},\"tm\":{\"$\":0,\"gs\":{\"$\":0}},\"tr\":{\"$\":0,\"gs\":{\"$\":0}},\"va\":{\"$\":0,\"gs\":{\"$\":0}},\"vf\":{\"$\":0,\"gs\":{\"$\":0}},\"akrehamn\":{\"$\":0},\"xn--krehamn-dxa\":{\"$\":0},\"algard\":{\"$\":0},\"xn--lgrd-poac\":{\"$\":0},\"arna\":{\"$\":0},\"brumunddal\":{\"$\":0},\"bryne\":{\"$\":0},\"bronnoysund\":{\"$\":0},\"xn--brnnysund-m8ac\":{\"$\":0},\"drobak\":{\"$\":0},\"xn--drbak-wua\":{\"$\":0},\"egersund\":{\"$\":0},\"fetsund\":{\"$\":0},\"floro\":{\"$\":0},\"xn--flor-jra\":{\"$\":0},\"fredrikstad\":{\"$\":0},\"hokksund\":{\"$\":0},\"honefoss\":{\"$\":0},\"xn--hnefoss-q1a\":{\"$\":0},\"jessheim\":{\"$\":0},\"jorpeland\":{\"$\":0},\"xn--jrpeland-54a\":{\"$\":0},\"kirkenes\":{\"$\":0},\"kopervik\":{\"$\":0},\"krokstadelva\":{\"$\":0},\"langevag\":{\"$\":0},\"xn--langevg-jxa\":{\"$\":0},\"leirvik\":{\"$\":0},\"mjondalen\":{\"$\":0},\"xn--mjndalen-64a\":{\"$\":0},\"mo-i-rana\":{\"$\":0},\"mosjoen\":{\"$\":0},\"xn--mosjen-eya\":{\"$\":0},\"nesoddtangen\":{\"$\":0},\"orkanger\":{\"$\":0},\"osoyro\":{\"$\":0},\"xn--osyro-wua\":{\"$\":0},\"raholt\":{\"$\":0},\"xn--rholt-mra\":{\"$\":0},\"sandnessjoen\":{\"$\":0},\"xn--sandnessjen-ogb\":{\"$\":0},\"skedsmokorset\":{\"$\":0},\"slattum\":{\"$\":0},\"spjelkavik\":{\"$\":0},\"stathelle\":{\"$\":0},\"stavern\":{\"$\":0},\"stjordalshalsen\":{\"$\":0},\"xn--stjrdalshalsen-sqb\":{\"$\":0},\"tananger\":{\"$\":0},\"tranby\":{\"$\":0},\"vossevangen\":{\"$\":0},\"afjord\":{\"$\":0},\"xn--fjord-lra\":{\"$\":0},\"agdenes\":{\"$\":0},\"al\":{\"$\":0},\"xn--l-1fa\":{\"$\":0},\"alesund\":{\"$\":0},\"xn--lesund-hua\":{\"$\":0},\"alstahaug\":{\"$\":0},\"alta\":{\"$\":0},\"xn--lt-liac\":{\"$\":0},\"alaheadju\":{\"$\":0},\"xn--laheadju-7ya\":{\"$\":0},\"alvdal\":{\"$\":0},\"amli\":{\"$\":0},\"xn--mli-tla\":{\"$\":0},\"amot\":{\"$\":0},\"xn--mot-tla\":{\"$\":0},\"andebu\":{\"$\":0},\"andoy\":{\"$\":0},\"xn--andy-ira\":{\"$\":0},\"andasuolo\":{\"$\":0},\"ardal\":{\"$\":0},\"xn--rdal-poa\":{\"$\":0},\"aremark\":{\"$\":0},\"arendal\":{\"$\":0},\"xn--s-1fa\":{\"$\":0},\"aseral\":{\"$\":0},\"xn--seral-lra\":{\"$\":0},\"asker\":{\"$\":0},\"askim\":{\"$\":0},\"askvoll\":{\"$\":0},\"askoy\":{\"$\":0},\"xn--asky-ira\":{\"$\":0},\"asnes\":{\"$\":0},\"xn--snes-poa\":{\"$\":0},\"audnedaln\":{\"$\":0},\"aukra\":{\"$\":0},\"aure\":{\"$\":0},\"aurland\":{\"$\":0},\"aurskog-holand\":{\"$\":0},\"xn--aurskog-hland-jnb\":{\"$\":0},\"austevoll\":{\"$\":0},\"austrheim\":{\"$\":0},\"averoy\":{\"$\":0},\"xn--avery-yua\":{\"$\":0},\"balestrand\":{\"$\":0},\"ballangen\":{\"$\":0},\"balat\":{\"$\":0},\"xn--blt-elab\":{\"$\":0},\"balsfjord\":{\"$\":0},\"bahccavuotna\":{\"$\":0},\"xn--bhccavuotna-k7a\":{\"$\":0},\"bamble\":{\"$\":0},\"bardu\":{\"$\":0},\"beardu\":{\"$\":0},\"beiarn\":{\"$\":0},\"bajddar\":{\"$\":0},\"xn--bjddar-pta\":{\"$\":0},\"baidar\":{\"$\":0},\"xn--bidr-5nac\":{\"$\":0},\"berg\":{\"$\":0},\"bergen\":{\"$\":0},\"berlevag\":{\"$\":0},\"xn--berlevg-jxa\":{\"$\":0},\"bearalvahki\":{\"$\":0},\"xn--bearalvhki-y4a\":{\"$\":0},\"bindal\":{\"$\":0},\"birkenes\":{\"$\":0},\"bjarkoy\":{\"$\":0},\"xn--bjarky-fya\":{\"$\":0},\"bjerkreim\":{\"$\":0},\"bjugn\":{\"$\":0},\"bodo\":{\"$\":0},\"xn--bod-2na\":{\"$\":0},\"badaddja\":{\"$\":0},\"xn--bdddj-mrabd\":{\"$\":0},\"budejju\":{\"$\":0},\"bokn\":{\"$\":0},\"bremanger\":{\"$\":0},\"bronnoy\":{\"$\":0},\"xn--brnny-wuac\":{\"$\":0},\"bygland\":{\"$\":0},\"bykle\":{\"$\":0},\"barum\":{\"$\":0},\"xn--brum-voa\":{\"$\":0},\"telemark\":{\"bo\":{\"$\":0},\"xn--b-5ga\":{\"$\":0}},\"nordland\":{\"bo\":{\"$\":0},\"xn--b-5ga\":{\"$\":0},\"heroy\":{\"$\":0},\"xn--hery-ira\":{\"$\":0}},\"bievat\":{\"$\":0},\"xn--bievt-0qa\":{\"$\":0},\"bomlo\":{\"$\":0},\"xn--bmlo-gra\":{\"$\":0},\"batsfjord\":{\"$\":0},\"xn--btsfjord-9za\":{\"$\":0},\"bahcavuotna\":{\"$\":0},\"xn--bhcavuotna-s4a\":{\"$\":0},\"dovre\":{\"$\":0},\"drammen\":{\"$\":0},\"drangedal\":{\"$\":0},\"dyroy\":{\"$\":0},\"xn--dyry-ira\":{\"$\":0},\"donna\":{\"$\":0},\"xn--dnna-gra\":{\"$\":0},\"eid\":{\"$\":0},\"eidfjord\":{\"$\":0},\"eidsberg\":{\"$\":0},\"eidskog\":{\"$\":0},\"eidsvoll\":{\"$\":0},\"eigersund\":{\"$\":0},\"elverum\":{\"$\":0},\"enebakk\":{\"$\":0},\"engerdal\":{\"$\":0},\"etne\":{\"$\":0},\"etnedal\":{\"$\":0},\"evenes\":{\"$\":0},\"evenassi\":{\"$\":0},\"xn--eveni-0qa01ga\":{\"$\":0},\"evje-og-hornnes\":{\"$\":0},\"farsund\":{\"$\":0},\"fauske\":{\"$\":0},\"fuossko\":{\"$\":0},\"fuoisku\":{\"$\":0},\"fedje\":{\"$\":0},\"fet\":{\"$\":0},\"finnoy\":{\"$\":0},\"xn--finny-yua\":{\"$\":0},\"fitjar\":{\"$\":0},\"fjaler\":{\"$\":0},\"fjell\":{\"$\":0},\"flakstad\":{\"$\":0},\"flatanger\":{\"$\":0},\"flekkefjord\":{\"$\":0},\"flesberg\":{\"$\":0},\"flora\":{\"$\":0},\"fla\":{\"$\":0},\"xn--fl-zia\":{\"$\":0},\"folldal\":{\"$\":0},\"forsand\":{\"$\":0},\"fosnes\":{\"$\":0},\"frei\":{\"$\":0},\"frogn\":{\"$\":0},\"froland\":{\"$\":0},\"frosta\":{\"$\":0},\"frana\":{\"$\":0},\"xn--frna-woa\":{\"$\":0},\"froya\":{\"$\":0},\"xn--frya-hra\":{\"$\":0},\"fusa\":{\"$\":0},\"fyresdal\":{\"$\":0},\"forde\":{\"$\":0},\"xn--frde-gra\":{\"$\":0},\"gamvik\":{\"$\":0},\"gangaviika\":{\"$\":0},\"xn--ggaviika-8ya47h\":{\"$\":0},\"gaular\":{\"$\":0},\"gausdal\":{\"$\":0},\"gildeskal\":{\"$\":0},\"xn--gildeskl-g0a\":{\"$\":0},\"giske\":{\"$\":0},\"gjemnes\":{\"$\":0},\"gjerdrum\":{\"$\":0},\"gjerstad\":{\"$\":0},\"gjesdal\":{\"$\":0},\"gjovik\":{\"$\":0},\"xn--gjvik-wua\":{\"$\":0},\"gloppen\":{\"$\":0},\"gol\":{\"$\":0},\"gran\":{\"$\":0},\"grane\":{\"$\":0},\"granvin\":{\"$\":0},\"gratangen\":{\"$\":0},\"grimstad\":{\"$\":0},\"grong\":{\"$\":0},\"kraanghke\":{\"$\":0},\"xn--kranghke-b0a\":{\"$\":0},\"grue\":{\"$\":0},\"gulen\":{\"$\":0},\"hadsel\":{\"$\":0},\"halden\":{\"$\":0},\"halsa\":{\"$\":0},\"hamar\":{\"$\":0},\"hamaroy\":{\"$\":0},\"habmer\":{\"$\":0},\"xn--hbmer-xqa\":{\"$\":0},\"hapmir\":{\"$\":0},\"xn--hpmir-xqa\":{\"$\":0},\"hammerfest\":{\"$\":0},\"hammarfeasta\":{\"$\":0},\"xn--hmmrfeasta-s4ac\":{\"$\":0},\"haram\":{\"$\":0},\"hareid\":{\"$\":0},\"harstad\":{\"$\":0},\"hasvik\":{\"$\":0},\"aknoluokta\":{\"$\":0},\"xn--koluokta-7ya57h\":{\"$\":0},\"hattfjelldal\":{\"$\":0},\"aarborte\":{\"$\":0},\"haugesund\":{\"$\":0},\"hemne\":{\"$\":0},\"hemnes\":{\"$\":0},\"hemsedal\":{\"$\":0},\"more-og-romsdal\":{\"heroy\":{\"$\":0},\"sande\":{\"$\":0}},\"xn--mre-og-romsdal-qqb\":{\"xn--hery-ira\":{\"$\":0},\"sande\":{\"$\":0}},\"hitra\":{\"$\":0},\"hjartdal\":{\"$\":0},\"hjelmeland\":{\"$\":0},\"hobol\":{\"$\":0},\"xn--hobl-ira\":{\"$\":0},\"hof\":{\"$\":0},\"hol\":{\"$\":0},\"hole\":{\"$\":0},\"holmestrand\":{\"$\":0},\"holtalen\":{\"$\":0},\"xn--holtlen-hxa\":{\"$\":0},\"hornindal\":{\"$\":0},\"horten\":{\"$\":0},\"hurdal\":{\"$\":0},\"hurum\":{\"$\":0},\"hvaler\":{\"$\":0},\"hyllestad\":{\"$\":0},\"hagebostad\":{\"$\":0},\"xn--hgebostad-g3a\":{\"$\":0},\"hoyanger\":{\"$\":0},\"xn--hyanger-q1a\":{\"$\":0},\"hoylandet\":{\"$\":0},\"xn--hylandet-54a\":{\"$\":0},\"ha\":{\"$\":0},\"xn--h-2fa\":{\"$\":0},\"ibestad\":{\"$\":0},\"inderoy\":{\"$\":0},\"xn--indery-fya\":{\"$\":0},\"iveland\":{\"$\":0},\"jevnaker\":{\"$\":0},\"jondal\":{\"$\":0},\"jolster\":{\"$\":0},\"xn--jlster-bya\":{\"$\":0},\"karasjok\":{\"$\":0},\"karasjohka\":{\"$\":0},\"xn--krjohka-hwab49j\":{\"$\":0},\"karlsoy\":{\"$\":0},\"galsa\":{\"$\":0},\"xn--gls-elac\":{\"$\":0},\"karmoy\":{\"$\":0},\"xn--karmy-yua\":{\"$\":0},\"kautokeino\":{\"$\":0},\"guovdageaidnu\":{\"$\":0},\"klepp\":{\"$\":0},\"klabu\":{\"$\":0},\"xn--klbu-woa\":{\"$\":0},\"kongsberg\":{\"$\":0},\"kongsvinger\":{\"$\":0},\"kragero\":{\"$\":0},\"xn--krager-gya\":{\"$\":0},\"kristiansand\":{\"$\":0},\"kristiansund\":{\"$\":0},\"krodsherad\":{\"$\":0},\"xn--krdsherad-m8a\":{\"$\":0},\"kvalsund\":{\"$\":0},\"rahkkeravju\":{\"$\":0},\"xn--rhkkervju-01af\":{\"$\":0},\"kvam\":{\"$\":0},\"kvinesdal\":{\"$\":0},\"kvinnherad\":{\"$\":0},\"kviteseid\":{\"$\":0},\"kvitsoy\":{\"$\":0},\"xn--kvitsy-fya\":{\"$\":0},\"kvafjord\":{\"$\":0},\"xn--kvfjord-nxa\":{\"$\":0},\"giehtavuoatna\":{\"$\":0},\"kvanangen\":{\"$\":0},\"xn--kvnangen-k0a\":{\"$\":0},\"navuotna\":{\"$\":0},\"xn--nvuotna-hwa\":{\"$\":0},\"kafjord\":{\"$\":0},\"xn--kfjord-iua\":{\"$\":0},\"gaivuotna\":{\"$\":0},\"xn--givuotna-8ya\":{\"$\":0},\"larvik\":{\"$\":0},\"lavangen\":{\"$\":0},\"lavagis\":{\"$\":0},\"loabat\":{\"$\":0},\"xn--loabt-0qa\":{\"$\":0},\"lebesby\":{\"$\":0},\"davvesiida\":{\"$\":0},\"leikanger\":{\"$\":0},\"leirfjord\":{\"$\":0},\"leka\":{\"$\":0},\"leksvik\":{\"$\":0},\"lenvik\":{\"$\":0},\"leangaviika\":{\"$\":0},\"xn--leagaviika-52b\":{\"$\":0},\"lesja\":{\"$\":0},\"levanger\":{\"$\":0},\"lier\":{\"$\":0},\"lierne\":{\"$\":0},\"lillehammer\":{\"$\":0},\"lillesand\":{\"$\":0},\"lindesnes\":{\"$\":0},\"lindas\":{\"$\":0},\"xn--linds-pra\":{\"$\":0},\"lom\":{\"$\":0},\"loppa\":{\"$\":0},\"lahppi\":{\"$\":0},\"xn--lhppi-xqa\":{\"$\":0},\"lund\":{\"$\":0},\"lunner\":{\"$\":0},\"luroy\":{\"$\":0},\"xn--lury-ira\":{\"$\":0},\"luster\":{\"$\":0},\"lyngdal\":{\"$\":0},\"lyngen\":{\"$\":0},\"ivgu\":{\"$\":0},\"lardal\":{\"$\":0},\"lerdal\":{\"$\":0},\"xn--lrdal-sra\":{\"$\":0},\"lodingen\":{\"$\":0},\"xn--ldingen-q1a\":{\"$\":0},\"lorenskog\":{\"$\":0},\"xn--lrenskog-54a\":{\"$\":0},\"loten\":{\"$\":0},\"xn--lten-gra\":{\"$\":0},\"malvik\":{\"$\":0},\"masoy\":{\"$\":0},\"xn--msy-ula0h\":{\"$\":0},\"muosat\":{\"$\":0},\"xn--muost-0qa\":{\"$\":0},\"mandal\":{\"$\":0},\"marker\":{\"$\":0},\"marnardal\":{\"$\":0},\"masfjorden\":{\"$\":0},\"meland\":{\"$\":0},\"meldal\":{\"$\":0},\"melhus\":{\"$\":0},\"meloy\":{\"$\":0},\"xn--mely-ira\":{\"$\":0},\"meraker\":{\"$\":0},\"xn--merker-kua\":{\"$\":0},\"moareke\":{\"$\":0},\"xn--moreke-jua\":{\"$\":0},\"midsund\":{\"$\":0},\"midtre-gauldal\":{\"$\":0},\"modalen\":{\"$\":0},\"modum\":{\"$\":0},\"molde\":{\"$\":0},\"moskenes\":{\"$\":0},\"moss\":{\"$\":0},\"mosvik\":{\"$\":0},\"malselv\":{\"$\":0},\"xn--mlselv-iua\":{\"$\":0},\"malatvuopmi\":{\"$\":0},\"xn--mlatvuopmi-s4a\":{\"$\":0},\"namdalseid\":{\"$\":0},\"aejrie\":{\"$\":0},\"namsos\":{\"$\":0},\"namsskogan\":{\"$\":0},\"naamesjevuemie\":{\"$\":0},\"xn--nmesjevuemie-tcba\":{\"$\":0},\"laakesvuemie\":{\"$\":0},\"nannestad\":{\"$\":0},\"narvik\":{\"$\":0},\"narviika\":{\"$\":0},\"naustdal\":{\"$\":0},\"nedre-eiker\":{\"$\":0},\"akershus\":{\"nes\":{\"$\":0}},\"buskerud\":{\"nes\":{\"$\":0}},\"nesna\":{\"$\":0},\"nesodden\":{\"$\":0},\"nesseby\":{\"$\":0},\"unjarga\":{\"$\":0},\"xn--unjrga-rta\":{\"$\":0},\"nesset\":{\"$\":0},\"nissedal\":{\"$\":0},\"nittedal\":{\"$\":0},\"nord-aurdal\":{\"$\":0},\"nord-fron\":{\"$\":0},\"nord-odal\":{\"$\":0},\"norddal\":{\"$\":0},\"nordkapp\":{\"$\":0},\"davvenjarga\":{\"$\":0},\"xn--davvenjrga-y4a\":{\"$\":0},\"nordre-land\":{\"$\":0},\"nordreisa\":{\"$\":0},\"raisa\":{\"$\":0},\"xn--risa-5na\":{\"$\":0},\"nore-og-uvdal\":{\"$\":0},\"notodden\":{\"$\":0},\"naroy\":{\"$\":0},\"xn--nry-yla5g\":{\"$\":0},\"notteroy\":{\"$\":0},\"xn--nttery-byae\":{\"$\":0},\"odda\":{\"$\":0},\"oksnes\":{\"$\":0},\"xn--ksnes-uua\":{\"$\":0},\"oppdal\":{\"$\":0},\"oppegard\":{\"$\":0},\"xn--oppegrd-ixa\":{\"$\":0},\"orkdal\":{\"$\":0},\"orland\":{\"$\":0},\"xn--rland-uua\":{\"$\":0},\"orskog\":{\"$\":0},\"xn--rskog-uua\":{\"$\":0},\"orsta\":{\"$\":0},\"xn--rsta-fra\":{\"$\":0},\"hedmark\":{\"os\":{\"$\":0},\"valer\":{\"$\":0},\"xn--vler-qoa\":{\"$\":0}},\"hordaland\":{\"os\":{\"$\":0}},\"osen\":{\"$\":0},\"osteroy\":{\"$\":0},\"xn--ostery-fya\":{\"$\":0},\"ostre-toten\":{\"$\":0},\"xn--stre-toten-zcb\":{\"$\":0},\"overhalla\":{\"$\":0},\"ovre-eiker\":{\"$\":0},\"xn--vre-eiker-k8a\":{\"$\":0},\"oyer\":{\"$\":0},\"xn--yer-zna\":{\"$\":0},\"oygarden\":{\"$\":0},\"xn--ygarden-p1a\":{\"$\":0},\"oystre-slidre\":{\"$\":0},\"xn--ystre-slidre-ujb\":{\"$\":0},\"porsanger\":{\"$\":0},\"porsangu\":{\"$\":0},\"xn--porsgu-sta26f\":{\"$\":0},\"porsgrunn\":{\"$\":0},\"radoy\":{\"$\":0},\"xn--rady-ira\":{\"$\":0},\"rakkestad\":{\"$\":0},\"rana\":{\"$\":0},\"ruovat\":{\"$\":0},\"randaberg\":{\"$\":0},\"rauma\":{\"$\":0},\"rendalen\":{\"$\":0},\"rennebu\":{\"$\":0},\"rennesoy\":{\"$\":0},\"xn--rennesy-v1a\":{\"$\":0},\"rindal\":{\"$\":0},\"ringebu\":{\"$\":0},\"ringerike\":{\"$\":0},\"ringsaker\":{\"$\":0},\"rissa\":{\"$\":0},\"risor\":{\"$\":0},\"xn--risr-ira\":{\"$\":0},\"roan\":{\"$\":0},\"rollag\":{\"$\":0},\"rygge\":{\"$\":0},\"ralingen\":{\"$\":0},\"xn--rlingen-mxa\":{\"$\":0},\"rodoy\":{\"$\":0},\"xn--rdy-0nab\":{\"$\":0},\"romskog\":{\"$\":0},\"xn--rmskog-bya\":{\"$\":0},\"roros\":{\"$\":0},\"xn--rros-gra\":{\"$\":0},\"rost\":{\"$\":0},\"xn--rst-0na\":{\"$\":0},\"royken\":{\"$\":0},\"xn--ryken-vua\":{\"$\":0},\"royrvik\":{\"$\":0},\"xn--ryrvik-bya\":{\"$\":0},\"rade\":{\"$\":0},\"xn--rde-ula\":{\"$\":0},\"salangen\":{\"$\":0},\"siellak\":{\"$\":0},\"saltdal\":{\"$\":0},\"salat\":{\"$\":0},\"xn--slt-elab\":{\"$\":0},\"xn--slat-5na\":{\"$\":0},\"samnanger\":{\"$\":0},\"vestfold\":{\"sande\":{\"$\":0}},\"sandefjord\":{\"$\":0},\"sandnes\":{\"$\":0},\"sandoy\":{\"$\":0},\"xn--sandy-yua\":{\"$\":0},\"sarpsborg\":{\"$\":0},\"sauda\":{\"$\":0},\"sauherad\":{\"$\":0},\"sel\":{\"$\":0},\"selbu\":{\"$\":0},\"selje\":{\"$\":0},\"seljord\":{\"$\":0},\"sigdal\":{\"$\":0},\"siljan\":{\"$\":0},\"sirdal\":{\"$\":0},\"skaun\":{\"$\":0},\"skedsmo\":{\"$\":0},\"ski\":{\"$\":0},\"skien\":{\"$\":0},\"skiptvet\":{\"$\":0},\"skjervoy\":{\"$\":0},\"xn--skjervy-v1a\":{\"$\":0},\"skierva\":{\"$\":0},\"xn--skierv-uta\":{\"$\":0},\"skjak\":{\"$\":0},\"xn--skjk-soa\":{\"$\":0},\"skodje\":{\"$\":0},\"skanland\":{\"$\":0},\"xn--sknland-fxa\":{\"$\":0},\"skanit\":{\"$\":0},\"xn--sknit-yqa\":{\"$\":0},\"smola\":{\"$\":0},\"xn--smla-hra\":{\"$\":0},\"snillfjord\":{\"$\":0},\"snasa\":{\"$\":0},\"xn--snsa-roa\":{\"$\":0},\"snoasa\":{\"$\":0},\"snaase\":{\"$\":0},\"xn--snase-nra\":{\"$\":0},\"sogndal\":{\"$\":0},\"sokndal\":{\"$\":0},\"sola\":{\"$\":0},\"solund\":{\"$\":0},\"songdalen\":{\"$\":0},\"sortland\":{\"$\":0},\"spydeberg\":{\"$\":0},\"stange\":{\"$\":0},\"stavanger\":{\"$\":0},\"steigen\":{\"$\":0},\"steinkjer\":{\"$\":0},\"stjordal\":{\"$\":0},\"xn--stjrdal-s1a\":{\"$\":0},\"stokke\":{\"$\":0},\"stor-elvdal\":{\"$\":0},\"stord\":{\"$\":0},\"stordal\":{\"$\":0},\"storfjord\":{\"$\":0},\"omasvuotna\":{\"$\":0},\"strand\":{\"$\":0},\"stranda\":{\"$\":0},\"stryn\":{\"$\":0},\"sula\":{\"$\":0},\"suldal\":{\"$\":0},\"sund\":{\"$\":0},\"sunndal\":{\"$\":0},\"surnadal\":{\"$\":0},\"sveio\":{\"$\":0},\"svelvik\":{\"$\":0},\"sykkylven\":{\"$\":0},\"sogne\":{\"$\":0},\"xn--sgne-gra\":{\"$\":0},\"somna\":{\"$\":0},\"xn--smna-gra\":{\"$\":0},\"sondre-land\":{\"$\":0},\"xn--sndre-land-0cb\":{\"$\":0},\"sor-aurdal\":{\"$\":0},\"xn--sr-aurdal-l8a\":{\"$\":0},\"sor-fron\":{\"$\":0},\"xn--sr-fron-q1a\":{\"$\":0},\"sor-odal\":{\"$\":0},\"xn--sr-odal-q1a\":{\"$\":0},\"sor-varanger\":{\"$\":0},\"xn--sr-varanger-ggb\":{\"$\":0},\"matta-varjjat\":{\"$\":0},\"xn--mtta-vrjjat-k7af\":{\"$\":0},\"sorfold\":{\"$\":0},\"xn--srfold-bya\":{\"$\":0},\"sorreisa\":{\"$\":0},\"xn--srreisa-q1a\":{\"$\":0},\"sorum\":{\"$\":0},\"xn--srum-gra\":{\"$\":0},\"tana\":{\"$\":0},\"deatnu\":{\"$\":0},\"time\":{\"$\":0},\"tingvoll\":{\"$\":0},\"tinn\":{\"$\":0},\"tjeldsund\":{\"$\":0},\"dielddanuorri\":{\"$\":0},\"tjome\":{\"$\":0},\"xn--tjme-hra\":{\"$\":0},\"tokke\":{\"$\":0},\"tolga\":{\"$\":0},\"torsken\":{\"$\":0},\"tranoy\":{\"$\":0},\"xn--trany-yua\":{\"$\":0},\"tromso\":{\"$\":0},\"xn--troms-zua\":{\"$\":0},\"tromsa\":{\"$\":0},\"romsa\":{\"$\":0},\"trondheim\":{\"$\":0},\"troandin\":{\"$\":0},\"trysil\":{\"$\":0},\"trana\":{\"$\":0},\"xn--trna-woa\":{\"$\":0},\"trogstad\":{\"$\":0},\"xn--trgstad-r1a\":{\"$\":0},\"tvedestrand\":{\"$\":0},\"tydal\":{\"$\":0},\"tynset\":{\"$\":0},\"tysfjord\":{\"$\":0},\"divtasvuodna\":{\"$\":0},\"divttasvuotna\":{\"$\":0},\"tysnes\":{\"$\":0},\"tysvar\":{\"$\":0},\"xn--tysvr-vra\":{\"$\":0},\"tonsberg\":{\"$\":0},\"xn--tnsberg-q1a\":{\"$\":0},\"ullensaker\":{\"$\":0},\"ullensvang\":{\"$\":0},\"ulvik\":{\"$\":0},\"utsira\":{\"$\":0},\"vadso\":{\"$\":0},\"xn--vads-jra\":{\"$\":0},\"cahcesuolo\":{\"$\":0},\"xn--hcesuolo-7ya35b\":{\"$\":0},\"vaksdal\":{\"$\":0},\"valle\":{\"$\":0},\"vang\":{\"$\":0},\"vanylven\":{\"$\":0},\"vardo\":{\"$\":0},\"xn--vard-jra\":{\"$\":0},\"varggat\":{\"$\":0},\"xn--vrggt-xqad\":{\"$\":0},\"vefsn\":{\"$\":0},\"vaapste\":{\"$\":0},\"vega\":{\"$\":0},\"vegarshei\":{\"$\":0},\"xn--vegrshei-c0a\":{\"$\":0},\"vennesla\":{\"$\":0},\"verdal\":{\"$\":0},\"verran\":{\"$\":0},\"vestby\":{\"$\":0},\"vestnes\":{\"$\":0},\"vestre-slidre\":{\"$\":0},\"vestre-toten\":{\"$\":0},\"vestvagoy\":{\"$\":0},\"xn--vestvgy-ixa6o\":{\"$\":0},\"vevelstad\":{\"$\":0},\"vik\":{\"$\":0},\"vikna\":{\"$\":0},\"vindafjord\":{\"$\":0},\"volda\":{\"$\":0},\"voss\":{\"$\":0},\"varoy\":{\"$\":0},\"xn--vry-yla5g\":{\"$\":0},\"vagan\":{\"$\":0},\"xn--vgan-qoa\":{\"$\":0},\"voagat\":{\"$\":0},\"vagsoy\":{\"$\":0},\"xn--vgsy-qoa0j\":{\"$\":0},\"vaga\":{\"$\":0},\"xn--vg-yiab\":{\"$\":0},\"ostfold\":{\"valer\":{\"$\":0}},\"xn--stfold-9xa\":{\"xn--vler-qoa\":{\"$\":0}},\"co\":{\"$\":0},\"blogspot\":{\"$\":0}},\"np\":{\"*\":{\"$\":0}},\"nr\":{\"$\":0,\"biz\":{\"$\":0},\"info\":{\"$\":0},\"gov\":{\"$\":0},\"edu\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0},\"com\":{\"$\":0}},\"nu\":{\"$\":0,\"merseine\":{\"$\":0},\"mine\":{\"$\":0},\"shacknet\":{\"$\":0},\"nom\":{\"$\":0}},\"nz\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0,\"blogspot\":{\"$\":0}},\"cri\":{\"$\":0},\"geek\":{\"$\":0},\"gen\":{\"$\":0},\"govt\":{\"$\":0},\"health\":{\"$\":0},\"iwi\":{\"$\":0},\"kiwi\":{\"$\":0},\"maori\":{\"$\":0},\"mil\":{\"$\":0},\"xn--mori-qsa\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"parliament\":{\"$\":0},\"school\":{\"$\":0},\"nym\":{\"$\":0}},\"om\":{\"$\":0,\"co\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"med\":{\"$\":0},\"museum\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"pro\":{\"$\":0}},\"onion\":{\"$\":0},\"org\":{\"$\":0,\"amune\":{\"tele\":{\"$\":0}},\"pimienta\":{\"$\":0},\"poivron\":{\"$\":0},\"potager\":{\"$\":0},\"sweetpepper\":{\"$\":0},\"ae\":{\"$\":0},\"us\":{\"$\":0},\"certmgr\":{\"$\":0},\"cdn77\":{\"c\":{\"$\":0},\"rsc\":{\"$\":0}},\"cdn77-secure\":{\"origin\":{\"ssl\":{\"$\":0}}},\"cloudns\":{\"$\":0},\"duckdns\":{\"$\":0},\"tunk\":{\"$\":0},\"dyndns\":{\"$\":0,\"go\":{\"$\":0},\"home\":{\"$\":0}},\"blogdns\":{\"$\":0},\"blogsite\":{\"$\":0},\"boldlygoingnowhere\":{\"$\":0},\"dnsalias\":{\"$\":0},\"dnsdojo\":{\"$\":0},\"doesntexist\":{\"$\":0},\"dontexist\":{\"$\":0},\"doomdns\":{\"$\":0},\"dvrdns\":{\"$\":0},\"dynalias\":{\"$\":0},\"endofinternet\":{\"$\":0},\"endoftheinternet\":{\"$\":0},\"from-me\":{\"$\":0},\"game-host\":{\"$\":0},\"gotdns\":{\"$\":0},\"hobby-site\":{\"$\":0},\"homedns\":{\"$\":0},\"homeftp\":{\"$\":0},\"homelinux\":{\"$\":0},\"homeunix\":{\"$\":0},\"is-a-bruinsfan\":{\"$\":0},\"is-a-candidate\":{\"$\":0},\"is-a-celticsfan\":{\"$\":0},\"is-a-chef\":{\"$\":0},\"is-a-geek\":{\"$\":0},\"is-a-knight\":{\"$\":0},\"is-a-linux-user\":{\"$\":0},\"is-a-patsfan\":{\"$\":0},\"is-a-soxfan\":{\"$\":0},\"is-found\":{\"$\":0},\"is-lost\":{\"$\":0},\"is-saved\":{\"$\":0},\"is-very-bad\":{\"$\":0},\"is-very-evil\":{\"$\":0},\"is-very-good\":{\"$\":0},\"is-very-nice\":{\"$\":0},\"is-very-sweet\":{\"$\":0},\"isa-geek\":{\"$\":0},\"kicks-ass\":{\"$\":0},\"misconfused\":{\"$\":0},\"podzone\":{\"$\":0},\"readmyblog\":{\"$\":0},\"selfip\":{\"$\":0},\"sellsyourhome\":{\"$\":0},\"servebbs\":{\"$\":0},\"serveftp\":{\"$\":0},\"servegame\":{\"$\":0},\"stuff-4-sale\":{\"$\":0},\"webhop\":{\"$\":0},\"ddnss\":{\"$\":0},\"accesscam\":{\"$\":0},\"camdvr\":{\"$\":0},\"freeddns\":{\"$\":0},\"mywire\":{\"$\":0},\"webredirect\":{\"$\":0},\"eu\":{\"$\":0,\"al\":{\"$\":0},\"asso\":{\"$\":0},\"at\":{\"$\":0},\"au\":{\"$\":0},\"be\":{\"$\":0},\"bg\":{\"$\":0},\"ca\":{\"$\":0},\"cd\":{\"$\":0},\"ch\":{\"$\":0},\"cn\":{\"$\":0},\"cy\":{\"$\":0},\"cz\":{\"$\":0},\"de\":{\"$\":0},\"dk\":{\"$\":0},\"edu\":{\"$\":0},\"ee\":{\"$\":0},\"es\":{\"$\":0},\"fi\":{\"$\":0},\"fr\":{\"$\":0},\"gr\":{\"$\":0},\"hr\":{\"$\":0},\"hu\":{\"$\":0},\"ie\":{\"$\":0},\"il\":{\"$\":0},\"in\":{\"$\":0},\"int\":{\"$\":0},\"is\":{\"$\":0},\"it\":{\"$\":0},\"jp\":{\"$\":0},\"kr\":{\"$\":0},\"lt\":{\"$\":0},\"lu\":{\"$\":0},\"lv\":{\"$\":0},\"mc\":{\"$\":0},\"me\":{\"$\":0},\"mk\":{\"$\":0},\"mt\":{\"$\":0},\"my\":{\"$\":0},\"net\":{\"$\":0},\"ng\":{\"$\":0},\"nl\":{\"$\":0},\"no\":{\"$\":0},\"nz\":{\"$\":0},\"paris\":{\"$\":0},\"pl\":{\"$\":0},\"pt\":{\"$\":0},\"q-a\":{\"$\":0},\"ro\":{\"$\":0},\"ru\":{\"$\":0},\"se\":{\"$\":0},\"si\":{\"$\":0},\"sk\":{\"$\":0},\"tr\":{\"$\":0},\"uk\":{\"$\":0},\"us\":{\"$\":0}},\"twmail\":{\"$\":0},\"fedorainfracloud\":{\"$\":0},\"fedorapeople\":{\"$\":0},\"fedoraproject\":{\"cloud\":{\"$\":0},\"os\":{\"app\":{\"$\":0}},\"stg\":{\"os\":{\"app\":{\"$\":0}}}},\"hepforge\":{\"$\":0},\"js\":{\"$\":0},\"bmoattachments\":{\"$\":0},\"cable-modem\":{\"$\":0},\"collegefan\":{\"$\":0},\"couchpotatofries\":{\"$\":0},\"mlbfan\":{\"$\":0},\"mysecuritycamera\":{\"$\":0},\"nflfan\":{\"$\":0},\"read-books\":{\"$\":0},\"ufcfan\":{\"$\":0},\"hopto\":{\"$\":0},\"myftp\":{\"$\":0},\"no-ip\":{\"$\":0},\"zapto\":{\"$\":0},\"my-firewall\":{\"$\":0},\"myfirewall\":{\"$\":0},\"spdns\":{\"$\":0},\"dsmynas\":{\"$\":0},\"familyds\":{\"$\":0},\"tuxfamily\":{\"$\":0},\"diskstation\":{\"$\":0},\"hk\":{\"$\":0},\"wmflabs\":{\"$\":0},\"za\":{\"$\":0}},\"pa\":{\"$\":0,\"ac\":{\"$\":0},\"gob\":{\"$\":0},\"com\":{\"$\":0},\"org\":{\"$\":0},\"sld\":{\"$\":0},\"edu\":{\"$\":0},\"net\":{\"$\":0},\"ing\":{\"$\":0},\"abo\":{\"$\":0},\"med\":{\"$\":0},\"nom\":{\"$\":0}},\"pe\":{\"$\":0,\"edu\":{\"$\":0},\"gob\":{\"$\":0},\"nom\":{\"$\":0},\"mil\":{\"$\":0},\"org\":{\"$\":0},\"com\":{\"$\":0},\"net\":{\"$\":0},\"blogspot\":{\"$\":0},\"nym\":{\"$\":0}},\"pf\":{\"$\":0,\"com\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0}},\"pg\":{\"*\":{\"$\":0}},\"ph\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gov\":{\"$\":0},\"edu\":{\"$\":0},\"ngo\":{\"$\":0},\"mil\":{\"$\":0},\"i\":{\"$\":0}},\"pk\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"edu\":{\"$\":0},\"org\":{\"$\":0},\"fam\":{\"$\":0},\"biz\":{\"$\":0},\"web\":{\"$\":0},\"gov\":{\"$\":0},\"gob\":{\"$\":0},\"gok\":{\"$\":0},\"gon\":{\"$\":0},\"gop\":{\"$\":0},\"gos\":{\"$\":0},\"info\":{\"$\":0}},\"pl\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"aid\":{\"$\":0},\"agro\":{\"$\":0},\"atm\":{\"$\":0},\"auto\":{\"$\":0},\"biz\":{\"$\":0},\"edu\":{\"$\":0},\"gmina\":{\"$\":0},\"gsm\":{\"$\":0},\"info\":{\"$\":0},\"mail\":{\"$\":0},\"miasta\":{\"$\":0},\"media\":{\"$\":0},\"mil\":{\"$\":0},\"nieruchomosci\":{\"$\":0},\"nom\":{\"$\":0},\"pc\":{\"$\":0},\"powiat\":{\"$\":0},\"priv\":{\"$\":0},\"realestate\":{\"$\":0},\"rel\":{\"$\":0},\"sex\":{\"$\":0},\"shop\":{\"$\":0},\"sklep\":{\"$\":0},\"sos\":{\"$\":0},\"szkola\":{\"$\":0},\"targi\":{\"$\":0},\"tm\":{\"$\":0},\"tourism\":{\"$\":0},\"travel\":{\"$\":0},\"turystyka\":{\"$\":0},\"gov\":{\"$\":0,\"ap\":{\"$\":0},\"ic\":{\"$\":0},\"is\":{\"$\":0},\"us\":{\"$\":0},\"kmpsp\":{\"$\":0},\"kppsp\":{\"$\":0},\"kwpsp\":{\"$\":0},\"psp\":{\"$\":0},\"wskr\":{\"$\":0},\"kwp\":{\"$\":0},\"mw\":{\"$\":0},\"ug\":{\"$\":0},\"um\":{\"$\":0},\"umig\":{\"$\":0},\"ugim\":{\"$\":0},\"upow\":{\"$\":0},\"uw\":{\"$\":0},\"starostwo\":{\"$\":0},\"pa\":{\"$\":0},\"po\":{\"$\":0},\"psse\":{\"$\":0},\"pup\":{\"$\":0},\"rzgw\":{\"$\":0},\"sa\":{\"$\":0},\"so\":{\"$\":0},\"sr\":{\"$\":0},\"wsa\":{\"$\":0},\"sko\":{\"$\":0},\"uzs\":{\"$\":0},\"wiih\":{\"$\":0},\"winb\":{\"$\":0},\"pinb\":{\"$\":0},\"wios\":{\"$\":0},\"witd\":{\"$\":0},\"wzmiuw\":{\"$\":0},\"piw\":{\"$\":0},\"wiw\":{\"$\":0},\"griw\":{\"$\":0},\"wif\":{\"$\":0},\"oum\":{\"$\":0},\"sdn\":{\"$\":0},\"zp\":{\"$\":0},\"uppo\":{\"$\":0},\"mup\":{\"$\":0},\"wuoz\":{\"$\":0},\"konsulat\":{\"$\":0},\"oirm\":{\"$\":0}},\"augustow\":{\"$\":0},\"babia-gora\":{\"$\":0},\"bedzin\":{\"$\":0},\"beskidy\":{\"$\":0},\"bialowieza\":{\"$\":0},\"bialystok\":{\"$\":0},\"bielawa\":{\"$\":0},\"bieszczady\":{\"$\":0},\"boleslawiec\":{\"$\":0},\"bydgoszcz\":{\"$\":0},\"bytom\":{\"$\":0},\"cieszyn\":{\"$\":0},\"czeladz\":{\"$\":0},\"czest\":{\"$\":0},\"dlugoleka\":{\"$\":0},\"elblag\":{\"$\":0},\"elk\":{\"$\":0},\"glogow\":{\"$\":0},\"gniezno\":{\"$\":0},\"gorlice\":{\"$\":0},\"grajewo\":{\"$\":0},\"ilawa\":{\"$\":0},\"jaworzno\":{\"$\":0},\"jelenia-gora\":{\"$\":0},\"jgora\":{\"$\":0},\"kalisz\":{\"$\":0},\"kazimierz-dolny\":{\"$\":0},\"karpacz\":{\"$\":0},\"kartuzy\":{\"$\":0},\"kaszuby\":{\"$\":0},\"katowice\":{\"$\":0},\"kepno\":{\"$\":0},\"ketrzyn\":{\"$\":0},\"klodzko\":{\"$\":0},\"kobierzyce\":{\"$\":0},\"kolobrzeg\":{\"$\":0},\"konin\":{\"$\":0},\"konskowola\":{\"$\":0},\"kutno\":{\"$\":0},\"lapy\":{\"$\":0},\"lebork\":{\"$\":0},\"legnica\":{\"$\":0},\"lezajsk\":{\"$\":0},\"limanowa\":{\"$\":0},\"lomza\":{\"$\":0},\"lowicz\":{\"$\":0},\"lubin\":{\"$\":0},\"lukow\":{\"$\":0},\"malbork\":{\"$\":0},\"malopolska\":{\"$\":0},\"mazowsze\":{\"$\":0},\"mazury\":{\"$\":0},\"mielec\":{\"$\":0},\"mielno\":{\"$\":0},\"mragowo\":{\"$\":0},\"naklo\":{\"$\":0},\"nowaruda\":{\"$\":0},\"nysa\":{\"$\":0},\"olawa\":{\"$\":0},\"olecko\":{\"$\":0},\"olkusz\":{\"$\":0},\"olsztyn\":{\"$\":0},\"opoczno\":{\"$\":0},\"opole\":{\"$\":0},\"ostroda\":{\"$\":0},\"ostroleka\":{\"$\":0},\"ostrowiec\":{\"$\":0},\"ostrowwlkp\":{\"$\":0},\"pila\":{\"$\":0},\"pisz\":{\"$\":0},\"podhale\":{\"$\":0},\"podlasie\":{\"$\":0},\"polkowice\":{\"$\":0},\"pomorze\":{\"$\":0},\"pomorskie\":{\"$\":0},\"prochowice\":{\"$\":0},\"pruszkow\":{\"$\":0},\"przeworsk\":{\"$\":0},\"pulawy\":{\"$\":0},\"radom\":{\"$\":0},\"rawa-maz\":{\"$\":0},\"rybnik\":{\"$\":0},\"rzeszow\":{\"$\":0},\"sanok\":{\"$\":0},\"sejny\":{\"$\":0},\"slask\":{\"$\":0},\"slupsk\":{\"$\":0},\"sosnowiec\":{\"$\":0},\"stalowa-wola\":{\"$\":0},\"skoczow\":{\"$\":0},\"starachowice\":{\"$\":0},\"stargard\":{\"$\":0},\"suwalki\":{\"$\":0},\"swidnica\":{\"$\":0},\"swiebodzin\":{\"$\":0},\"swinoujscie\":{\"$\":0},\"szczecin\":{\"$\":0},\"szczytno\":{\"$\":0},\"tarnobrzeg\":{\"$\":0},\"tgory\":{\"$\":0},\"turek\":{\"$\":0},\"tychy\":{\"$\":0},\"ustka\":{\"$\":0},\"walbrzych\":{\"$\":0},\"warmia\":{\"$\":0},\"warszawa\":{\"$\":0},\"waw\":{\"$\":0},\"wegrow\":{\"$\":0},\"wielun\":{\"$\":0},\"wlocl\":{\"$\":0},\"wloclawek\":{\"$\":0},\"wodzislaw\":{\"$\":0},\"wolomin\":{\"$\":0},\"wroclaw\":{\"$\":0},\"zachpomor\":{\"$\":0},\"zagan\":{\"$\":0},\"zarow\":{\"$\":0},\"zgora\":{\"$\":0},\"zgorzelec\":{\"$\":0},\"beep\":{\"$\":0},\"co\":{\"$\":0},\"art\":{\"$\":0},\"gliwice\":{\"$\":0},\"krakow\":{\"$\":0},\"poznan\":{\"$\":0},\"wroc\":{\"$\":0},\"zakopane\":{\"$\":0},\"gda\":{\"$\":0},\"gdansk\":{\"$\":0},\"gdynia\":{\"$\":0},\"med\":{\"$\":0},\"sopot\":{\"$\":0}},\"pm\":{\"$\":0},\"pn\":{\"$\":0,\"gov\":{\"$\":0},\"co\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"net\":{\"$\":0}},\"post\":{\"$\":0},\"pr\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gov\":{\"$\":0},\"edu\":{\"$\":0},\"isla\":{\"$\":0},\"pro\":{\"$\":0},\"biz\":{\"$\":0},\"info\":{\"$\":0},\"name\":{\"$\":0},\"est\":{\"$\":0},\"prof\":{\"$\":0},\"ac\":{\"$\":0}},\"pro\":{\"$\":0,\"aaa\":{\"$\":0},\"aca\":{\"$\":0},\"acct\":{\"$\":0},\"avocat\":{\"$\":0},\"bar\":{\"$\":0},\"cpa\":{\"$\":0},\"eng\":{\"$\":0},\"jur\":{\"$\":0},\"law\":{\"$\":0},\"med\":{\"$\":0},\"recht\":{\"$\":0},\"cloudns\":{\"$\":0}},\"ps\":{\"$\":0,\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"sec\":{\"$\":0},\"plo\":{\"$\":0},\"com\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0}},\"pt\":{\"$\":0,\"net\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"int\":{\"$\":0},\"publ\":{\"$\":0},\"com\":{\"$\":0},\"nome\":{\"$\":0},\"blogspot\":{\"$\":0},\"nym\":{\"$\":0}},\"pw\":{\"$\":0,\"co\":{\"$\":0},\"ne\":{\"$\":0},\"or\":{\"$\":0},\"ed\":{\"$\":0},\"go\":{\"$\":0},\"belau\":{\"$\":0},\"cloudns\":{\"$\":0},\"nom\":{\"$\":0}},\"py\":{\"$\":0,\"com\":{\"$\":0},\"coop\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"qa\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"name\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"sch\":{\"$\":0},\"blogspot\":{\"$\":0},\"nom\":{\"$\":0}},\"re\":{\"$\":0,\"asso\":{\"$\":0},\"com\":{\"$\":0},\"nom\":{\"$\":0},\"blogspot\":{\"$\":0}},\"ro\":{\"$\":0,\"arts\":{\"$\":0},\"com\":{\"$\":0},\"firm\":{\"$\":0},\"info\":{\"$\":0},\"nom\":{\"$\":0},\"nt\":{\"$\":0},\"org\":{\"$\":0},\"rec\":{\"$\":0},\"store\":{\"$\":0},\"tm\":{\"$\":0},\"www\":{\"$\":0},\"shop\":{\"$\":0},\"blogspot\":{\"$\":0}},\"rs\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"in\":{\"$\":0},\"org\":{\"$\":0},\"blogspot\":{\"$\":0},\"nom\":{\"$\":0}},\"ru\":{\"$\":0,\"ac\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"int\":{\"$\":0},\"mil\":{\"$\":0},\"test\":{\"$\":0},\"adygeya\":{\"$\":0},\"bashkiria\":{\"$\":0},\"bir\":{\"$\":0},\"cbg\":{\"$\":0},\"com\":{\"$\":0},\"dagestan\":{\"$\":0},\"grozny\":{\"$\":0},\"kalmykia\":{\"$\":0},\"kustanai\":{\"$\":0},\"marine\":{\"$\":0},\"mordovia\":{\"$\":0},\"msk\":{\"$\":0},\"mytis\":{\"$\":0},\"nalchik\":{\"$\":0},\"nov\":{\"$\":0},\"pyatigorsk\":{\"$\":0},\"spb\":{\"$\":0},\"vladikavkaz\":{\"$\":0},\"vladimir\":{\"$\":0},\"blogspot\":{\"$\":0},\"cldmail\":{\"hb\":{\"$\":0}},\"net\":{\"$\":0},\"org\":{\"$\":0},\"pp\":{\"$\":0}},\"rw\":{\"$\":0,\"gov\":{\"$\":0},\"net\":{\"$\":0},\"edu\":{\"$\":0},\"ac\":{\"$\":0},\"com\":{\"$\":0},\"co\":{\"$\":0},\"int\":{\"$\":0},\"mil\":{\"$\":0},\"gouv\":{\"$\":0}},\"sa\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gov\":{\"$\":0},\"med\":{\"$\":0},\"pub\":{\"$\":0},\"edu\":{\"$\":0},\"sch\":{\"$\":0}},\"sb\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"sc\":{\"$\":0,\"com\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0}},\"sd\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"med\":{\"$\":0},\"tv\":{\"$\":0},\"gov\":{\"$\":0},\"info\":{\"$\":0}},\"se\":{\"$\":0,\"a\":{\"$\":0},\"ac\":{\"$\":0},\"b\":{\"$\":0},\"bd\":{\"$\":0},\"brand\":{\"$\":0},\"c\":{\"$\":0},\"d\":{\"$\":0},\"e\":{\"$\":0},\"f\":{\"$\":0},\"fh\":{\"$\":0},\"fhsk\":{\"$\":0},\"fhv\":{\"$\":0},\"g\":{\"$\":0},\"h\":{\"$\":0},\"i\":{\"$\":0},\"k\":{\"$\":0},\"komforb\":{\"$\":0},\"kommunalforbund\":{\"$\":0},\"komvux\":{\"$\":0},\"l\":{\"$\":0},\"lanbib\":{\"$\":0},\"m\":{\"$\":0},\"n\":{\"$\":0},\"naturbruksgymn\":{\"$\":0},\"o\":{\"$\":0},\"org\":{\"$\":0},\"p\":{\"$\":0},\"parti\":{\"$\":0},\"pp\":{\"$\":0},\"press\":{\"$\":0},\"r\":{\"$\":0},\"s\":{\"$\":0},\"t\":{\"$\":0},\"tm\":{\"$\":0},\"u\":{\"$\":0},\"w\":{\"$\":0},\"x\":{\"$\":0},\"y\":{\"$\":0},\"z\":{\"$\":0},\"com\":{\"$\":0},\"blogspot\":{\"$\":0}},\"sg\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gov\":{\"$\":0},\"edu\":{\"$\":0},\"per\":{\"$\":0},\"blogspot\":{\"$\":0}},\"sh\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0},\"mil\":{\"$\":0},\"hashbang\":{\"$\":0},\"platform\":{\"*\":{\"$\":0}},\"wedeploy\":{\"$\":0},\"now\":{\"$\":0}},\"si\":{\"$\":0,\"blogspot\":{\"$\":0},\"nom\":{\"$\":0}},\"sj\":{\"$\":0},\"sk\":{\"$\":0,\"blogspot\":{\"$\":0},\"nym\":{\"$\":0}},\"sl\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"org\":{\"$\":0}},\"sm\":{\"$\":0},\"sn\":{\"$\":0,\"art\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gouv\":{\"$\":0},\"org\":{\"$\":0},\"perso\":{\"$\":0},\"univ\":{\"$\":0},\"blogspot\":{\"$\":0}},\"so\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"sr\":{\"$\":0},\"st\":{\"$\":0,\"co\":{\"$\":0},\"com\":{\"$\":0},\"consulado\":{\"$\":0},\"edu\":{\"$\":0},\"embaixada\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"principe\":{\"$\":0},\"saotome\":{\"$\":0},\"store\":{\"$\":0}},\"su\":{\"$\":0,\"abkhazia\":{\"$\":0},\"adygeya\":{\"$\":0},\"aktyubinsk\":{\"$\":0},\"arkhangelsk\":{\"$\":0},\"armenia\":{\"$\":0},\"ashgabad\":{\"$\":0},\"azerbaijan\":{\"$\":0},\"balashov\":{\"$\":0},\"bashkiria\":{\"$\":0},\"bryansk\":{\"$\":0},\"bukhara\":{\"$\":0},\"chimkent\":{\"$\":0},\"dagestan\":{\"$\":0},\"east-kazakhstan\":{\"$\":0},\"exnet\":{\"$\":0},\"georgia\":{\"$\":0},\"grozny\":{\"$\":0},\"ivanovo\":{\"$\":0},\"jambyl\":{\"$\":0},\"kalmykia\":{\"$\":0},\"kaluga\":{\"$\":0},\"karacol\":{\"$\":0},\"karaganda\":{\"$\":0},\"karelia\":{\"$\":0},\"khakassia\":{\"$\":0},\"krasnodar\":{\"$\":0},\"kurgan\":{\"$\":0},\"kustanai\":{\"$\":0},\"lenug\":{\"$\":0},\"mangyshlak\":{\"$\":0},\"mordovia\":{\"$\":0},\"msk\":{\"$\":0},\"murmansk\":{\"$\":0},\"nalchik\":{\"$\":0},\"navoi\":{\"$\":0},\"north-kazakhstan\":{\"$\":0},\"nov\":{\"$\":0},\"obninsk\":{\"$\":0},\"penza\":{\"$\":0},\"pokrovsk\":{\"$\":0},\"sochi\":{\"$\":0},\"spb\":{\"$\":0},\"tashkent\":{\"$\":0},\"termez\":{\"$\":0},\"togliatti\":{\"$\":0},\"troitsk\":{\"$\":0},\"tselinograd\":{\"$\":0},\"tula\":{\"$\":0},\"tuva\":{\"$\":0},\"vladikavkaz\":{\"$\":0},\"vladimir\":{\"$\":0},\"vologda\":{\"$\":0},\"nym\":{\"$\":0}},\"sv\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gob\":{\"$\":0},\"org\":{\"$\":0},\"red\":{\"$\":0}},\"sx\":{\"$\":0,\"gov\":{\"$\":0},\"nym\":{\"$\":0}},\"sy\":{\"$\":0,\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"mil\":{\"$\":0},\"com\":{\"$\":0},\"org\":{\"$\":0}},\"sz\":{\"$\":0,\"co\":{\"$\":0},\"ac\":{\"$\":0},\"org\":{\"$\":0}},\"tc\":{\"$\":0},\"td\":{\"$\":0,\"blogspot\":{\"$\":0}},\"tel\":{\"$\":0},\"tf\":{\"$\":0},\"tg\":{\"$\":0},\"th\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0},\"go\":{\"$\":0},\"in\":{\"$\":0},\"mi\":{\"$\":0},\"net\":{\"$\":0},\"or\":{\"$\":0}},\"tj\":{\"$\":0,\"ac\":{\"$\":0},\"biz\":{\"$\":0},\"co\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"go\":{\"$\":0},\"gov\":{\"$\":0},\"int\":{\"$\":0},\"mil\":{\"$\":0},\"name\":{\"$\":0},\"net\":{\"$\":0},\"nic\":{\"$\":0},\"org\":{\"$\":0},\"test\":{\"$\":0},\"web\":{\"$\":0}},\"tk\":{\"$\":0},\"tl\":{\"$\":0,\"gov\":{\"$\":0}},\"tm\":{\"$\":0,\"com\":{\"$\":0},\"co\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0},\"nom\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"edu\":{\"$\":0}},\"tn\":{\"$\":0,\"com\":{\"$\":0},\"ens\":{\"$\":0},\"fin\":{\"$\":0},\"gov\":{\"$\":0},\"ind\":{\"$\":0},\"intl\":{\"$\":0},\"nat\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"info\":{\"$\":0},\"perso\":{\"$\":0},\"tourism\":{\"$\":0},\"edunet\":{\"$\":0},\"rnrt\":{\"$\":0},\"rns\":{\"$\":0},\"rnu\":{\"$\":0},\"mincom\":{\"$\":0},\"agrinet\":{\"$\":0},\"defense\":{\"$\":0},\"turen\":{\"$\":0}},\"to\":{\"$\":0,\"com\":{\"$\":0},\"gov\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"mil\":{\"$\":0},\"vpnplus\":{\"$\":0}},\"tr\":{\"$\":0,\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"info\":{\"$\":0},\"biz\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"web\":{\"$\":0},\"gen\":{\"$\":0},\"tv\":{\"$\":0},\"av\":{\"$\":0},\"dr\":{\"$\":0},\"bbs\":{\"$\":0},\"name\":{\"$\":0},\"tel\":{\"$\":0},\"gov\":{\"$\":0},\"bel\":{\"$\":0},\"pol\":{\"$\":0},\"mil\":{\"$\":0},\"k12\":{\"$\":0},\"edu\":{\"$\":0},\"kep\":{\"$\":0},\"nc\":{\"$\":0,\"gov\":{\"$\":0}}},\"travel\":{\"$\":0},\"tt\":{\"$\":0,\"co\":{\"$\":0},\"com\":{\"$\":0},\"org\":{\"$\":0},\"net\":{\"$\":0},\"biz\":{\"$\":0},\"info\":{\"$\":0},\"pro\":{\"$\":0},\"int\":{\"$\":0},\"coop\":{\"$\":0},\"jobs\":{\"$\":0},\"mobi\":{\"$\":0},\"travel\":{\"$\":0},\"museum\":{\"$\":0},\"aero\":{\"$\":0},\"name\":{\"$\":0},\"gov\":{\"$\":0},\"edu\":{\"$\":0}},\"tv\":{\"$\":0,\"dyndns\":{\"$\":0},\"better-than\":{\"$\":0},\"on-the-web\":{\"$\":0},\"worse-than\":{\"$\":0}},\"tw\":{\"$\":0,\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"com\":{\"$\":0,\"mymailer\":{\"$\":0}},\"net\":{\"$\":0},\"org\":{\"$\":0},\"idv\":{\"$\":0},\"game\":{\"$\":0},\"ebiz\":{\"$\":0},\"club\":{\"$\":0},\"xn--zf0ao64a\":{\"$\":0},\"xn--uc0atv\":{\"$\":0},\"xn--czrw28b\":{\"$\":0},\"url\":{\"$\":0},\"blogspot\":{\"$\":0},\"nym\":{\"$\":0}},\"tz\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0},\"go\":{\"$\":0},\"hotel\":{\"$\":0},\"info\":{\"$\":0},\"me\":{\"$\":0},\"mil\":{\"$\":0},\"mobi\":{\"$\":0},\"ne\":{\"$\":0},\"or\":{\"$\":0},\"sc\":{\"$\":0},\"tv\":{\"$\":0}},\"ua\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"in\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"cherkassy\":{\"$\":0},\"cherkasy\":{\"$\":0},\"chernigov\":{\"$\":0},\"chernihiv\":{\"$\":0},\"chernivtsi\":{\"$\":0},\"chernovtsy\":{\"$\":0},\"ck\":{\"$\":0},\"cn\":{\"$\":0},\"cr\":{\"$\":0},\"crimea\":{\"$\":0},\"cv\":{\"$\":0},\"dn\":{\"$\":0},\"dnepropetrovsk\":{\"$\":0},\"dnipropetrovsk\":{\"$\":0},\"dominic\":{\"$\":0},\"donetsk\":{\"$\":0},\"dp\":{\"$\":0},\"if\":{\"$\":0},\"ivano-frankivsk\":{\"$\":0},\"kh\":{\"$\":0},\"kharkiv\":{\"$\":0},\"kharkov\":{\"$\":0},\"kherson\":{\"$\":0},\"khmelnitskiy\":{\"$\":0},\"khmelnytskyi\":{\"$\":0},\"kiev\":{\"$\":0},\"kirovograd\":{\"$\":0},\"km\":{\"$\":0},\"kr\":{\"$\":0},\"krym\":{\"$\":0},\"ks\":{\"$\":0},\"kv\":{\"$\":0},\"kyiv\":{\"$\":0},\"lg\":{\"$\":0},\"lt\":{\"$\":0},\"lugansk\":{\"$\":0},\"lutsk\":{\"$\":0},\"lv\":{\"$\":0},\"lviv\":{\"$\":0},\"mk\":{\"$\":0},\"mykolaiv\":{\"$\":0},\"nikolaev\":{\"$\":0},\"od\":{\"$\":0},\"odesa\":{\"$\":0},\"odessa\":{\"$\":0},\"pl\":{\"$\":0},\"poltava\":{\"$\":0},\"rivne\":{\"$\":0},\"rovno\":{\"$\":0},\"rv\":{\"$\":0},\"sb\":{\"$\":0},\"sebastopol\":{\"$\":0},\"sevastopol\":{\"$\":0},\"sm\":{\"$\":0},\"sumy\":{\"$\":0},\"te\":{\"$\":0},\"ternopil\":{\"$\":0},\"uz\":{\"$\":0},\"uzhgorod\":{\"$\":0},\"vinnica\":{\"$\":0},\"vinnytsia\":{\"$\":0},\"vn\":{\"$\":0},\"volyn\":{\"$\":0},\"yalta\":{\"$\":0},\"zaporizhzhe\":{\"$\":0},\"zaporizhzhia\":{\"$\":0},\"zhitomir\":{\"$\":0},\"zhytomyr\":{\"$\":0},\"zp\":{\"$\":0},\"zt\":{\"$\":0},\"cc\":{\"$\":0},\"inf\":{\"$\":0},\"ltd\":{\"$\":0},\"biz\":{\"$\":0},\"co\":{\"$\":0},\"pp\":{\"$\":0}},\"ug\":{\"$\":0,\"co\":{\"$\":0},\"or\":{\"$\":0},\"ac\":{\"$\":0},\"sc\":{\"$\":0},\"go\":{\"$\":0},\"ne\":{\"$\":0},\"com\":{\"$\":0},\"org\":{\"$\":0},\"blogspot\":{\"$\":0},\"nom\":{\"$\":0}},\"uk\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0,\"blogspot\":{\"$\":0},\"nh-serv\":{\"$\":0},\"no-ip\":{\"$\":0},\"wellbeingzone\":{\"$\":0}},\"gov\":{\"$\":0,\"service\":{\"$\":0},\"homeoffice\":{\"$\":0}},\"ltd\":{\"$\":0},\"me\":{\"$\":0},\"net\":{\"$\":0},\"nhs\":{\"$\":0},\"org\":{\"$\":0},\"plc\":{\"$\":0},\"police\":{\"$\":0},\"sch\":{\"*\":{\"$\":0}}},\"us\":{\"$\":0,\"dni\":{\"$\":0},\"fed\":{\"$\":0},\"isa\":{\"$\":0},\"kids\":{\"$\":0},\"nsn\":{\"$\":0},\"ak\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"al\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ar\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"as\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"az\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ca\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"co\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ct\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"dc\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"de\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"fl\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ga\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"gu\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"hi\":{\"$\":0,\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ia\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"id\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"il\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"in\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ks\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ky\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"la\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ma\":{\"$\":0,\"k12\":{\"$\":0,\"pvt\":{\"$\":0},\"chtr\":{\"$\":0},\"paroch\":{\"$\":0}},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"md\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"me\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"mi\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0},\"ann-arbor\":{\"$\":0},\"cog\":{\"$\":0},\"dst\":{\"$\":0},\"eaton\":{\"$\":0},\"gen\":{\"$\":0},\"mus\":{\"$\":0},\"tec\":{\"$\":0},\"washtenaw\":{\"$\":0}},\"mn\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"mo\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ms\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"mt\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"nc\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"nd\":{\"$\":0,\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ne\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"nh\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"nj\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"nm\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"nv\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ny\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"oh\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ok\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"or\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"pa\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"pr\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ri\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"sc\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"sd\":{\"$\":0,\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"tn\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"tx\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"ut\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"vi\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"vt\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"va\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"wa\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"wi\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"wv\":{\"$\":0,\"cc\":{\"$\":0}},\"wy\":{\"$\":0,\"k12\":{\"$\":0},\"cc\":{\"$\":0},\"lib\":{\"$\":0}},\"cloudns\":{\"$\":0},\"drud\":{\"$\":0},\"is-by\":{\"$\":0},\"land-4-sale\":{\"$\":0},\"stuff-4-sale\":{\"$\":0},\"golffan\":{\"$\":0},\"noip\":{\"$\":0},\"pointto\":{\"$\":0}},\"uy\":{\"$\":0,\"com\":{\"$\":0,\"blogspot\":{\"$\":0}},\"edu\":{\"$\":0},\"gub\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"nom\":{\"$\":0}},\"uz\":{\"$\":0,\"co\":{\"$\":0},\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"va\":{\"$\":0},\"vc\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"edu\":{\"$\":0},\"nom\":{\"$\":0}},\"ve\":{\"$\":0,\"arts\":{\"$\":0},\"co\":{\"$\":0},\"com\":{\"$\":0},\"e12\":{\"$\":0},\"edu\":{\"$\":0},\"firm\":{\"$\":0},\"gob\":{\"$\":0},\"gov\":{\"$\":0},\"info\":{\"$\":0},\"int\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"rec\":{\"$\":0},\"store\":{\"$\":0},\"tec\":{\"$\":0},\"web\":{\"$\":0}},\"vg\":{\"$\":0,\"nom\":{\"$\":0}},\"vi\":{\"$\":0,\"co\":{\"$\":0},\"com\":{\"$\":0},\"k12\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"vn\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"int\":{\"$\":0},\"ac\":{\"$\":0},\"biz\":{\"$\":0},\"info\":{\"$\":0},\"name\":{\"$\":0},\"pro\":{\"$\":0},\"health\":{\"$\":0},\"blogspot\":{\"$\":0}},\"vu\":{\"$\":0,\"com\":{\"$\":0},\"edu\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0}},\"wf\":{\"$\":0},\"ws\":{\"$\":0,\"com\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"gov\":{\"$\":0},\"edu\":{\"$\":0},\"advisor\":{\"*\":{\"$\":0}},\"dyndns\":{\"$\":0},\"mypets\":{\"$\":0}},\"yt\":{\"$\":0},\"xn--mgbaam7a8h\":{\"$\":0},\"xn--y9a3aq\":{\"$\":0},\"xn--54b7fta0cc\":{\"$\":0},\"xn--90ae\":{\"$\":0},\"xn--90ais\":{\"$\":0},\"xn--fiqs8s\":{\"$\":0},\"xn--fiqz9s\":{\"$\":0},\"xn--lgbbat1ad8j\":{\"$\":0},\"xn--wgbh1c\":{\"$\":0},\"xn--e1a4c\":{\"$\":0},\"xn--node\":{\"$\":0},\"xn--qxam\":{\"$\":0},\"xn--j6w193g\":{\"$\":0},\"xn--2scrj9c\":{\"$\":0},\"xn--3hcrj9c\":{\"$\":0},\"xn--45br5cyl\":{\"$\":0},\"xn--h2breg3eve\":{\"$\":0},\"xn--h2brj9c8c\":{\"$\":0},\"xn--mgbgu82a\":{\"$\":0},\"xn--rvc1e0am3e\":{\"$\":0},\"xn--h2brj9c\":{\"$\":0},\"xn--mgbbh1a71e\":{\"$\":0},\"xn--fpcrj9c3d\":{\"$\":0},\"xn--gecrj9c\":{\"$\":0},\"xn--s9brj9c\":{\"$\":0},\"xn--45brj9c\":{\"$\":0},\"xn--xkc2dl3a5ee0h\":{\"$\":0},\"xn--mgba3a4f16a\":{\"$\":0},\"xn--mgba3a4fra\":{\"$\":0},\"xn--mgbtx2b\":{\"$\":0},\"xn--mgbayh7gpa\":{\"$\":0},\"xn--3e0b707e\":{\"$\":0},\"xn--80ao21a\":{\"$\":0},\"xn--fzc2c9e2c\":{\"$\":0},\"xn--xkc2al3hye2a\":{\"$\":0},\"xn--mgbc0a9azcg\":{\"$\":0},\"xn--d1alf\":{\"$\":0},\"xn--l1acc\":{\"$\":0},\"xn--mix891f\":{\"$\":0},\"xn--mix082f\":{\"$\":0},\"xn--mgbx4cd0ab\":{\"$\":0},\"xn--mgb9awbf\":{\"$\":0},\"xn--mgbai9azgqp6j\":{\"$\":0},\"xn--mgbai9a5eva00b\":{\"$\":0},\"xn--ygbi2ammx\":{\"$\":0},\"xn--90a3ac\":{\"$\":0,\"xn--o1ac\":{\"$\":0},\"xn--c1avg\":{\"$\":0},\"xn--90azh\":{\"$\":0},\"xn--d1at\":{\"$\":0},\"xn--o1ach\":{\"$\":0},\"xn--80au\":{\"$\":0}},\"xn--p1ai\":{\"$\":0},\"xn--wgbl6a\":{\"$\":0},\"xn--mgberp4a5d4ar\":{\"$\":0},\"xn--mgberp4a5d4a87g\":{\"$\":0},\"xn--mgbqly7c0a67fbc\":{\"$\":0},\"xn--mgbqly7cvafr\":{\"$\":0},\"xn--mgbpl2fh\":{\"$\":0},\"xn--yfro4i67o\":{\"$\":0},\"xn--clchc0ea0b2g2a9gcd\":{\"$\":0},\"xn--ogbpf8fl\":{\"$\":0},\"xn--mgbtf8fl\":{\"$\":0},\"xn--o3cw4h\":{\"$\":0,\"xn--12c1fe0br\":{\"$\":0},\"xn--12co0c3b4eva\":{\"$\":0},\"xn--h3cuzk1di\":{\"$\":0},\"xn--o3cyx2a\":{\"$\":0},\"xn--m3ch0j3a\":{\"$\":0},\"xn--12cfi8ixb8l\":{\"$\":0}},\"xn--pgbs0dh\":{\"$\":0},\"xn--kpry57d\":{\"$\":0},\"xn--kprw13d\":{\"$\":0},\"xn--nnx388a\":{\"$\":0},\"xn--j1amh\":{\"$\":0},\"xn--mgb2ddes\":{\"$\":0},\"xxx\":{\"$\":0},\"ye\":{\"*\":{\"$\":0}},\"za\":{\"ac\":{\"$\":0},\"agric\":{\"$\":0},\"alt\":{\"$\":0},\"co\":{\"$\":0,\"blogspot\":{\"$\":0}},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"grondar\":{\"$\":0},\"law\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"ngo\":{\"$\":0},\"nis\":{\"$\":0},\"nom\":{\"$\":0},\"org\":{\"$\":0},\"school\":{\"$\":0},\"tm\":{\"$\":0},\"web\":{\"$\":0}},\"zm\":{\"$\":0,\"ac\":{\"$\":0},\"biz\":{\"$\":0},\"co\":{\"$\":0},\"com\":{\"$\":0},\"edu\":{\"$\":0},\"gov\":{\"$\":0},\"info\":{\"$\":0},\"mil\":{\"$\":0},\"net\":{\"$\":0},\"org\":{\"$\":0},\"sch\":{\"$\":0}},\"zw\":{\"$\":0,\"ac\":{\"$\":0},\"co\":{\"$\":0},\"gov\":{\"$\":0},\"mil\":{\"$\":0},\"org\":{\"$\":0}},\"aaa\":{\"$\":0},\"aarp\":{\"$\":0},\"abarth\":{\"$\":0},\"abb\":{\"$\":0},\"abbott\":{\"$\":0},\"abbvie\":{\"$\":0},\"abc\":{\"$\":0},\"able\":{\"$\":0},\"abogado\":{\"$\":0},\"abudhabi\":{\"$\":0},\"academy\":{\"$\":0},\"accenture\":{\"$\":0},\"accountant\":{\"$\":0},\"accountants\":{\"$\":0},\"aco\":{\"$\":0},\"active\":{\"$\":0},\"actor\":{\"$\":0},\"adac\":{\"$\":0},\"ads\":{\"$\":0},\"adult\":{\"$\":0},\"aeg\":{\"$\":0},\"aetna\":{\"$\":0},\"afamilycompany\":{\"$\":0},\"afl\":{\"$\":0},\"africa\":{\"$\":0},\"agakhan\":{\"$\":0},\"agency\":{\"$\":0},\"aig\":{\"$\":0},\"aigo\":{\"$\":0},\"airbus\":{\"$\":0},\"airforce\":{\"$\":0},\"airtel\":{\"$\":0},\"akdn\":{\"$\":0},\"alfaromeo\":{\"$\":0},\"alibaba\":{\"$\":0},\"alipay\":{\"$\":0},\"allfinanz\":{\"$\":0},\"allstate\":{\"$\":0},\"ally\":{\"$\":0},\"alsace\":{\"$\":0},\"alstom\":{\"$\":0},\"americanexpress\":{\"$\":0},\"americanfamily\":{\"$\":0},\"amex\":{\"$\":0},\"amfam\":{\"$\":0},\"amica\":{\"$\":0},\"amsterdam\":{\"$\":0},\"analytics\":{\"$\":0},\"android\":{\"$\":0},\"anquan\":{\"$\":0},\"anz\":{\"$\":0},\"aol\":{\"$\":0},\"apartments\":{\"$\":0},\"app\":{\"$\":0},\"apple\":{\"$\":0},\"aquarelle\":{\"$\":0},\"arab\":{\"$\":0},\"aramco\":{\"$\":0},\"archi\":{\"$\":0},\"army\":{\"$\":0},\"art\":{\"$\":0},\"arte\":{\"$\":0},\"asda\":{\"$\":0},\"associates\":{\"$\":0},\"athleta\":{\"$\":0},\"attorney\":{\"$\":0},\"auction\":{\"$\":0},\"audi\":{\"$\":0},\"audible\":{\"$\":0},\"audio\":{\"$\":0},\"auspost\":{\"$\":0},\"author\":{\"$\":0},\"auto\":{\"$\":0},\"autos\":{\"$\":0},\"avianca\":{\"$\":0},\"aws\":{\"$\":0},\"axa\":{\"$\":0},\"azure\":{\"$\":0},\"baby\":{\"$\":0},\"baidu\":{\"$\":0},\"banamex\":{\"$\":0},\"bananarepublic\":{\"$\":0},\"band\":{\"$\":0},\"bank\":{\"$\":0},\"bar\":{\"$\":0},\"barcelona\":{\"$\":0},\"barclaycard\":{\"$\":0},\"barclays\":{\"$\":0},\"barefoot\":{\"$\":0},\"bargains\":{\"$\":0},\"baseball\":{\"$\":0},\"basketball\":{\"$\":0},\"bauhaus\":{\"$\":0},\"bayern\":{\"$\":0},\"bbc\":{\"$\":0},\"bbt\":{\"$\":0},\"bbva\":{\"$\":0},\"bcg\":{\"$\":0},\"bcn\":{\"$\":0},\"beats\":{\"$\":0},\"beauty\":{\"$\":0},\"beer\":{\"$\":0},\"bentley\":{\"$\":0},\"berlin\":{\"$\":0},\"best\":{\"$\":0},\"bestbuy\":{\"$\":0},\"bet\":{\"$\":0},\"bharti\":{\"$\":0},\"bible\":{\"$\":0},\"bid\":{\"$\":0},\"bike\":{\"$\":0},\"bing\":{\"$\":0},\"bingo\":{\"$\":0},\"bio\":{\"$\":0},\"black\":{\"$\":0},\"blackfriday\":{\"$\":0},\"blanco\":{\"$\":0},\"blockbuster\":{\"$\":0},\"blog\":{\"$\":0},\"bloomberg\":{\"$\":0},\"blue\":{\"$\":0},\"bms\":{\"$\":0},\"bmw\":{\"$\":0},\"bnl\":{\"$\":0},\"bnpparibas\":{\"$\":0},\"boats\":{\"$\":0},\"boehringer\":{\"$\":0},\"bofa\":{\"$\":0},\"bom\":{\"$\":0},\"bond\":{\"$\":0},\"boo\":{\"$\":0},\"book\":{\"$\":0},\"booking\":{\"$\":0},\"boots\":{\"$\":0},\"bosch\":{\"$\":0},\"bostik\":{\"$\":0},\"boston\":{\"$\":0},\"bot\":{\"$\":0},\"boutique\":{\"$\":0},\"box\":{\"$\":0},\"bradesco\":{\"$\":0},\"bridgestone\":{\"$\":0},\"broadway\":{\"$\":0},\"broker\":{\"$\":0},\"brother\":{\"$\":0},\"brussels\":{\"$\":0},\"budapest\":{\"$\":0},\"bugatti\":{\"$\":0},\"build\":{\"$\":0},\"builders\":{\"$\":0},\"business\":{\"$\":0},\"buy\":{\"$\":0},\"buzz\":{\"$\":0},\"bzh\":{\"$\":0},\"cab\":{\"$\":0},\"cafe\":{\"$\":0},\"cal\":{\"$\":0},\"call\":{\"$\":0},\"calvinklein\":{\"$\":0},\"cam\":{\"$\":0},\"camera\":{\"$\":0},\"camp\":{\"$\":0},\"cancerresearch\":{\"$\":0},\"canon\":{\"$\":0},\"capetown\":{\"$\":0},\"capital\":{\"$\":0},\"capitalone\":{\"$\":0},\"car\":{\"$\":0},\"caravan\":{\"$\":0},\"cards\":{\"$\":0},\"care\":{\"$\":0},\"career\":{\"$\":0},\"careers\":{\"$\":0},\"cars\":{\"$\":0},\"cartier\":{\"$\":0},\"casa\":{\"$\":0},\"case\":{\"$\":0},\"caseih\":{\"$\":0},\"cash\":{\"$\":0},\"casino\":{\"$\":0},\"catering\":{\"$\":0},\"catholic\":{\"$\":0},\"cba\":{\"$\":0},\"cbn\":{\"$\":0},\"cbre\":{\"$\":0},\"cbs\":{\"$\":0},\"ceb\":{\"$\":0},\"center\":{\"$\":0},\"ceo\":{\"$\":0},\"cern\":{\"$\":0},\"cfa\":{\"$\":0},\"cfd\":{\"$\":0},\"chanel\":{\"$\":0},\"channel\":{\"$\":0},\"chase\":{\"$\":0},\"chat\":{\"$\":0},\"cheap\":{\"$\":0},\"chintai\":{\"$\":0},\"christmas\":{\"$\":0},\"chrome\":{\"$\":0},\"chrysler\":{\"$\":0},\"church\":{\"$\":0},\"cipriani\":{\"$\":0},\"circle\":{\"$\":0},\"cisco\":{\"$\":0},\"citadel\":{\"$\":0},\"citi\":{\"$\":0},\"citic\":{\"$\":0},\"city\":{\"$\":0},\"cityeats\":{\"$\":0},\"claims\":{\"$\":0},\"cleaning\":{\"$\":0},\"click\":{\"$\":0},\"clinic\":{\"$\":0},\"clinique\":{\"$\":0},\"clothing\":{\"$\":0},\"cloud\":{\"$\":0,\"statics\":{\"*\":{\"$\":0}},\"magentosite\":{\"*\":{\"$\":0}},\"vapor\":{\"$\":0},\"sensiosite\":{\"*\":{\"$\":0}},\"trafficplex\":{\"$\":0}},\"club\":{\"$\":0,\"cloudns\":{\"$\":0}},\"clubmed\":{\"$\":0},\"coach\":{\"$\":0},\"codes\":{\"$\":0},\"coffee\":{\"$\":0},\"college\":{\"$\":0},\"cologne\":{\"$\":0},\"comcast\":{\"$\":0},\"commbank\":{\"$\":0},\"community\":{\"$\":0},\"company\":{\"$\":0},\"compare\":{\"$\":0},\"computer\":{\"$\":0},\"comsec\":{\"$\":0},\"condos\":{\"$\":0},\"construction\":{\"$\":0},\"consulting\":{\"$\":0},\"contact\":{\"$\":0},\"contractors\":{\"$\":0},\"cooking\":{\"$\":0},\"cookingchannel\":{\"$\":0},\"cool\":{\"$\":0,\"de\":{\"$\":0}},\"corsica\":{\"$\":0},\"country\":{\"$\":0},\"coupon\":{\"$\":0},\"coupons\":{\"$\":0},\"courses\":{\"$\":0},\"credit\":{\"$\":0},\"creditcard\":{\"$\":0},\"creditunion\":{\"$\":0},\"cricket\":{\"$\":0},\"crown\":{\"$\":0},\"crs\":{\"$\":0},\"cruise\":{\"$\":0},\"cruises\":{\"$\":0},\"csc\":{\"$\":0},\"cuisinella\":{\"$\":0},\"cymru\":{\"$\":0},\"cyou\":{\"$\":0},\"dabur\":{\"$\":0},\"dad\":{\"$\":0},\"dance\":{\"$\":0},\"data\":{\"$\":0},\"date\":{\"$\":0},\"dating\":{\"$\":0},\"datsun\":{\"$\":0},\"day\":{\"$\":0},\"dclk\":{\"$\":0},\"dds\":{\"$\":0},\"deal\":{\"$\":0},\"dealer\":{\"$\":0},\"deals\":{\"$\":0},\"degree\":{\"$\":0},\"delivery\":{\"$\":0},\"dell\":{\"$\":0},\"deloitte\":{\"$\":0},\"delta\":{\"$\":0},\"democrat\":{\"$\":0},\"dental\":{\"$\":0},\"dentist\":{\"$\":0},\"desi\":{\"$\":0},\"design\":{\"$\":0},\"dev\":{\"$\":0},\"dhl\":{\"$\":0},\"diamonds\":{\"$\":0},\"diet\":{\"$\":0},\"digital\":{\"$\":0},\"direct\":{\"$\":0},\"directory\":{\"$\":0},\"discount\":{\"$\":0},\"discover\":{\"$\":0},\"dish\":{\"$\":0},\"diy\":{\"$\":0},\"dnp\":{\"$\":0},\"docs\":{\"$\":0},\"doctor\":{\"$\":0},\"dodge\":{\"$\":0},\"dog\":{\"$\":0},\"doha\":{\"$\":0},\"domains\":{\"$\":0},\"dot\":{\"$\":0},\"download\":{\"$\":0},\"drive\":{\"$\":0},\"dtv\":{\"$\":0},\"dubai\":{\"$\":0},\"duck\":{\"$\":0},\"dunlop\":{\"$\":0},\"duns\":{\"$\":0},\"dupont\":{\"$\":0},\"durban\":{\"$\":0},\"dvag\":{\"$\":0},\"dvr\":{\"$\":0},\"earth\":{\"$\":0},\"eat\":{\"$\":0},\"eco\":{\"$\":0},\"edeka\":{\"$\":0},\"education\":{\"$\":0},\"email\":{\"$\":0},\"emerck\":{\"$\":0},\"energy\":{\"$\":0},\"engineer\":{\"$\":0},\"engineering\":{\"$\":0},\"enterprises\":{\"$\":0},\"epost\":{\"$\":0},\"epson\":{\"$\":0},\"equipment\":{\"$\":0},\"ericsson\":{\"$\":0},\"erni\":{\"$\":0},\"esq\":{\"$\":0},\"estate\":{\"$\":0,\"compute\":{\"*\":{\"$\":0}}},\"esurance\":{\"$\":0},\"etisalat\":{\"$\":0},\"eurovision\":{\"$\":0},\"eus\":{\"$\":0,\"party\":{\"user\":{\"$\":0}}},\"events\":{\"$\":0},\"everbank\":{\"$\":0},\"exchange\":{\"$\":0},\"expert\":{\"$\":0},\"exposed\":{\"$\":0},\"express\":{\"$\":0},\"extraspace\":{\"$\":0},\"fage\":{\"$\":0},\"fail\":{\"$\":0},\"fairwinds\":{\"$\":0},\"faith\":{\"$\":0,\"ybo\":{\"$\":0}},\"family\":{\"$\":0},\"fan\":{\"$\":0},\"fans\":{\"$\":0},\"farm\":{\"$\":0,\"storj\":{\"$\":0}},\"farmers\":{\"$\":0},\"fashion\":{\"$\":0},\"fast\":{\"$\":0},\"fedex\":{\"$\":0},\"feedback\":{\"$\":0},\"ferrari\":{\"$\":0},\"ferrero\":{\"$\":0},\"fiat\":{\"$\":0},\"fidelity\":{\"$\":0},\"fido\":{\"$\":0},\"film\":{\"$\":0},\"final\":{\"$\":0},\"finance\":{\"$\":0},\"financial\":{\"$\":0},\"fire\":{\"$\":0},\"firestone\":{\"$\":0},\"firmdale\":{\"$\":0},\"fish\":{\"$\":0},\"fishing\":{\"$\":0},\"fit\":{\"$\":0,\"ptplus\":{\"$\":0}},\"fitness\":{\"$\":0},\"flickr\":{\"$\":0},\"flights\":{\"$\":0},\"flir\":{\"$\":0},\"florist\":{\"$\":0},\"flowers\":{\"$\":0},\"fly\":{\"$\":0},\"foo\":{\"$\":0},\"food\":{\"$\":0},\"foodnetwork\":{\"$\":0},\"football\":{\"$\":0},\"ford\":{\"$\":0},\"forex\":{\"$\":0},\"forsale\":{\"$\":0},\"forum\":{\"$\":0},\"foundation\":{\"$\":0},\"fox\":{\"$\":0},\"free\":{\"$\":0},\"fresenius\":{\"$\":0},\"frl\":{\"$\":0},\"frogans\":{\"$\":0},\"frontdoor\":{\"$\":0},\"frontier\":{\"$\":0},\"ftr\":{\"$\":0},\"fujitsu\":{\"$\":0},\"fujixerox\":{\"$\":0},\"fun\":{\"$\":0},\"fund\":{\"$\":0},\"furniture\":{\"$\":0},\"futbol\":{\"$\":0},\"fyi\":{\"$\":0},\"gal\":{\"$\":0},\"gallery\":{\"$\":0},\"gallo\":{\"$\":0},\"gallup\":{\"$\":0},\"game\":{\"$\":0},\"games\":{\"$\":0},\"gap\":{\"$\":0},\"garden\":{\"$\":0},\"gbiz\":{\"$\":0},\"gdn\":{\"$\":0},\"gea\":{\"$\":0},\"gent\":{\"$\":0},\"genting\":{\"$\":0},\"george\":{\"$\":0},\"ggee\":{\"$\":0},\"gift\":{\"$\":0},\"gifts\":{\"$\":0},\"gives\":{\"$\":0},\"giving\":{\"$\":0},\"glade\":{\"$\":0},\"glass\":{\"$\":0},\"gle\":{\"$\":0},\"global\":{\"$\":0},\"globo\":{\"$\":0},\"gmail\":{\"$\":0},\"gmbh\":{\"$\":0},\"gmo\":{\"$\":0},\"gmx\":{\"$\":0},\"godaddy\":{\"$\":0},\"gold\":{\"$\":0},\"goldpoint\":{\"$\":0},\"golf\":{\"$\":0},\"goo\":{\"$\":0},\"goodhands\":{\"$\":0},\"goodyear\":{\"$\":0},\"goog\":{\"$\":0,\"cloud\":{\"$\":0}},\"google\":{\"$\":0},\"gop\":{\"$\":0},\"got\":{\"$\":0},\"grainger\":{\"$\":0},\"graphics\":{\"$\":0},\"gratis\":{\"$\":0},\"green\":{\"$\":0},\"gripe\":{\"$\":0},\"grocery\":{\"$\":0},\"group\":{\"$\":0},\"guardian\":{\"$\":0},\"gucci\":{\"$\":0},\"guge\":{\"$\":0},\"guide\":{\"$\":0},\"guitars\":{\"$\":0},\"guru\":{\"$\":0},\"hair\":{\"$\":0},\"hamburg\":{\"$\":0},\"hangout\":{\"$\":0},\"haus\":{\"$\":0},\"hbo\":{\"$\":0},\"hdfc\":{\"$\":0},\"hdfcbank\":{\"$\":0},\"health\":{\"$\":0},\"healthcare\":{\"$\":0},\"help\":{\"$\":0},\"helsinki\":{\"$\":0},\"here\":{\"$\":0},\"hermes\":{\"$\":0},\"hgtv\":{\"$\":0},\"hiphop\":{\"$\":0},\"hisamitsu\":{\"$\":0},\"hitachi\":{\"$\":0},\"hiv\":{\"$\":0},\"hkt\":{\"$\":0},\"hockey\":{\"$\":0},\"holdings\":{\"$\":0},\"holiday\":{\"$\":0},\"homedepot\":{\"$\":0},\"homegoods\":{\"$\":0},\"homes\":{\"$\":0},\"homesense\":{\"$\":0},\"honda\":{\"$\":0},\"honeywell\":{\"$\":0},\"horse\":{\"$\":0},\"hospital\":{\"$\":0},\"host\":{\"$\":0,\"cloudaccess\":{\"$\":0},\"freesite\":{\"$\":0}},\"hosting\":{\"$\":0,\"opencraft\":{\"$\":0}},\"hot\":{\"$\":0},\"hoteles\":{\"$\":0},\"hotels\":{\"$\":0},\"hotmail\":{\"$\":0},\"house\":{\"$\":0},\"how\":{\"$\":0},\"hsbc\":{\"$\":0},\"hughes\":{\"$\":0},\"hyatt\":{\"$\":0},\"hyundai\":{\"$\":0},\"ibm\":{\"$\":0},\"icbc\":{\"$\":0},\"ice\":{\"$\":0},\"icu\":{\"$\":0},\"ieee\":{\"$\":0},\"ifm\":{\"$\":0},\"ikano\":{\"$\":0},\"imamat\":{\"$\":0},\"imdb\":{\"$\":0},\"immo\":{\"$\":0},\"immobilien\":{\"$\":0},\"industries\":{\"$\":0},\"infiniti\":{\"$\":0},\"ing\":{\"$\":0},\"ink\":{\"$\":0},\"institute\":{\"$\":0},\"insurance\":{\"$\":0},\"insure\":{\"$\":0},\"intel\":{\"$\":0},\"international\":{\"$\":0},\"intuit\":{\"$\":0},\"investments\":{\"$\":0},\"ipiranga\":{\"$\":0},\"irish\":{\"$\":0},\"iselect\":{\"$\":0},\"ismaili\":{\"$\":0},\"ist\":{\"$\":0},\"istanbul\":{\"$\":0},\"itau\":{\"$\":0},\"itv\":{\"$\":0},\"iveco\":{\"$\":0},\"iwc\":{\"$\":0},\"jaguar\":{\"$\":0},\"java\":{\"$\":0},\"jcb\":{\"$\":0},\"jcp\":{\"$\":0},\"jeep\":{\"$\":0},\"jetzt\":{\"$\":0},\"jewelry\":{\"$\":0},\"jio\":{\"$\":0},\"jlc\":{\"$\":0},\"jll\":{\"$\":0},\"jmp\":{\"$\":0},\"jnj\":{\"$\":0},\"joburg\":{\"$\":0},\"jot\":{\"$\":0},\"joy\":{\"$\":0},\"jpmorgan\":{\"$\":0},\"jprs\":{\"$\":0},\"juegos\":{\"$\":0},\"juniper\":{\"$\":0},\"kaufen\":{\"$\":0},\"kddi\":{\"$\":0},\"kerryhotels\":{\"$\":0},\"kerrylogistics\":{\"$\":0},\"kerryproperties\":{\"$\":0},\"kfh\":{\"$\":0},\"kia\":{\"$\":0},\"kim\":{\"$\":0},\"kinder\":{\"$\":0},\"kindle\":{\"$\":0},\"kitchen\":{\"$\":0},\"kiwi\":{\"$\":0},\"koeln\":{\"$\":0},\"komatsu\":{\"$\":0},\"kosher\":{\"$\":0},\"kpmg\":{\"$\":0},\"kpn\":{\"$\":0},\"krd\":{\"$\":0,\"co\":{\"$\":0},\"edu\":{\"$\":0}},\"kred\":{\"$\":0},\"kuokgroup\":{\"$\":0},\"kyoto\":{\"$\":0},\"lacaixa\":{\"$\":0},\"ladbrokes\":{\"$\":0},\"lamborghini\":{\"$\":0},\"lamer\":{\"$\":0},\"lancaster\":{\"$\":0},\"lancia\":{\"$\":0},\"lancome\":{\"$\":0},\"land\":{\"$\":0,\"static\":{\"$\":0,\"dev\":{\"$\":0},\"sites\":{\"$\":0}}},\"landrover\":{\"$\":0},\"lanxess\":{\"$\":0},\"lasalle\":{\"$\":0},\"lat\":{\"$\":0},\"latino\":{\"$\":0},\"latrobe\":{\"$\":0},\"law\":{\"$\":0},\"lawyer\":{\"$\":0},\"lds\":{\"$\":0},\"lease\":{\"$\":0},\"leclerc\":{\"$\":0},\"lefrak\":{\"$\":0},\"legal\":{\"$\":0},\"lego\":{\"$\":0},\"lexus\":{\"$\":0},\"lgbt\":{\"$\":0},\"liaison\":{\"$\":0},\"lidl\":{\"$\":0},\"life\":{\"$\":0},\"lifeinsurance\":{\"$\":0},\"lifestyle\":{\"$\":0},\"lighting\":{\"$\":0},\"like\":{\"$\":0},\"lilly\":{\"$\":0},\"limited\":{\"$\":0},\"limo\":{\"$\":0},\"lincoln\":{\"$\":0},\"linde\":{\"$\":0},\"link\":{\"$\":0,\"cyon\":{\"$\":0},\"mypep\":{\"$\":0}},\"lipsy\":{\"$\":0},\"live\":{\"$\":0},\"living\":{\"$\":0},\"lixil\":{\"$\":0},\"loan\":{\"$\":0},\"loans\":{\"$\":0},\"locker\":{\"$\":0},\"locus\":{\"$\":0},\"loft\":{\"$\":0},\"lol\":{\"$\":0},\"london\":{\"$\":0},\"lotte\":{\"$\":0},\"lotto\":{\"$\":0},\"love\":{\"$\":0},\"lpl\":{\"$\":0},\"lplfinancial\":{\"$\":0},\"ltd\":{\"$\":0},\"ltda\":{\"$\":0},\"lundbeck\":{\"$\":0},\"lupin\":{\"$\":0},\"luxe\":{\"$\":0},\"luxury\":{\"$\":0},\"macys\":{\"$\":0},\"madrid\":{\"$\":0},\"maif\":{\"$\":0},\"maison\":{\"$\":0},\"makeup\":{\"$\":0},\"man\":{\"$\":0},\"management\":{\"$\":0,\"router\":{\"$\":0}},\"mango\":{\"$\":0},\"map\":{\"$\":0},\"market\":{\"$\":0},\"marketing\":{\"$\":0},\"markets\":{\"$\":0},\"marriott\":{\"$\":0},\"marshalls\":{\"$\":0},\"maserati\":{\"$\":0},\"mattel\":{\"$\":0},\"mba\":{\"$\":0},\"mckinsey\":{\"$\":0},\"med\":{\"$\":0},\"media\":{\"$\":0},\"meet\":{\"$\":0},\"melbourne\":{\"$\":0},\"meme\":{\"$\":0},\"memorial\":{\"$\":0},\"men\":{\"$\":0},\"menu\":{\"$\":0},\"meo\":{\"$\":0},\"merckmsd\":{\"$\":0},\"metlife\":{\"$\":0},\"miami\":{\"$\":0},\"microsoft\":{\"$\":0},\"mini\":{\"$\":0},\"mint\":{\"$\":0},\"mit\":{\"$\":0},\"mitsubishi\":{\"$\":0},\"mlb\":{\"$\":0},\"mls\":{\"$\":0},\"mma\":{\"$\":0},\"mobile\":{\"$\":0},\"mobily\":{\"$\":0},\"moda\":{\"$\":0},\"moe\":{\"$\":0},\"moi\":{\"$\":0},\"mom\":{\"$\":0},\"monash\":{\"$\":0},\"money\":{\"$\":0},\"monster\":{\"$\":0},\"mopar\":{\"$\":0},\"mormon\":{\"$\":0},\"mortgage\":{\"$\":0},\"moscow\":{\"$\":0},\"moto\":{\"$\":0},\"motorcycles\":{\"$\":0},\"mov\":{\"$\":0},\"movie\":{\"$\":0},\"movistar\":{\"$\":0},\"msd\":{\"$\":0},\"mtn\":{\"$\":0},\"mtpc\":{\"$\":0},\"mtr\":{\"$\":0},\"mutual\":{\"$\":0},\"nab\":{\"$\":0},\"nadex\":{\"$\":0},\"nagoya\":{\"$\":0},\"nationwide\":{\"$\":0},\"natura\":{\"$\":0},\"navy\":{\"$\":0},\"nba\":{\"$\":0},\"nec\":{\"$\":0},\"netbank\":{\"$\":0},\"netflix\":{\"$\":0},\"network\":{\"$\":0,\"alces\":{\"*\":{\"$\":0}}},\"neustar\":{\"$\":0},\"new\":{\"$\":0},\"newholland\":{\"$\":0},\"news\":{\"$\":0},\"next\":{\"$\":0},\"nextdirect\":{\"$\":0},\"nexus\":{\"$\":0},\"nfl\":{\"$\":0},\"ngo\":{\"$\":0},\"nhk\":{\"$\":0},\"nico\":{\"$\":0},\"nike\":{\"$\":0},\"nikon\":{\"$\":0},\"ninja\":{\"$\":0},\"nissan\":{\"$\":0},\"nissay\":{\"$\":0},\"nokia\":{\"$\":0},\"northwesternmutual\":{\"$\":0},\"norton\":{\"$\":0},\"now\":{\"$\":0},\"nowruz\":{\"$\":0},\"nowtv\":{\"$\":0},\"nra\":{\"$\":0},\"nrw\":{\"$\":0},\"ntt\":{\"$\":0},\"nyc\":{\"$\":0},\"obi\":{\"$\":0},\"observer\":{\"$\":0},\"off\":{\"$\":0},\"office\":{\"$\":0},\"okinawa\":{\"$\":0},\"olayan\":{\"$\":0},\"olayangroup\":{\"$\":0},\"oldnavy\":{\"$\":0},\"ollo\":{\"$\":0},\"omega\":{\"$\":0},\"one\":{\"$\":0,\"homelink\":{\"$\":0}},\"ong\":{\"$\":0},\"onl\":{\"$\":0},\"online\":{\"$\":0,\"barsy\":{\"$\":0}},\"onyourside\":{\"$\":0},\"ooo\":{\"$\":0},\"open\":{\"$\":0},\"oracle\":{\"$\":0},\"orange\":{\"$\":0},\"organic\":{\"$\":0},\"origins\":{\"$\":0},\"osaka\":{\"$\":0},\"otsuka\":{\"$\":0},\"ott\":{\"$\":0},\"ovh\":{\"$\":0,\"nerdpol\":{\"$\":0}},\"page\":{\"$\":0},\"panasonic\":{\"$\":0},\"panerai\":{\"$\":0},\"paris\":{\"$\":0},\"pars\":{\"$\":0},\"partners\":{\"$\":0},\"parts\":{\"$\":0},\"party\":{\"$\":0,\"ybo\":{\"$\":0}},\"passagens\":{\"$\":0},\"pay\":{\"$\":0},\"pccw\":{\"$\":0},\"pet\":{\"$\":0},\"pfizer\":{\"$\":0},\"pharmacy\":{\"$\":0},\"phd\":{\"$\":0},\"philips\":{\"$\":0},\"phone\":{\"$\":0},\"photo\":{\"$\":0},\"photography\":{\"$\":0},\"photos\":{\"$\":0},\"physio\":{\"$\":0},\"piaget\":{\"$\":0},\"pics\":{\"$\":0},\"pictet\":{\"$\":0},\"pictures\":{\"1337\":{\"$\":0},\"$\":0},\"pid\":{\"$\":0},\"pin\":{\"$\":0},\"ping\":{\"$\":0},\"pink\":{\"$\":0},\"pioneer\":{\"$\":0},\"pizza\":{\"$\":0},\"place\":{\"$\":0},\"play\":{\"$\":0},\"playstation\":{\"$\":0},\"plumbing\":{\"$\":0},\"plus\":{\"$\":0},\"pnc\":{\"$\":0},\"pohl\":{\"$\":0},\"poker\":{\"$\":0},\"politie\":{\"$\":0},\"porn\":{\"$\":0},\"pramerica\":{\"$\":0},\"praxi\":{\"$\":0},\"press\":{\"$\":0},\"prime\":{\"$\":0},\"prod\":{\"$\":0},\"productions\":{\"$\":0},\"prof\":{\"$\":0},\"progressive\":{\"$\":0},\"promo\":{\"$\":0},\"properties\":{\"$\":0},\"property\":{\"$\":0},\"protection\":{\"$\":0},\"pru\":{\"$\":0},\"prudential\":{\"$\":0},\"pub\":{\"$\":0},\"pwc\":{\"$\":0},\"qpon\":{\"$\":0},\"quebec\":{\"$\":0},\"quest\":{\"$\":0},\"qvc\":{\"$\":0},\"racing\":{\"$\":0},\"radio\":{\"$\":0},\"raid\":{\"$\":0},\"read\":{\"$\":0},\"realestate\":{\"$\":0},\"realtor\":{\"$\":0},\"realty\":{\"$\":0},\"recipes\":{\"$\":0},\"red\":{\"$\":0},\"redstone\":{\"$\":0},\"redumbrella\":{\"$\":0},\"rehab\":{\"$\":0},\"reise\":{\"$\":0},\"reisen\":{\"$\":0},\"reit\":{\"$\":0},\"reliance\":{\"$\":0},\"ren\":{\"$\":0},\"rent\":{\"$\":0},\"rentals\":{\"$\":0},\"repair\":{\"$\":0},\"report\":{\"$\":0},\"republican\":{\"$\":0},\"rest\":{\"$\":0},\"restaurant\":{\"$\":0},\"review\":{\"$\":0,\"ybo\":{\"$\":0}},\"reviews\":{\"$\":0},\"rexroth\":{\"$\":0},\"rich\":{\"$\":0},\"richardli\":{\"$\":0},\"ricoh\":{\"$\":0},\"rightathome\":{\"$\":0},\"ril\":{\"$\":0},\"rio\":{\"$\":0},\"rip\":{\"$\":0,\"clan\":{\"$\":0}},\"rmit\":{\"$\":0},\"rocher\":{\"$\":0},\"rocks\":{\"$\":0,\"myddns\":{\"$\":0},\"lima-city\":{\"$\":0},\"webspace\":{\"$\":0}},\"rodeo\":{\"$\":0},\"rogers\":{\"$\":0},\"room\":{\"$\":0},\"rsvp\":{\"$\":0},\"rugby\":{\"$\":0},\"ruhr\":{\"$\":0},\"run\":{\"$\":0},\"rwe\":{\"$\":0},\"ryukyu\":{\"$\":0},\"saarland\":{\"$\":0},\"safe\":{\"$\":0},\"safety\":{\"$\":0},\"sakura\":{\"$\":0},\"sale\":{\"$\":0},\"salon\":{\"$\":0},\"samsclub\":{\"$\":0},\"samsung\":{\"$\":0},\"sandvik\":{\"$\":0},\"sandvikcoromant\":{\"$\":0},\"sanofi\":{\"$\":0},\"sap\":{\"$\":0},\"sapo\":{\"$\":0},\"sarl\":{\"$\":0},\"sas\":{\"$\":0},\"save\":{\"$\":0},\"saxo\":{\"$\":0},\"sbi\":{\"$\":0},\"sbs\":{\"$\":0},\"sca\":{\"$\":0},\"scb\":{\"$\":0},\"schaeffler\":{\"$\":0},\"schmidt\":{\"$\":0},\"scholarships\":{\"$\":0},\"school\":{\"$\":0},\"schule\":{\"$\":0},\"schwarz\":{\"$\":0},\"science\":{\"$\":0,\"ybo\":{\"$\":0}},\"scjohnson\":{\"$\":0},\"scor\":{\"$\":0},\"scot\":{\"$\":0},\"search\":{\"$\":0},\"seat\":{\"$\":0},\"secure\":{\"$\":0},\"security\":{\"$\":0},\"seek\":{\"$\":0},\"select\":{\"$\":0},\"sener\":{\"$\":0},\"services\":{\"$\":0},\"ses\":{\"$\":0},\"seven\":{\"$\":0},\"sew\":{\"$\":0},\"sex\":{\"$\":0},\"sexy\":{\"$\":0},\"sfr\":{\"$\":0},\"shangrila\":{\"$\":0},\"sharp\":{\"$\":0},\"shaw\":{\"$\":0},\"shell\":{\"$\":0},\"shia\":{\"$\":0},\"shiksha\":{\"$\":0},\"shoes\":{\"$\":0},\"shop\":{\"$\":0},\"shopping\":{\"$\":0},\"shouji\":{\"$\":0},\"show\":{\"$\":0},\"showtime\":{\"$\":0},\"shriram\":{\"$\":0},\"silk\":{\"$\":0},\"sina\":{\"$\":0},\"singles\":{\"$\":0},\"site\":{\"$\":0,\"cyon\":{\"$\":0},\"platformsh\":{\"*\":{\"$\":0}},\"byen\":{\"$\":0}},\"ski\":{\"$\":0},\"skin\":{\"$\":0},\"sky\":{\"$\":0},\"skype\":{\"$\":0},\"sling\":{\"$\":0},\"smart\":{\"$\":0},\"smile\":{\"$\":0},\"sncf\":{\"$\":0},\"soccer\":{\"$\":0},\"social\":{\"$\":0},\"softbank\":{\"$\":0},\"software\":{\"$\":0},\"sohu\":{\"$\":0},\"solar\":{\"$\":0},\"solutions\":{\"$\":0},\"song\":{\"$\":0},\"sony\":{\"$\":0},\"soy\":{\"$\":0},\"space\":{\"$\":0,\"stackspace\":{\"$\":0},\"uber\":{\"$\":0},\"xs4all\":{\"$\":0}},\"spiegel\":{\"$\":0},\"spot\":{\"$\":0},\"spreadbetting\":{\"$\":0},\"srl\":{\"$\":0},\"srt\":{\"$\":0},\"stada\":{\"$\":0},\"staples\":{\"$\":0},\"star\":{\"$\":0},\"starhub\":{\"$\":0},\"statebank\":{\"$\":0},\"statefarm\":{\"$\":0},\"statoil\":{\"$\":0},\"stc\":{\"$\":0},\"stcgroup\":{\"$\":0},\"stockholm\":{\"$\":0},\"storage\":{\"$\":0},\"store\":{\"$\":0},\"stream\":{\"$\":0},\"studio\":{\"$\":0},\"study\":{\"$\":0},\"style\":{\"$\":0},\"sucks\":{\"$\":0},\"supplies\":{\"$\":0},\"supply\":{\"$\":0},\"support\":{\"$\":0,\"barsy\":{\"$\":0}},\"surf\":{\"$\":0},\"surgery\":{\"$\":0},\"suzuki\":{\"$\":0},\"swatch\":{\"$\":0},\"swiftcover\":{\"$\":0},\"swiss\":{\"$\":0},\"sydney\":{\"$\":0},\"symantec\":{\"$\":0},\"systems\":{\"$\":0,\"knightpoint\":{\"$\":0}},\"tab\":{\"$\":0},\"taipei\":{\"$\":0},\"talk\":{\"$\":0},\"taobao\":{\"$\":0},\"target\":{\"$\":0},\"tatamotors\":{\"$\":0},\"tatar\":{\"$\":0},\"tattoo\":{\"$\":0},\"tax\":{\"$\":0},\"taxi\":{\"$\":0},\"tci\":{\"$\":0},\"tdk\":{\"$\":0},\"team\":{\"$\":0},\"tech\":{\"$\":0},\"technology\":{\"$\":0},\"telecity\":{\"$\":0},\"telefonica\":{\"$\":0},\"temasek\":{\"$\":0},\"tennis\":{\"$\":0},\"teva\":{\"$\":0},\"thd\":{\"$\":0},\"theater\":{\"$\":0},\"theatre\":{\"$\":0},\"tiaa\":{\"$\":0},\"tickets\":{\"$\":0},\"tienda\":{\"$\":0},\"tiffany\":{\"$\":0},\"tips\":{\"$\":0},\"tires\":{\"$\":0},\"tirol\":{\"$\":0},\"tjmaxx\":{\"$\":0},\"tjx\":{\"$\":0},\"tkmaxx\":{\"$\":0},\"tmall\":{\"$\":0},\"today\":{\"$\":0},\"tokyo\":{\"$\":0},\"tools\":{\"$\":0},\"top\":{\"$\":0},\"toray\":{\"$\":0},\"toshiba\":{\"$\":0},\"total\":{\"$\":0},\"tours\":{\"$\":0},\"town\":{\"$\":0},\"toyota\":{\"$\":0},\"toys\":{\"$\":0},\"trade\":{\"$\":0,\"ybo\":{\"$\":0}},\"trading\":{\"$\":0},\"training\":{\"$\":0},\"travelchannel\":{\"$\":0},\"travelers\":{\"$\":0},\"travelersinsurance\":{\"$\":0},\"trust\":{\"$\":0},\"trv\":{\"$\":0},\"tube\":{\"$\":0},\"tui\":{\"$\":0},\"tunes\":{\"$\":0},\"tushu\":{\"$\":0},\"tvs\":{\"$\":0},\"ubank\":{\"$\":0},\"ubs\":{\"$\":0},\"uconnect\":{\"$\":0},\"unicom\":{\"$\":0},\"university\":{\"$\":0},\"uno\":{\"$\":0},\"uol\":{\"$\":0},\"ups\":{\"$\":0},\"vacations\":{\"$\":0},\"vana\":{\"$\":0},\"vanguard\":{\"$\":0},\"vegas\":{\"$\":0},\"ventures\":{\"$\":0},\"verisign\":{\"$\":0},\"versicherung\":{\"$\":0},\"vet\":{\"$\":0},\"viajes\":{\"$\":0},\"video\":{\"$\":0},\"vig\":{\"$\":0},\"viking\":{\"$\":0},\"villas\":{\"$\":0},\"vin\":{\"$\":0},\"vip\":{\"$\":0},\"virgin\":{\"$\":0},\"visa\":{\"$\":0},\"vision\":{\"$\":0},\"vista\":{\"$\":0},\"vistaprint\":{\"$\":0},\"viva\":{\"$\":0},\"vivo\":{\"$\":0},\"vlaanderen\":{\"$\":0},\"vodka\":{\"$\":0},\"volkswagen\":{\"$\":0},\"volvo\":{\"$\":0},\"vote\":{\"$\":0},\"voting\":{\"$\":0},\"voto\":{\"$\":0},\"voyage\":{\"$\":0},\"vuelos\":{\"$\":0},\"wales\":{\"$\":0},\"walmart\":{\"$\":0},\"walter\":{\"$\":0},\"wang\":{\"$\":0},\"wanggou\":{\"$\":0},\"warman\":{\"$\":0},\"watch\":{\"$\":0},\"watches\":{\"$\":0},\"weather\":{\"$\":0},\"weatherchannel\":{\"$\":0},\"webcam\":{\"$\":0},\"weber\":{\"$\":0},\"website\":{\"$\":0},\"wed\":{\"$\":0},\"wedding\":{\"$\":0},\"weibo\":{\"$\":0},\"weir\":{\"$\":0},\"whoswho\":{\"$\":0},\"wien\":{\"$\":0},\"wiki\":{\"$\":0},\"williamhill\":{\"$\":0},\"win\":{\"$\":0},\"windows\":{\"$\":0},\"wine\":{\"$\":0},\"winners\":{\"$\":0},\"wme\":{\"$\":0},\"wolterskluwer\":{\"$\":0},\"woodside\":{\"$\":0},\"work\":{\"$\":0},\"works\":{\"$\":0},\"world\":{\"$\":0},\"wow\":{\"$\":0},\"wtc\":{\"$\":0},\"wtf\":{\"$\":0},\"xbox\":{\"$\":0},\"xerox\":{\"$\":0},\"xfinity\":{\"$\":0},\"xihuan\":{\"$\":0},\"xin\":{\"$\":0},\"xn--11b4c3d\":{\"$\":0},\"xn--1ck2e1b\":{\"$\":0},\"xn--1qqw23a\":{\"$\":0},\"xn--30rr7y\":{\"$\":0},\"xn--3bst00m\":{\"$\":0},\"xn--3ds443g\":{\"$\":0},\"xn--3oq18vl8pn36a\":{\"$\":0},\"xn--3pxu8k\":{\"$\":0},\"xn--42c2d9a\":{\"$\":0},\"xn--45q11c\":{\"$\":0},\"xn--4gbrim\":{\"$\":0},\"xn--55qw42g\":{\"$\":0},\"xn--55qx5d\":{\"$\":0},\"xn--5su34j936bgsg\":{\"$\":0},\"xn--5tzm5g\":{\"$\":0},\"xn--6frz82g\":{\"$\":0},\"xn--6qq986b3xl\":{\"$\":0},\"xn--80adxhks\":{\"$\":0},\"xn--80aqecdr1a\":{\"$\":0},\"xn--80asehdb\":{\"$\":0},\"xn--80aswg\":{\"$\":0},\"xn--8y0a063a\":{\"$\":0},\"xn--9dbq2a\":{\"$\":0},\"xn--9et52u\":{\"$\":0},\"xn--9krt00a\":{\"$\":0},\"xn--b4w605ferd\":{\"$\":0},\"xn--bck1b9a5dre4c\":{\"$\":0},\"xn--c1avg\":{\"$\":0},\"xn--c2br7g\":{\"$\":0},\"xn--cck2b3b\":{\"$\":0},\"xn--cg4bki\":{\"$\":0},\"xn--czr694b\":{\"$\":0},\"xn--czrs0t\":{\"$\":0},\"xn--czru2d\":{\"$\":0},\"xn--d1acj3b\":{\"$\":0},\"xn--eckvdtc9d\":{\"$\":0},\"xn--efvy88h\":{\"$\":0},\"xn--estv75g\":{\"$\":0},\"xn--fct429k\":{\"$\":0},\"xn--fhbei\":{\"$\":0},\"xn--fiq228c5hs\":{\"$\":0},\"xn--fiq64b\":{\"$\":0},\"xn--fjq720a\":{\"$\":0},\"xn--flw351e\":{\"$\":0},\"xn--fzys8d69uvgm\":{\"$\":0},\"xn--g2xx48c\":{\"$\":0},\"xn--gckr3f0f\":{\"$\":0},\"xn--gk3at1e\":{\"$\":0},\"xn--hxt814e\":{\"$\":0},\"xn--i1b6b1a6a2e\":{\"$\":0},\"xn--imr513n\":{\"$\":0},\"xn--io0a7i\":{\"$\":0},\"xn--j1aef\":{\"$\":0},\"xn--jlq61u9w7b\":{\"$\":0},\"xn--jvr189m\":{\"$\":0},\"xn--kcrx77d1x4a\":{\"$\":0},\"xn--kpu716f\":{\"$\":0},\"xn--kput3i\":{\"$\":0},\"xn--mgba3a3ejt\":{\"$\":0},\"xn--mgba7c0bbn0a\":{\"$\":0},\"xn--mgbaakc7dvf\":{\"$\":0},\"xn--mgbab2bd\":{\"$\":0},\"xn--mgbb9fbpob\":{\"$\":0},\"xn--mgbca7dzdo\":{\"$\":0},\"xn--mgbi4ecexp\":{\"$\":0},\"xn--mgbt3dhd\":{\"$\":0},\"xn--mk1bu44c\":{\"$\":0},\"xn--mxtq1m\":{\"$\":0},\"xn--ngbc5azd\":{\"$\":0},\"xn--ngbe9e0a\":{\"$\":0},\"xn--ngbrx\":{\"$\":0},\"xn--nqv7f\":{\"$\":0},\"xn--nqv7fs00ema\":{\"$\":0},\"xn--nyqy26a\":{\"$\":0},\"xn--p1acf\":{\"$\":0},\"xn--pbt977c\":{\"$\":0},\"xn--pssy2u\":{\"$\":0},\"xn--q9jyb4c\":{\"$\":0},\"xn--qcka1pmc\":{\"$\":0},\"xn--rhqv96g\":{\"$\":0},\"xn--rovu88b\":{\"$\":0},\"xn--ses554g\":{\"$\":0},\"xn--t60b56a\":{\"$\":0},\"xn--tckwe\":{\"$\":0},\"xn--tiq49xqyj\":{\"$\":0},\"xn--unup4y\":{\"$\":0},\"xn--vermgensberater-ctb\":{\"$\":0},\"xn--vermgensberatung-pwb\":{\"$\":0},\"xn--vhquv\":{\"$\":0},\"xn--vuq861b\":{\"$\":0},\"xn--w4r85el8fhu5dnra\":{\"$\":0},\"xn--w4rs40l\":{\"$\":0},\"xn--xhq521b\":{\"$\":0},\"xn--zfr164b\":{\"$\":0},\"xperia\":{\"$\":0},\"xyz\":{\"$\":0,\"blogsite\":{\"$\":0},\"fhapp\":{\"$\":0}},\"yachts\":{\"$\":0},\"yahoo\":{\"$\":0},\"yamaxun\":{\"$\":0},\"yandex\":{\"$\":0},\"yodobashi\":{\"$\":0},\"yoga\":{\"$\":0},\"yokohama\":{\"$\":0},\"you\":{\"$\":0},\"youtube\":{\"$\":0},\"yun\":{\"$\":0},\"zappos\":{\"$\":0},\"zara\":{\"$\":0},\"zero\":{\"$\":0},\"zip\":{\"$\":0},\"zippo\":{\"$\":0},\"zone\":{\"$\":0,\"triton\":{\"*\":{\"$\":0}},\"lima\":{\"$\":0}},\"zuerich\":{\"$\":0}}}");

/***/ }),

/***/ 318:
/***/ (function(module, exports, __webpack_require__) {


var URL = __webpack_require__(210);
var isValid = __webpack_require__(211);


/**
 * Utility to cleanup the base host value. Also removes url fragments.
 *
 * Works for:
 * - hostname
 * - //hostname
 * - scheme://hostname
 * - scheme+scheme://hostname
 *
 * @param {string} value
 * @return {String}
 */

// scheme      = ALPHA *( ALPHA / DIGIT / "+" / "-" / "." )
var hasPrefixRE = /^(([a-z][a-z0-9+.-]*)?:)?\/\//;


/**
 * @see https://github.com/oncletom/tld.js/issues/95
 *
 * @param {string} value
 */
function trimTrailingDots(value) {
  if (value[value.length - 1] === '.') {
    return value.substr(0, value.length - 1);
  }
  return value;
}


/**
 * Fast check to avoid calling `trim` when not needed.
 *
 * @param {string} value
 */
function checkTrimmingNeeded(value) {
  return (
    value.length > 0 && (
      value.charCodeAt(0) <= 32 ||
      value.charCodeAt(value.length - 1) <= 32
    )
  );
}


/**
 * Fast check to avoid calling `toLowerCase` when not needed.
 *
 * @param {string} value
 */
function checkLowerCaseNeeded(value) {
  for (var i = 0; i < value.length; i += 1) {
    var code = value.charCodeAt(i);
    if (code >= 65 && code <= 90) { // [A-Z]
      return true;
    }
  }

  return false;
}


module.exports = function extractHostname(value) {
  // First check if `value` is already a valid hostname.
  if (isValid(value)) {
    return trimTrailingDots(value);
  }

  var url = value;

  if (typeof url !== 'string') {
    url = '' + url;
  }

  var needsTrimming = checkTrimmingNeeded(url);
  if (needsTrimming) {
    url = url.trim();
  }

  var needsLowerCase = checkLowerCaseNeeded(url);
  if (needsLowerCase) {
    url = url.toLowerCase();
  }

  // Try again after `url` has been transformed to lowercase and trimmed.
  if ((needsLowerCase || needsTrimming) && isValid(url)) {
    return trimTrailingDots(url);
  }

  // Proceed with heavier url parsing to extract the hostname.
  if (!hasPrefixRE.test(url)) {
    url = '//' + url;
  }

  var parts = URL.parse(url, null, true);

  if (parts.hostname) {
    return trimTrailingDots(parts.hostname);
  }

  return null;
};


/***/ }),

/***/ 319:
/***/ (function(module, exports, __webpack_require__) {

/* WEBPACK VAR INJECTION */(function(module, global) {var __WEBPACK_AMD_DEFINE_RESULT__;/*! https://mths.be/punycode v1.4.1 by @mathias */
;(function(root) {

	/** Detect free variables */
	var freeExports =  true && exports &&
		!exports.nodeType && exports;
	var freeModule =  true && module &&
		!module.nodeType && module;
	var freeGlobal = typeof global == 'object' && global;
	if (
		freeGlobal.global === freeGlobal ||
		freeGlobal.window === freeGlobal ||
		freeGlobal.self === freeGlobal
	) {
		root = freeGlobal;
	}

	/**
	 * The `punycode` object.
	 * @name punycode
	 * @type Object
	 */
	var punycode,

	/** Highest positive signed 32-bit float value */
	maxInt = 2147483647, // aka. 0x7FFFFFFF or 2^31-1

	/** Bootstring parameters */
	base = 36,
	tMin = 1,
	tMax = 26,
	skew = 38,
	damp = 700,
	initialBias = 72,
	initialN = 128, // 0x80
	delimiter = '-', // '\x2D'

	/** Regular expressions */
	regexPunycode = /^xn--/,
	regexNonASCII = /[^\x20-\x7E]/, // unprintable ASCII chars + non-ASCII chars
	regexSeparators = /[\x2E\u3002\uFF0E\uFF61]/g, // RFC 3490 separators

	/** Error messages */
	errors = {
		'overflow': 'Overflow: input needs wider integers to process',
		'not-basic': 'Illegal input >= 0x80 (not a basic code point)',
		'invalid-input': 'Invalid input'
	},

	/** Convenience shortcuts */
	baseMinusTMin = base - tMin,
	floor = Math.floor,
	stringFromCharCode = String.fromCharCode,

	/** Temporary variable */
	key;

	/*--------------------------------------------------------------------------*/

	/**
	 * A generic error utility function.
	 * @private
	 * @param {String} type The error type.
	 * @returns {Error} Throws a `RangeError` with the applicable error message.
	 */
	function error(type) {
		throw new RangeError(errors[type]);
	}

	/**
	 * A generic `Array#map` utility function.
	 * @private
	 * @param {Array} array The array to iterate over.
	 * @param {Function} callback The function that gets called for every array
	 * item.
	 * @returns {Array} A new array of values returned by the callback function.
	 */
	function map(array, fn) {
		var length = array.length;
		var result = [];
		while (length--) {
			result[length] = fn(array[length]);
		}
		return result;
	}

	/**
	 * A simple `Array#map`-like wrapper to work with domain name strings or email
	 * addresses.
	 * @private
	 * @param {String} domain The domain name or email address.
	 * @param {Function} callback The function that gets called for every
	 * character.
	 * @returns {Array} A new string of characters returned by the callback
	 * function.
	 */
	function mapDomain(string, fn) {
		var parts = string.split('@');
		var result = '';
		if (parts.length > 1) {
			// In email addresses, only the domain name should be punycoded. Leave
			// the local part (i.e. everything up to `@`) intact.
			result = parts[0] + '@';
			string = parts[1];
		}
		// Avoid `split(regex)` for IE8 compatibility. See #17.
		string = string.replace(regexSeparators, '\x2E');
		var labels = string.split('.');
		var encoded = map(labels, fn).join('.');
		return result + encoded;
	}

	/**
	 * Creates an array containing the numeric code points of each Unicode
	 * character in the string. While JavaScript uses UCS-2 internally,
	 * this function will convert a pair of surrogate halves (each of which
	 * UCS-2 exposes as separate characters) into a single code point,
	 * matching UTF-16.
	 * @see `punycode.ucs2.encode`
	 * @see <https://mathiasbynens.be/notes/javascript-encoding>
	 * @memberOf punycode.ucs2
	 * @name decode
	 * @param {String} string The Unicode input string (UCS-2).
	 * @returns {Array} The new array of code points.
	 */
	function ucs2decode(string) {
		var output = [],
		    counter = 0,
		    length = string.length,
		    value,
		    extra;
		while (counter < length) {
			value = string.charCodeAt(counter++);
			if (value >= 0xD800 && value <= 0xDBFF && counter < length) {
				// high surrogate, and there is a next character
				extra = string.charCodeAt(counter++);
				if ((extra & 0xFC00) == 0xDC00) { // low surrogate
					output.push(((value & 0x3FF) << 10) + (extra & 0x3FF) + 0x10000);
				} else {
					// unmatched surrogate; only append this code unit, in case the next
					// code unit is the high surrogate of a surrogate pair
					output.push(value);
					counter--;
				}
			} else {
				output.push(value);
			}
		}
		return output;
	}

	/**
	 * Creates a string based on an array of numeric code points.
	 * @see `punycode.ucs2.decode`
	 * @memberOf punycode.ucs2
	 * @name encode
	 * @param {Array} codePoints The array of numeric code points.
	 * @returns {String} The new Unicode string (UCS-2).
	 */
	function ucs2encode(array) {
		return map(array, function(value) {
			var output = '';
			if (value > 0xFFFF) {
				value -= 0x10000;
				output += stringFromCharCode(value >>> 10 & 0x3FF | 0xD800);
				value = 0xDC00 | value & 0x3FF;
			}
			output += stringFromCharCode(value);
			return output;
		}).join('');
	}

	/**
	 * Converts a basic code point into a digit/integer.
	 * @see `digitToBasic()`
	 * @private
	 * @param {Number} codePoint The basic numeric code point value.
	 * @returns {Number} The numeric value of a basic code point (for use in
	 * representing integers) in the range `0` to `base - 1`, or `base` if
	 * the code point does not represent a value.
	 */
	function basicToDigit(codePoint) {
		if (codePoint - 48 < 10) {
			return codePoint - 22;
		}
		if (codePoint - 65 < 26) {
			return codePoint - 65;
		}
		if (codePoint - 97 < 26) {
			return codePoint - 97;
		}
		return base;
	}

	/**
	 * Converts a digit/integer into a basic code point.
	 * @see `basicToDigit()`
	 * @private
	 * @param {Number} digit The numeric value of a basic code point.
	 * @returns {Number} The basic code point whose value (when used for
	 * representing integers) is `digit`, which needs to be in the range
	 * `0` to `base - 1`. If `flag` is non-zero, the uppercase form is
	 * used; else, the lowercase form is used. The behavior is undefined
	 * if `flag` is non-zero and `digit` has no uppercase form.
	 */
	function digitToBasic(digit, flag) {
		//  0..25 map to ASCII a..z or A..Z
		// 26..35 map to ASCII 0..9
		return digit + 22 + 75 * (digit < 26) - ((flag != 0) << 5);
	}

	/**
	 * Bias adaptation function as per section 3.4 of RFC 3492.
	 * https://tools.ietf.org/html/rfc3492#section-3.4
	 * @private
	 */
	function adapt(delta, numPoints, firstTime) {
		var k = 0;
		delta = firstTime ? floor(delta / damp) : delta >> 1;
		delta += floor(delta / numPoints);
		for (/* no initialization */; delta > baseMinusTMin * tMax >> 1; k += base) {
			delta = floor(delta / baseMinusTMin);
		}
		return floor(k + (baseMinusTMin + 1) * delta / (delta + skew));
	}

	/**
	 * Converts a Punycode string of ASCII-only symbols to a string of Unicode
	 * symbols.
	 * @memberOf punycode
	 * @param {String} input The Punycode string of ASCII-only symbols.
	 * @returns {String} The resulting string of Unicode symbols.
	 */
	function decode(input) {
		// Don't use UCS-2
		var output = [],
		    inputLength = input.length,
		    out,
		    i = 0,
		    n = initialN,
		    bias = initialBias,
		    basic,
		    j,
		    index,
		    oldi,
		    w,
		    k,
		    digit,
		    t,
		    /** Cached calculation results */
		    baseMinusT;

		// Handle the basic code points: let `basic` be the number of input code
		// points before the last delimiter, or `0` if there is none, then copy
		// the first basic code points to the output.

		basic = input.lastIndexOf(delimiter);
		if (basic < 0) {
			basic = 0;
		}

		for (j = 0; j < basic; ++j) {
			// if it's not a basic code point
			if (input.charCodeAt(j) >= 0x80) {
				error('not-basic');
			}
			output.push(input.charCodeAt(j));
		}

		// Main decoding loop: start just after the last delimiter if any basic code
		// points were copied; start at the beginning otherwise.

		for (index = basic > 0 ? basic + 1 : 0; index < inputLength; /* no final expression */) {

			// `index` is the index of the next character to be consumed.
			// Decode a generalized variable-length integer into `delta`,
			// which gets added to `i`. The overflow checking is easier
			// if we increase `i` as we go, then subtract off its starting
			// value at the end to obtain `delta`.
			for (oldi = i, w = 1, k = base; /* no condition */; k += base) {

				if (index >= inputLength) {
					error('invalid-input');
				}

				digit = basicToDigit(input.charCodeAt(index++));

				if (digit >= base || digit > floor((maxInt - i) / w)) {
					error('overflow');
				}

				i += digit * w;
				t = k <= bias ? tMin : (k >= bias + tMax ? tMax : k - bias);

				if (digit < t) {
					break;
				}

				baseMinusT = base - t;
				if (w > floor(maxInt / baseMinusT)) {
					error('overflow');
				}

				w *= baseMinusT;

			}

			out = output.length + 1;
			bias = adapt(i - oldi, out, oldi == 0);

			// `i` was supposed to wrap around from `out` to `0`,
			// incrementing `n` each time, so we'll fix that now:
			if (floor(i / out) > maxInt - n) {
				error('overflow');
			}

			n += floor(i / out);
			i %= out;

			// Insert `n` at position `i` of the output
			output.splice(i++, 0, n);

		}

		return ucs2encode(output);
	}

	/**
	 * Converts a string of Unicode symbols (e.g. a domain name label) to a
	 * Punycode string of ASCII-only symbols.
	 * @memberOf punycode
	 * @param {String} input The string of Unicode symbols.
	 * @returns {String} The resulting Punycode string of ASCII-only symbols.
	 */
	function encode(input) {
		var n,
		    delta,
		    handledCPCount,
		    basicLength,
		    bias,
		    j,
		    m,
		    q,
		    k,
		    t,
		    currentValue,
		    output = [],
		    /** `inputLength` will hold the number of code points in `input`. */
		    inputLength,
		    /** Cached calculation results */
		    handledCPCountPlusOne,
		    baseMinusT,
		    qMinusT;

		// Convert the input in UCS-2 to Unicode
		input = ucs2decode(input);

		// Cache the length
		inputLength = input.length;

		// Initialize the state
		n = initialN;
		delta = 0;
		bias = initialBias;

		// Handle the basic code points
		for (j = 0; j < inputLength; ++j) {
			currentValue = input[j];
			if (currentValue < 0x80) {
				output.push(stringFromCharCode(currentValue));
			}
		}

		handledCPCount = basicLength = output.length;

		// `handledCPCount` is the number of code points that have been handled;
		// `basicLength` is the number of basic code points.

		// Finish the basic string - if it is not empty - with a delimiter
		if (basicLength) {
			output.push(delimiter);
		}

		// Main encoding loop:
		while (handledCPCount < inputLength) {

			// All non-basic code points < n have been handled already. Find the next
			// larger one:
			for (m = maxInt, j = 0; j < inputLength; ++j) {
				currentValue = input[j];
				if (currentValue >= n && currentValue < m) {
					m = currentValue;
				}
			}

			// Increase `delta` enough to advance the decoder's <n,i> state to <m,0>,
			// but guard against overflow
			handledCPCountPlusOne = handledCPCount + 1;
			if (m - n > floor((maxInt - delta) / handledCPCountPlusOne)) {
				error('overflow');
			}

			delta += (m - n) * handledCPCountPlusOne;
			n = m;

			for (j = 0; j < inputLength; ++j) {
				currentValue = input[j];

				if (currentValue < n && ++delta > maxInt) {
					error('overflow');
				}

				if (currentValue == n) {
					// Represent delta as a generalized variable-length integer
					for (q = delta, k = base; /* no condition */; k += base) {
						t = k <= bias ? tMin : (k >= bias + tMax ? tMax : k - bias);
						if (q < t) {
							break;
						}
						qMinusT = q - t;
						baseMinusT = base - t;
						output.push(
							stringFromCharCode(digitToBasic(t + qMinusT % baseMinusT, 0))
						);
						q = floor(qMinusT / baseMinusT);
					}

					output.push(stringFromCharCode(digitToBasic(q, 0)));
					bias = adapt(delta, handledCPCountPlusOne, handledCPCount == basicLength);
					delta = 0;
					++handledCPCount;
				}
			}

			++delta;
			++n;

		}
		return output.join('');
	}

	/**
	 * Converts a Punycode string representing a domain name or an email address
	 * to Unicode. Only the Punycoded parts of the input will be converted, i.e.
	 * it doesn't matter if you call it on a string that has already been
	 * converted to Unicode.
	 * @memberOf punycode
	 * @param {String} input The Punycoded domain name or email address to
	 * convert to Unicode.
	 * @returns {String} The Unicode representation of the given Punycode
	 * string.
	 */
	function toUnicode(input) {
		return mapDomain(input, function(string) {
			return regexPunycode.test(string)
				? decode(string.slice(4).toLowerCase())
				: string;
		});
	}

	/**
	 * Converts a Unicode string representing a domain name or an email address to
	 * Punycode. Only the non-ASCII parts of the domain name will be converted,
	 * i.e. it doesn't matter if you call it with a domain that's already in
	 * ASCII.
	 * @memberOf punycode
	 * @param {String} input The domain name or email address to convert, as a
	 * Unicode string.
	 * @returns {String} The Punycode representation of the given domain name or
	 * email address.
	 */
	function toASCII(input) {
		return mapDomain(input, function(string) {
			return regexNonASCII.test(string)
				? 'xn--' + encode(string)
				: string;
		});
	}

	/*--------------------------------------------------------------------------*/

	/** Define the public API */
	punycode = {
		/**
		 * A string representing the current Punycode.js version number.
		 * @memberOf punycode
		 * @type String
		 */
		'version': '1.4.1',
		/**
		 * An object of methods to convert from JavaScript's internal character
		 * representation (UCS-2) to Unicode code points, and back.
		 * @see <https://mathiasbynens.be/notes/javascript-encoding>
		 * @memberOf punycode
		 * @type Object
		 */
		'ucs2': {
			'decode': ucs2decode,
			'encode': ucs2encode
		},
		'decode': decode,
		'encode': encode,
		'toASCII': toASCII,
		'toUnicode': toUnicode
	};

	/** Expose `punycode` */
	// Some AMD build optimizers, like r.js, check for specific condition patterns
	// like the following:
	if (
		true
	) {
		!(__WEBPACK_AMD_DEFINE_RESULT__ = (function() {
			return punycode;
		}).call(exports, __webpack_require__, exports, module),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));
	} else {}

}(this));

/* WEBPACK VAR INJECTION */}.call(this, __webpack_require__(247)(module), __webpack_require__(63)))

/***/ }),

/***/ 32:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return map; });
/* unused harmony export MapOperator */
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/** PURE_IMPORTS_START tslib,_Subscriber PURE_IMPORTS_END */


function map(project, thisArg) {
    return function mapOperation(source) {
        if (typeof project !== 'function') {
            throw new TypeError('argument is not a function. Are you looking for `mapTo()`?');
        }
        return source.lift(new MapOperator(project, thisArg));
    };
}
var MapOperator = /*@__PURE__*/ (function () {
    function MapOperator(project, thisArg) {
        this.project = project;
        this.thisArg = thisArg;
    }
    MapOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new MapSubscriber(subscriber, this.project, this.thisArg));
    };
    return MapOperator;
}());

var MapSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](MapSubscriber, _super);
    function MapSubscriber(destination, project, thisArg) {
        var _this = _super.call(this, destination) || this;
        _this.project = project;
        _this.count = 0;
        _this.thisArg = thisArg || _this;
        return _this;
    }
    MapSubscriber.prototype._next = function (value) {
        var result;
        try {
            result = this.project.call(this.thisArg, value, this.count++);
        }
        catch (err) {
            this.destination.error(err);
            return;
        }
        this.destination.next(result);
    };
    return MapSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));
//# sourceMappingURL=map.js.map


/***/ }),

/***/ 320:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


module.exports = {
  isString: function(arg) {
    return typeof(arg) === 'string';
  },
  isObject: function(arg) {
    return typeof(arg) === 'object' && arg !== null;
  },
  isNull: function(arg) {
    return arg === null;
  },
  isNullOrUndefined: function(arg) {
    return arg == null;
  }
};


/***/ }),

/***/ 321:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


exports.decode = exports.parse = __webpack_require__(322);
exports.encode = exports.stringify = __webpack_require__(323);


/***/ }),

/***/ 322:
/***/ (function(module, exports, __webpack_require__) {

"use strict";
// Copyright Joyent, Inc. and other Node contributors.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to permit
// persons to whom the Software is furnished to do so, subject to the
// following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
// NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.



// If obj.hasOwnProperty has been overridden, then calling
// obj.hasOwnProperty(prop) will break.
// See: https://github.com/joyent/node/issues/1707
function hasOwnProperty(obj, prop) {
  return Object.prototype.hasOwnProperty.call(obj, prop);
}

module.exports = function(qs, sep, eq, options) {
  sep = sep || '&';
  eq = eq || '=';
  var obj = {};

  if (typeof qs !== 'string' || qs.length === 0) {
    return obj;
  }

  var regexp = /\+/g;
  qs = qs.split(sep);

  var maxKeys = 1000;
  if (options && typeof options.maxKeys === 'number') {
    maxKeys = options.maxKeys;
  }

  var len = qs.length;
  // maxKeys <= 0 means that we should not limit keys count
  if (maxKeys > 0 && len > maxKeys) {
    len = maxKeys;
  }

  for (var i = 0; i < len; ++i) {
    var x = qs[i].replace(regexp, '%20'),
        idx = x.indexOf(eq),
        kstr, vstr, k, v;

    if (idx >= 0) {
      kstr = x.substr(0, idx);
      vstr = x.substr(idx + 1);
    } else {
      kstr = x;
      vstr = '';
    }

    k = decodeURIComponent(kstr);
    v = decodeURIComponent(vstr);

    if (!hasOwnProperty(obj, k)) {
      obj[k] = v;
    } else if (isArray(obj[k])) {
      obj[k].push(v);
    } else {
      obj[k] = [obj[k], v];
    }
  }

  return obj;
};

var isArray = Array.isArray || function (xs) {
  return Object.prototype.toString.call(xs) === '[object Array]';
};


/***/ }),

/***/ 323:
/***/ (function(module, exports, __webpack_require__) {

"use strict";
// Copyright Joyent, Inc. and other Node contributors.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to permit
// persons to whom the Software is furnished to do so, subject to the
// following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
// NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.



var stringifyPrimitive = function(v) {
  switch (typeof v) {
    case 'string':
      return v;

    case 'boolean':
      return v ? 'true' : 'false';

    case 'number':
      return isFinite(v) ? v : '';

    default:
      return '';
  }
};

module.exports = function(obj, sep, eq, name) {
  sep = sep || '&';
  eq = eq || '=';
  if (obj === null) {
    obj = undefined;
  }

  if (typeof obj === 'object') {
    return map(objectKeys(obj), function(k) {
      var ks = encodeURIComponent(stringifyPrimitive(k)) + eq;
      if (isArray(obj[k])) {
        return map(obj[k], function(v) {
          return ks + encodeURIComponent(stringifyPrimitive(v));
        }).join(sep);
      } else {
        return ks + encodeURIComponent(stringifyPrimitive(obj[k]));
      }
    }).join(sep);

  }

  if (!name) return '';
  return encodeURIComponent(stringifyPrimitive(name)) + eq +
         encodeURIComponent(stringifyPrimitive(obj));
};

var isArray = Array.isArray || function (xs) {
  return Object.prototype.toString.call(xs) === '[object Array]';
};

function map (xs, f) {
  if (xs.map) return xs.map(f);
  var res = [];
  for (var i = 0; i < xs.length; i++) {
    res.push(f(xs[i], i));
  }
  return res;
}

var objectKeys = Object.keys || function (obj) {
  var res = [];
  for (var key in obj) {
    if (Object.prototype.hasOwnProperty.call(obj, key)) res.push(key);
  }
  return res;
};


/***/ }),

/***/ 324:
/***/ (function(module, exports, __webpack_require__) {

"use strict";



/**
 * Polyfill for `endsWith`
 *
 * @param {string} str
 * @param {string} pattern
 * @return {boolean}
 */
function endsWith(str, pattern) {
  return (
    str.lastIndexOf(pattern) === (str.length - pattern.length)
  );
}


/**
 * Check if `vhost` is a valid suffix of `hostname` (top-domain)
 *
 * It means that `vhost` needs to be a suffix of `hostname` and we then need to
 * make sure that: either they are equal, or the character preceding `vhost` in
 * `hostname` is a '.' (it should not be a partial label).
 *
 * * hostname = 'not.evil.com' and vhost = 'vil.com'      => not ok
 * * hostname = 'not.evil.com' and vhost = 'evil.com'     => ok
 * * hostname = 'not.evil.com' and vhost = 'not.evil.com' => ok
 *
 * @param {string} hostname
 * @param {string} vhost
 * @return {boolean}
 */
function shareSameDomainSuffix(hostname, vhost) {
  if (endsWith(hostname, vhost)) {
    return (
      hostname.length === vhost.length ||
      hostname[hostname.length - vhost.length - 1] === '.'
    );
  }

  return false;
}


/**
 * Given a hostname and its public suffix, extract the general domain.
 *
 *  @param {string} hostname
 *  @param {string} publicSuffix
 *  @return {string}
 */
function extractDomainWithSuffix(hostname, publicSuffix) {
  // Locate the index of the last '.' in the part of the `hostname` preceding
  // the public suffix.
  //
  // examples:
  //   1. not.evil.co.uk  => evil.co.uk
  //         ^    ^
  //         |    | start of public suffix
  //         | index of the last dot
  //
  //   2. example.co.uk   => example.co.uk
  //     ^       ^
  //     |       | start of public suffix
  //     |
  //     | (-1) no dot found before the public suffix
  var publicSuffixIndex = hostname.length - publicSuffix.length - 2;
  var lastDotBeforeSuffixIndex = hostname.lastIndexOf('.', publicSuffixIndex);

  // No '.' found, then `hostname` is the general domain (no sub-domain)
  if (lastDotBeforeSuffixIndex === -1) {
    return hostname;
  }

  // Extract the part between the last '.'
  return hostname.substr(lastDotBeforeSuffixIndex + 1);
}


/**
 * Detects the domain based on rules and upon and a host string
 *
 * @api
 * @param {string} host
 * @return {String}
 */
module.exports = function getDomain(validHosts, suffix, hostname) {
  // Check if `hostname` ends with a member of `validHosts`.
  for (var i = 0; i < validHosts.length; i += 1) {
    var vhost = validHosts[i];
    if (shareSameDomainSuffix(hostname, vhost)) {
      return vhost;
    }
  }

  // If there is no suffix, there is no hostname
  if (suffix === null) {
    return null;
  }

  // If `hostname` is a valid public suffix, then there is no domain to return.
  // Since we already know that `getPublicSuffix` returns a suffix of `hostname`
  // there is no need to perform a string comparison and we only compare the
  // size.
  if (suffix.length === hostname.length) {
    return null;
  }

  // To extract the general domain, we start by identifying the public suffix
  // (if any), then consider the domain to be the public suffix with one added
  // level of depth. (e.g.: if hostname is `not.evil.co.uk` and public suffix:
  // `co.uk`, then we take one more level: `evil`, giving the final result:
  // `evil.co.uk`).
  return extractDomainWithSuffix(hostname, suffix);
};


/***/ }),

/***/ 325:
/***/ (function(module, exports, __webpack_require__) {

"use strict";



var extractTldFromHost = __webpack_require__(212);


/**
 * Returns the public suffix (including exact matches)
 *
 * @api
 * @since 1.5
 * @param {string} hostname
 * @return {string}
 */
module.exports = function getPublicSuffix(rules, hostname) {
  // First check if `hostname` is already a valid top-level Domain.
  if (rules.hasTld(hostname)) {
    return hostname;
  }

  var candidate = rules.suffixLookup(hostname);
  if (candidate === null) {
    // Prevailing rule is '*' so we consider the top-level domain to be the
    // public suffix of `hostname` (e.g.: 'example.org' => 'org').
    return extractTldFromHost(hostname);
  }

  return candidate;
};


/***/ }),

/***/ 326:
/***/ (function(module, exports, __webpack_require__) {

"use strict";



/**
 * Returns the subdomain of a hostname string
 *
 * @api
 * @param {string} hostname
 * @param {string} domain - the root domain of the hostname
 * @return {string|null} a subdomain string if any, blank string if subdomain
 *  is empty, otherwise null.
 */
module.exports = function getSubdomain(hostname, domain) {
  // No domain found? Just abort, abort!
  if (domain === null) {
    return null;
  }

  return hostname.substr(0, hostname.length - domain.length - 1);
};


/***/ }),

/***/ 327:
/***/ (function(module, exports, __webpack_require__) {

"use strict";



/**
 * Check if a hostname is an IP. You should be aware that this only works
 * because `hostname` is already garanteed to be a valid hostname!
 *
 * @param {string} hostname
 * @return {boolean}
 */
function isProbablyIpv4(hostname) {
  var numberOfDots = 0;

  for (var i = 0; i < hostname.length; i += 1) {
    var code = hostname.charCodeAt(i);

    if (code === 46) { // '.'
      numberOfDots += 1;
    } else if (code < 48 || code > 57) {
      // 48 => '0'
      // 57 => '9'
      return false;
    }
  }

  return (
    numberOfDots === 3  &&
    hostname[0] !== '.' &&
    hostname[hostname.length - 1] !== '.'
  );
}


/**
 * Similar to isProbablyIpv4.
 *
 * @param {string} hostname
 * @return {boolean}
 */
function isProbablyIpv6(hostname) {
  var hasColon = false;

  for (var i = 0; i < hostname.length; i += 1) {
    var code = hostname.charCodeAt(i);

    if (code === 58) { // ':'
      hasColon = true;
    } else if (!(
      (code >= 48 && code <= 57) || // 0-9
      (code >= 97 && code <= 102)   // a-f
    )) {
      return false;
    }
  }

  return hasColon;
}


/**
 * Check if `hostname` is *probably* a valid ip addr (either ipv6 or ipv4).
 * This *will not* work on any string. We need `hostname` to be a valid
 * hostname.
 *
 * @param {string} hostname
 * @return {boolean}
 */
module.exports = function isIp(hostname) {
  if (typeof hostname !== 'string') {
    return false;
  }

  if (hostname.length === 0) {
    return false;
  }

  return (isProbablyIpv6(hostname) || isProbablyIpv4(hostname));
};


/***/ }),

/***/ 328:
/***/ (function(module, exports, __webpack_require__) {

"use strict";



var extractTldFromHost = __webpack_require__(212);


/**
 * Checks if the TLD exists for a given hostname
 *
 * @api
 * @param {string} rules
 * @param {string} hostname
 * @return {boolean}
 */
module.exports = function tldExists(rules, hostname) {
  // Easy case, it's a TLD
  if (rules.hasTld(hostname)) {
    return true;
  }

  // Popping only the TLD of the hostname
  var hostTld = extractTldFromHost(hostname);
  if (hostTld === null) {
    return false;
  }

  return rules.hasTld(hostTld);
};


/***/ }),

/***/ 337:
/***/ (function(module, exports, __webpack_require__) {

/*!
* sweetalert2 v10.16.9
* Released under the MIT License.
*/
(function (global, factory) {
   true ? module.exports = factory() :
  undefined;
}(this, function () { 'use strict';

  function _typeof(obj) {
    "@babel/helpers - typeof";

    if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") {
      _typeof = function (obj) {
        return typeof obj;
      };
    } else {
      _typeof = function (obj) {
        return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj;
      };
    }

    return _typeof(obj);
  }

  function _classCallCheck(instance, Constructor) {
    if (!(instance instanceof Constructor)) {
      throw new TypeError("Cannot call a class as a function");
    }
  }

  function _defineProperties(target, props) {
    for (var i = 0; i < props.length; i++) {
      var descriptor = props[i];
      descriptor.enumerable = descriptor.enumerable || false;
      descriptor.configurable = true;
      if ("value" in descriptor) descriptor.writable = true;
      Object.defineProperty(target, descriptor.key, descriptor);
    }
  }

  function _createClass(Constructor, protoProps, staticProps) {
    if (protoProps) _defineProperties(Constructor.prototype, protoProps);
    if (staticProps) _defineProperties(Constructor, staticProps);
    return Constructor;
  }

  function _extends() {
    _extends = Object.assign || function (target) {
      for (var i = 1; i < arguments.length; i++) {
        var source = arguments[i];

        for (var key in source) {
          if (Object.prototype.hasOwnProperty.call(source, key)) {
            target[key] = source[key];
          }
        }
      }

      return target;
    };

    return _extends.apply(this, arguments);
  }

  function _inherits(subClass, superClass) {
    if (typeof superClass !== "function" && superClass !== null) {
      throw new TypeError("Super expression must either be null or a function");
    }

    subClass.prototype = Object.create(superClass && superClass.prototype, {
      constructor: {
        value: subClass,
        writable: true,
        configurable: true
      }
    });
    if (superClass) _setPrototypeOf(subClass, superClass);
  }

  function _getPrototypeOf(o) {
    _getPrototypeOf = Object.setPrototypeOf ? Object.getPrototypeOf : function _getPrototypeOf(o) {
      return o.__proto__ || Object.getPrototypeOf(o);
    };
    return _getPrototypeOf(o);
  }

  function _setPrototypeOf(o, p) {
    _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) {
      o.__proto__ = p;
      return o;
    };

    return _setPrototypeOf(o, p);
  }

  function _isNativeReflectConstruct() {
    if (typeof Reflect === "undefined" || !Reflect.construct) return false;
    if (Reflect.construct.sham) return false;
    if (typeof Proxy === "function") return true;

    try {
      Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
      return true;
    } catch (e) {
      return false;
    }
  }

  function _construct(Parent, args, Class) {
    if (_isNativeReflectConstruct()) {
      _construct = Reflect.construct;
    } else {
      _construct = function _construct(Parent, args, Class) {
        var a = [null];
        a.push.apply(a, args);
        var Constructor = Function.bind.apply(Parent, a);
        var instance = new Constructor();
        if (Class) _setPrototypeOf(instance, Class.prototype);
        return instance;
      };
    }

    return _construct.apply(null, arguments);
  }

  function _assertThisInitialized(self) {
    if (self === void 0) {
      throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
    }

    return self;
  }

  function _possibleConstructorReturn(self, call) {
    if (call && (typeof call === "object" || typeof call === "function")) {
      return call;
    }

    return _assertThisInitialized(self);
  }

  function _createSuper(Derived) {
    var hasNativeReflectConstruct = _isNativeReflectConstruct();

    return function _createSuperInternal() {
      var Super = _getPrototypeOf(Derived),
          result;

      if (hasNativeReflectConstruct) {
        var NewTarget = _getPrototypeOf(this).constructor;

        result = Reflect.construct(Super, arguments, NewTarget);
      } else {
        result = Super.apply(this, arguments);
      }

      return _possibleConstructorReturn(this, result);
    };
  }

  function _superPropBase(object, property) {
    while (!Object.prototype.hasOwnProperty.call(object, property)) {
      object = _getPrototypeOf(object);
      if (object === null) break;
    }

    return object;
  }

  function _get(target, property, receiver) {
    if (typeof Reflect !== "undefined" && Reflect.get) {
      _get = Reflect.get;
    } else {
      _get = function _get(target, property, receiver) {
        var base = _superPropBase(target, property);

        if (!base) return;
        var desc = Object.getOwnPropertyDescriptor(base, property);

        if (desc.get) {
          return desc.get.call(receiver);
        }

        return desc.value;
      };
    }

    return _get(target, property, receiver || target);
  }

  var consolePrefix = 'SweetAlert2:';
  /**
   * Filter the unique values into a new array
   * @param arr
   */

  var uniqueArray = function uniqueArray(arr) {
    var result = [];

    for (var i = 0; i < arr.length; i++) {
      if (result.indexOf(arr[i]) === -1) {
        result.push(arr[i]);
      }
    }

    return result;
  };
  /**
   * Capitalize the first letter of a string
   * @param str
   */

  var capitalizeFirstLetter = function capitalizeFirstLetter(str) {
    return str.charAt(0).toUpperCase() + str.slice(1);
  };
  /**
   * Returns the array of object values (Object.values isn't supported in IE11)
   * @param obj
   */

  var objectValues = function objectValues(obj) {
    return Object.keys(obj).map(function (key) {
      return obj[key];
    });
  };
  /**
   * Convert NodeList to Array
   * @param nodeList
   */

  var toArray = function toArray(nodeList) {
    return Array.prototype.slice.call(nodeList);
  };
  /**
   * Standardise console warnings
   * @param message
   */

  var warn = function warn(message) {
    console.warn("".concat(consolePrefix, " ").concat(_typeof(message) === 'object' ? message.join(' ') : message));
  };
  /**
   * Standardise console errors
   * @param message
   */

  var error = function error(message) {
    console.error("".concat(consolePrefix, " ").concat(message));
  };
  /**
   * Private global state for `warnOnce`
   * @type {Array}
   * @private
   */

  var previousWarnOnceMessages = [];
  /**
   * Show a console warning, but only if it hasn't already been shown
   * @param message
   */

  var warnOnce = function warnOnce(message) {
    if (!(previousWarnOnceMessages.indexOf(message) !== -1)) {
      previousWarnOnceMessages.push(message);
      warn(message);
    }
  };
  /**
   * Show a one-time console warning about deprecated params/methods
   */

  var warnAboutDeprecation = function warnAboutDeprecation(deprecatedParam, useInstead) {
    warnOnce("\"".concat(deprecatedParam, "\" is deprecated and will be removed in the next major release. Please use \"").concat(useInstead, "\" instead."));
  };
  /**
   * If `arg` is a function, call it (with no arguments or context) and return the result.
   * Otherwise, just pass the value through
   * @param arg
   */

  var callIfFunction = function callIfFunction(arg) {
    return typeof arg === 'function' ? arg() : arg;
  };
  var hasToPromiseFn = function hasToPromiseFn(arg) {
    return arg && typeof arg.toPromise === 'function';
  };
  var asPromise = function asPromise(arg) {
    return hasToPromiseFn(arg) ? arg.toPromise() : Promise.resolve(arg);
  };
  var isPromise = function isPromise(arg) {
    return arg && Promise.resolve(arg) === arg;
  };

  var DismissReason = Object.freeze({
    cancel: 'cancel',
    backdrop: 'backdrop',
    close: 'close',
    esc: 'esc',
    timer: 'timer'
  });

  var isJqueryElement = function isJqueryElement(elem) {
    return _typeof(elem) === 'object' && elem.jquery;
  };

  var isElement = function isElement(elem) {
    return elem instanceof Element || isJqueryElement(elem);
  };

  var argsToParams = function argsToParams(args) {
    var params = {};

    if (_typeof(args[0]) === 'object' && !isElement(args[0])) {
      _extends(params, args[0]);
    } else {
      ['title', 'html', 'icon'].forEach(function (name, index) {
        var arg = args[index];

        if (typeof arg === 'string' || isElement(arg)) {
          params[name] = arg;
        } else if (arg !== undefined) {
          error("Unexpected type of ".concat(name, "! Expected \"string\" or \"Element\", got ").concat(_typeof(arg)));
        }
      });
    }

    return params;
  };

  var swalPrefix = 'swal2-';
  var prefix = function prefix(items) {
    var result = {};

    for (var i in items) {
      result[items[i]] = swalPrefix + items[i];
    }

    return result;
  };
  var swalClasses = prefix(['container', 'shown', 'height-auto', 'iosfix', 'popup', 'modal', 'no-backdrop', 'no-transition', 'toast', 'toast-shown', 'show', 'hide', 'close', 'title', 'header', 'content', 'html-container', 'actions', 'confirm', 'deny', 'cancel', 'footer', 'icon', 'icon-content', 'image', 'input', 'file', 'range', 'select', 'radio', 'checkbox', 'label', 'textarea', 'inputerror', 'input-label', 'validation-message', 'progress-steps', 'active-progress-step', 'progress-step', 'progress-step-line', 'loader', 'loading', 'styled', 'top', 'top-start', 'top-end', 'top-left', 'top-right', 'center', 'center-start', 'center-end', 'center-left', 'center-right', 'bottom', 'bottom-start', 'bottom-end', 'bottom-left', 'bottom-right', 'grow-row', 'grow-column', 'grow-fullscreen', 'rtl', 'timer-progress-bar', 'timer-progress-bar-container', 'scrollbar-measure', 'icon-success', 'icon-warning', 'icon-info', 'icon-question', 'icon-error']);
  var iconTypes = prefix(['success', 'warning', 'info', 'question', 'error']);

  var getContainer = function getContainer() {
    return document.body.querySelector(".".concat(swalClasses.container));
  };
  var elementBySelector = function elementBySelector(selectorString) {
    var container = getContainer();
    return container ? container.querySelector(selectorString) : null;
  };

  var elementByClass = function elementByClass(className) {
    return elementBySelector(".".concat(className));
  };

  var getPopup = function getPopup() {
    return elementByClass(swalClasses.popup);
  };
  var getIcon = function getIcon() {
    return elementByClass(swalClasses.icon);
  };
  var getTitle = function getTitle() {
    return elementByClass(swalClasses.title);
  };
  var getContent = function getContent() {
    return elementByClass(swalClasses.content);
  };
  var getHtmlContainer = function getHtmlContainer() {
    return elementByClass(swalClasses['html-container']);
  };
  var getImage = function getImage() {
    return elementByClass(swalClasses.image);
  };
  var getProgressSteps = function getProgressSteps() {
    return elementByClass(swalClasses['progress-steps']);
  };
  var getValidationMessage = function getValidationMessage() {
    return elementByClass(swalClasses['validation-message']);
  };
  var getConfirmButton = function getConfirmButton() {
    return elementBySelector(".".concat(swalClasses.actions, " .").concat(swalClasses.confirm));
  };
  var getDenyButton = function getDenyButton() {
    return elementBySelector(".".concat(swalClasses.actions, " .").concat(swalClasses.deny));
  };
  var getInputLabel = function getInputLabel() {
    return elementByClass(swalClasses['input-label']);
  };
  var getLoader = function getLoader() {
    return elementBySelector(".".concat(swalClasses.loader));
  };
  var getCancelButton = function getCancelButton() {
    return elementBySelector(".".concat(swalClasses.actions, " .").concat(swalClasses.cancel));
  };
  var getActions = function getActions() {
    return elementByClass(swalClasses.actions);
  };
  var getHeader = function getHeader() {
    return elementByClass(swalClasses.header);
  };
  var getFooter = function getFooter() {
    return elementByClass(swalClasses.footer);
  };
  var getTimerProgressBar = function getTimerProgressBar() {
    return elementByClass(swalClasses['timer-progress-bar']);
  };
  var getCloseButton = function getCloseButton() {
    return elementByClass(swalClasses.close);
  }; // https://github.com/jkup/focusable/blob/master/index.js

  var focusable = "\n  a[href],\n  area[href],\n  input:not([disabled]),\n  select:not([disabled]),\n  textarea:not([disabled]),\n  button:not([disabled]),\n  iframe,\n  object,\n  embed,\n  [tabindex=\"0\"],\n  [contenteditable],\n  audio[controls],\n  video[controls],\n  summary\n";
  var getFocusableElements = function getFocusableElements() {
    var focusableElementsWithTabindex = toArray(getPopup().querySelectorAll('[tabindex]:not([tabindex="-1"]):not([tabindex="0"])')) // sort according to tabindex
    .sort(function (a, b) {
      a = parseInt(a.getAttribute('tabindex'));
      b = parseInt(b.getAttribute('tabindex'));

      if (a > b) {
        return 1;
      } else if (a < b) {
        return -1;
      }

      return 0;
    });
    var otherFocusableElements = toArray(getPopup().querySelectorAll(focusable)).filter(function (el) {
      return el.getAttribute('tabindex') !== '-1';
    });
    return uniqueArray(focusableElementsWithTabindex.concat(otherFocusableElements)).filter(function (el) {
      return isVisible(el);
    });
  };
  var isModal = function isModal() {
    return !isToast() && !document.body.classList.contains(swalClasses['no-backdrop']);
  };
  var isToast = function isToast() {
    return document.body.classList.contains(swalClasses['toast-shown']);
  };
  var isLoading = function isLoading() {
    return getPopup().hasAttribute('data-loading');
  };

  var states = {
    previousBodyPadding: null
  };
  var setInnerHtml = function setInnerHtml(elem, html) {
    // #1926
    elem.textContent = '';

    if (html) {
      var parser = new DOMParser();
      var parsed = parser.parseFromString(html, "text/html");
      toArray(parsed.querySelector('head').childNodes).forEach(function (child) {
        elem.appendChild(child);
      });
      toArray(parsed.querySelector('body').childNodes).forEach(function (child) {
        elem.appendChild(child);
      });
    }
  };
  var hasClass = function hasClass(elem, className) {
    if (!className) {
      return false;
    }

    var classList = className.split(/\s+/);

    for (var i = 0; i < classList.length; i++) {
      if (!elem.classList.contains(classList[i])) {
        return false;
      }
    }

    return true;
  };

  var removeCustomClasses = function removeCustomClasses(elem, params) {
    toArray(elem.classList).forEach(function (className) {
      if (!(objectValues(swalClasses).indexOf(className) !== -1) && !(objectValues(iconTypes).indexOf(className) !== -1) && !(objectValues(params.showClass).indexOf(className) !== -1)) {
        elem.classList.remove(className);
      }
    });
  };

  var applyCustomClass = function applyCustomClass(elem, params, className) {
    removeCustomClasses(elem, params);

    if (params.customClass && params.customClass[className]) {
      if (typeof params.customClass[className] !== 'string' && !params.customClass[className].forEach) {
        return warn("Invalid type of customClass.".concat(className, "! Expected string or iterable object, got \"").concat(_typeof(params.customClass[className]), "\""));
      }

      addClass(elem, params.customClass[className]);
    }
  };
  function getInput(content, inputType) {
    if (!inputType) {
      return null;
    }

    switch (inputType) {
      case 'select':
      case 'textarea':
      case 'file':
        return getChildByClass(content, swalClasses[inputType]);

      case 'checkbox':
        return content.querySelector(".".concat(swalClasses.checkbox, " input"));

      case 'radio':
        return content.querySelector(".".concat(swalClasses.radio, " input:checked")) || content.querySelector(".".concat(swalClasses.radio, " input:first-child"));

      case 'range':
        return content.querySelector(".".concat(swalClasses.range, " input"));

      default:
        return getChildByClass(content, swalClasses.input);
    }
  }
  var focusInput = function focusInput(input) {
    input.focus(); // place cursor at end of text in text input

    if (input.type !== 'file') {
      // http://stackoverflow.com/a/2345915
      var val = input.value;
      input.value = '';
      input.value = val;
    }
  };
  var toggleClass = function toggleClass(target, classList, condition) {
    if (!target || !classList) {
      return;
    }

    if (typeof classList === 'string') {
      classList = classList.split(/\s+/).filter(Boolean);
    }

    classList.forEach(function (className) {
      if (target.forEach) {
        target.forEach(function (elem) {
          condition ? elem.classList.add(className) : elem.classList.remove(className);
        });
      } else {
        condition ? target.classList.add(className) : target.classList.remove(className);
      }
    });
  };
  var addClass = function addClass(target, classList) {
    toggleClass(target, classList, true);
  };
  var removeClass = function removeClass(target, classList) {
    toggleClass(target, classList, false);
  };
  var getChildByClass = function getChildByClass(elem, className) {
    for (var i = 0; i < elem.childNodes.length; i++) {
      if (hasClass(elem.childNodes[i], className)) {
        return elem.childNodes[i];
      }
    }
  };
  var applyNumericalStyle = function applyNumericalStyle(elem, property, value) {
    if (value === "".concat(parseInt(value))) {
      value = parseInt(value);
    }

    if (value || parseInt(value) === 0) {
      elem.style[property] = typeof value === 'number' ? "".concat(value, "px") : value;
    } else {
      elem.style.removeProperty(property);
    }
  };
  var show = function show(elem) {
    var display = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : 'flex';
    elem.style.display = display;
  };
  var hide = function hide(elem) {
    elem.style.display = 'none';
  };
  var setStyle = function setStyle(parent, selector, property, value) {
    var el = parent.querySelector(selector);

    if (el) {
      el.style[property] = value;
    }
  };
  var toggle = function toggle(elem, condition, display) {
    condition ? show(elem, display) : hide(elem);
  }; // borrowed from jquery $(elem).is(':visible') implementation

  var isVisible = function isVisible(elem) {
    return !!(elem && (elem.offsetWidth || elem.offsetHeight || elem.getClientRects().length));
  };
  var allButtonsAreHidden = function allButtonsAreHidden() {
    return !isVisible(getConfirmButton()) && !isVisible(getDenyButton()) && !isVisible(getCancelButton());
  };
  var isScrollable = function isScrollable(elem) {
    return !!(elem.scrollHeight > elem.clientHeight);
  }; // borrowed from https://stackoverflow.com/a/46352119

  var hasCssAnimation = function hasCssAnimation(elem) {
    var style = window.getComputedStyle(elem);
    var animDuration = parseFloat(style.getPropertyValue('animation-duration') || '0');
    var transDuration = parseFloat(style.getPropertyValue('transition-duration') || '0');
    return animDuration > 0 || transDuration > 0;
  };
  var contains = function contains(haystack, needle) {
    if (typeof haystack.contains === 'function') {
      return haystack.contains(needle);
    }
  };
  var animateTimerProgressBar = function animateTimerProgressBar(timer) {
    var reset = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : false;
    var timerProgressBar = getTimerProgressBar();

    if (isVisible(timerProgressBar)) {
      if (reset) {
        timerProgressBar.style.transition = 'none';
        timerProgressBar.style.width = '100%';
      }

      setTimeout(function () {
        timerProgressBar.style.transition = "width ".concat(timer / 1000, "s linear");
        timerProgressBar.style.width = '0%';
      }, 10);
    }
  };
  var stopTimerProgressBar = function stopTimerProgressBar() {
    var timerProgressBar = getTimerProgressBar();
    var timerProgressBarWidth = parseInt(window.getComputedStyle(timerProgressBar).width);
    timerProgressBar.style.removeProperty('transition');
    timerProgressBar.style.width = '100%';
    var timerProgressBarFullWidth = parseInt(window.getComputedStyle(timerProgressBar).width);
    var timerProgressBarPercent = parseInt(timerProgressBarWidth / timerProgressBarFullWidth * 100);
    timerProgressBar.style.removeProperty('transition');
    timerProgressBar.style.width = "".concat(timerProgressBarPercent, "%");
  };

  // Detect Node env
  var isNodeEnv = function isNodeEnv() {
    return typeof window === 'undefined' || typeof document === 'undefined';
  };

  var sweetHTML = "\n <div aria-labelledby=\"".concat(swalClasses.title, "\" aria-describedby=\"").concat(swalClasses.content, "\" class=\"").concat(swalClasses.popup, "\" tabindex=\"-1\">\n   <div class=\"").concat(swalClasses.header, "\">\n     <ul class=\"").concat(swalClasses['progress-steps'], "\"></ul>\n     <div class=\"").concat(swalClasses.icon, "\"></div>\n     <img class=\"").concat(swalClasses.image, "\" />\n     <h2 class=\"").concat(swalClasses.title, "\" id=\"").concat(swalClasses.title, "\"></h2>\n     <button type=\"button\" class=\"").concat(swalClasses.close, "\"></button>\n   </div>\n   <div class=\"").concat(swalClasses.content, "\">\n     <div id=\"").concat(swalClasses.content, "\" class=\"").concat(swalClasses['html-container'], "\"></div>\n     <input class=\"").concat(swalClasses.input, "\" />\n     <input type=\"file\" class=\"").concat(swalClasses.file, "\" />\n     <div class=\"").concat(swalClasses.range, "\">\n       <input type=\"range\" />\n       <output></output>\n     </div>\n     <select class=\"").concat(swalClasses.select, "\"></select>\n     <div class=\"").concat(swalClasses.radio, "\"></div>\n     <label for=\"").concat(swalClasses.checkbox, "\" class=\"").concat(swalClasses.checkbox, "\">\n       <input type=\"checkbox\" />\n       <span class=\"").concat(swalClasses.label, "\"></span>\n     </label>\n     <textarea class=\"").concat(swalClasses.textarea, "\"></textarea>\n     <div class=\"").concat(swalClasses['validation-message'], "\" id=\"").concat(swalClasses['validation-message'], "\"></div>\n   </div>\n   <div class=\"").concat(swalClasses.actions, "\">\n     <div class=\"").concat(swalClasses.loader, "\"></div>\n     <button type=\"button\" class=\"").concat(swalClasses.confirm, "\"></button>\n     <button type=\"button\" class=\"").concat(swalClasses.deny, "\"></button>\n     <button type=\"button\" class=\"").concat(swalClasses.cancel, "\"></button>\n   </div>\n   <div class=\"").concat(swalClasses.footer, "\"></div>\n   <div class=\"").concat(swalClasses['timer-progress-bar-container'], "\">\n     <div class=\"").concat(swalClasses['timer-progress-bar'], "\"></div>\n   </div>\n </div>\n").replace(/(^|\n)\s*/g, '');

  var resetOldContainer = function resetOldContainer() {
    var oldContainer = getContainer();

    if (!oldContainer) {
      return false;
    }

    oldContainer.parentNode.removeChild(oldContainer);
    removeClass([document.documentElement, document.body], [swalClasses['no-backdrop'], swalClasses['toast-shown'], swalClasses['has-column']]);
    return true;
  };

  var oldInputVal; // IE11 workaround, see #1109 for details

  var resetValidationMessage = function resetValidationMessage(e) {
    if (Swal.isVisible() && oldInputVal !== e.target.value) {
      Swal.resetValidationMessage();
    }

    oldInputVal = e.target.value;
  };

  var addInputChangeListeners = function addInputChangeListeners() {
    var content = getContent();
    var input = getChildByClass(content, swalClasses.input);
    var file = getChildByClass(content, swalClasses.file);
    var range = content.querySelector(".".concat(swalClasses.range, " input"));
    var rangeOutput = content.querySelector(".".concat(swalClasses.range, " output"));
    var select = getChildByClass(content, swalClasses.select);
    var checkbox = content.querySelector(".".concat(swalClasses.checkbox, " input"));
    var textarea = getChildByClass(content, swalClasses.textarea);
    input.oninput = resetValidationMessage;
    file.onchange = resetValidationMessage;
    select.onchange = resetValidationMessage;
    checkbox.onchange = resetValidationMessage;
    textarea.oninput = resetValidationMessage;

    range.oninput = function (e) {
      resetValidationMessage(e);
      rangeOutput.value = range.value;
    };

    range.onchange = function (e) {
      resetValidationMessage(e);
      range.nextSibling.value = range.value;
    };
  };

  var getTarget = function getTarget(target) {
    return typeof target === 'string' ? document.querySelector(target) : target;
  };

  var setupAccessibility = function setupAccessibility(params) {
    var popup = getPopup();
    popup.setAttribute('role', params.toast ? 'alert' : 'dialog');
    popup.setAttribute('aria-live', params.toast ? 'polite' : 'assertive');

    if (!params.toast) {
      popup.setAttribute('aria-modal', 'true');
    }
  };

  var setupRTL = function setupRTL(targetElement) {
    if (window.getComputedStyle(targetElement).direction === 'rtl') {
      addClass(getContainer(), swalClasses.rtl);
    }
  };
  /*
   * Add modal + backdrop to DOM
   */


  var init = function init(params) {
    // Clean up the old popup container if it exists
    var oldContainerExisted = resetOldContainer();
    /* istanbul ignore if */

    if (isNodeEnv()) {
      error('SweetAlert2 requires document to initialize');
      return;
    }

    var container = document.createElement('div');
    container.className = swalClasses.container;

    if (oldContainerExisted) {
      addClass(container, swalClasses['no-transition']);
    }

    setInnerHtml(container, sweetHTML);
    var targetElement = getTarget(params.target);
    targetElement.appendChild(container);
    setupAccessibility(params);
    setupRTL(targetElement);
    addInputChangeListeners();
  };

  var parseHtmlToContainer = function parseHtmlToContainer(param, target) {
    // DOM element
    if (param instanceof HTMLElement) {
      target.appendChild(param); // Object
    } else if (_typeof(param) === 'object') {
      handleObject(param, target); // Plain string
    } else if (param) {
      setInnerHtml(target, param);
    }
  };

  var handleObject = function handleObject(param, target) {
    // JQuery element(s)
    if (param.jquery) {
      handleJqueryElem(target, param); // For other objects use their string representation
    } else {
      setInnerHtml(target, param.toString());
    }
  };

  var handleJqueryElem = function handleJqueryElem(target, elem) {
    target.textContent = '';

    if (0 in elem) {
      for (var i = 0; (i in elem); i++) {
        target.appendChild(elem[i].cloneNode(true));
      }
    } else {
      target.appendChild(elem.cloneNode(true));
    }
  };

  var animationEndEvent = function () {
    // Prevent run in Node env

    /* istanbul ignore if */
    if (isNodeEnv()) {
      return false;
    }

    var testEl = document.createElement('div');
    var transEndEventNames = {
      WebkitAnimation: 'webkitAnimationEnd',
      OAnimation: 'oAnimationEnd oanimationend',
      animation: 'animationend'
    };

    for (var i in transEndEventNames) {
      if (Object.prototype.hasOwnProperty.call(transEndEventNames, i) && typeof testEl.style[i] !== 'undefined') {
        return transEndEventNames[i];
      }
    }

    return false;
  }();

  // https://github.com/twbs/bootstrap/blob/master/js/src/modal.js

  var measureScrollbar = function measureScrollbar() {
    var scrollDiv = document.createElement('div');
    scrollDiv.className = swalClasses['scrollbar-measure'];
    document.body.appendChild(scrollDiv);
    var scrollbarWidth = scrollDiv.getBoundingClientRect().width - scrollDiv.clientWidth;
    document.body.removeChild(scrollDiv);
    return scrollbarWidth;
  };

  var renderActions = function renderActions(instance, params) {
    var actions = getActions();
    var loader = getLoader();
    var confirmButton = getConfirmButton();
    var denyButton = getDenyButton();
    var cancelButton = getCancelButton(); // Actions (buttons) wrapper

    if (!params.showConfirmButton && !params.showDenyButton && !params.showCancelButton) {
      hide(actions);
    } // Custom class


    applyCustomClass(actions, params, 'actions'); // Render buttons

    renderButton(confirmButton, 'confirm', params);
    renderButton(denyButton, 'deny', params);
    renderButton(cancelButton, 'cancel', params);
    handleButtonsStyling(confirmButton, denyButton, cancelButton, params);

    if (params.reverseButtons) {
      actions.insertBefore(cancelButton, loader);
      actions.insertBefore(denyButton, loader);
      actions.insertBefore(confirmButton, loader);
    } // Loader


    setInnerHtml(loader, params.loaderHtml);
    applyCustomClass(loader, params, 'loader');
  };

  function handleButtonsStyling(confirmButton, denyButton, cancelButton, params) {
    if (!params.buttonsStyling) {
      return removeClass([confirmButton, denyButton, cancelButton], swalClasses.styled);
    }

    addClass([confirmButton, denyButton, cancelButton], swalClasses.styled); // Buttons background colors

    if (params.confirmButtonColor) {
      confirmButton.style.backgroundColor = params.confirmButtonColor;
    }

    if (params.denyButtonColor) {
      denyButton.style.backgroundColor = params.denyButtonColor;
    }

    if (params.cancelButtonColor) {
      cancelButton.style.backgroundColor = params.cancelButtonColor;
    }
  }

  function renderButton(button, buttonType, params) {
    toggle(button, params["show".concat(capitalizeFirstLetter(buttonType), "Button")], 'inline-block');
    setInnerHtml(button, params["".concat(buttonType, "ButtonText")]); // Set caption text

    button.setAttribute('aria-label', params["".concat(buttonType, "ButtonAriaLabel")]); // ARIA label
    // Add buttons custom classes

    button.className = swalClasses[buttonType];
    applyCustomClass(button, params, "".concat(buttonType, "Button"));
    addClass(button, params["".concat(buttonType, "ButtonClass")]);
  }

  function handleBackdropParam(container, backdrop) {
    if (typeof backdrop === 'string') {
      container.style.background = backdrop;
    } else if (!backdrop) {
      addClass([document.documentElement, document.body], swalClasses['no-backdrop']);
    }
  }

  function handlePositionParam(container, position) {
    if (position in swalClasses) {
      addClass(container, swalClasses[position]);
    } else {
      warn('The "position" parameter is not valid, defaulting to "center"');
      addClass(container, swalClasses.center);
    }
  }

  function handleGrowParam(container, grow) {
    if (grow && typeof grow === 'string') {
      var growClass = "grow-".concat(grow);

      if (growClass in swalClasses) {
        addClass(container, swalClasses[growClass]);
      }
    }
  }

  var renderContainer = function renderContainer(instance, params) {
    var container = getContainer();

    if (!container) {
      return;
    }

    handleBackdropParam(container, params.backdrop);

    if (!params.backdrop && params.allowOutsideClick) {
      warn('"allowOutsideClick" parameter requires `backdrop` parameter to be set to `true`');
    }

    handlePositionParam(container, params.position);
    handleGrowParam(container, params.grow); // Custom class

    applyCustomClass(container, params, 'container'); // Set queue step attribute for getQueueStep() method

    var queueStep = document.body.getAttribute('data-swal2-queue-step');

    if (queueStep) {
      container.setAttribute('data-queue-step', queueStep);
      document.body.removeAttribute('data-swal2-queue-step');
    }
  };

  /**
   * This module containts `WeakMap`s for each effectively-"private  property" that a `Swal` has.
   * For example, to set the private property "foo" of `this` to "bar", you can `privateProps.foo.set(this, 'bar')`
   * This is the approach that Babel will probably take to implement private methods/fields
   *   https://github.com/tc39/proposal-private-methods
   *   https://github.com/babel/babel/pull/7555
   * Once we have the changes from that PR in Babel, and our core class fits reasonable in *one module*
   *   then we can use that language feature.
   */
  var privateProps = {
    promise: new WeakMap(),
    innerParams: new WeakMap(),
    domCache: new WeakMap()
  };

  var inputTypes = ['input', 'file', 'range', 'select', 'radio', 'checkbox', 'textarea'];
  var renderInput = function renderInput(instance, params) {
    var content = getContent();
    var innerParams = privateProps.innerParams.get(instance);
    var rerender = !innerParams || params.input !== innerParams.input;
    inputTypes.forEach(function (inputType) {
      var inputClass = swalClasses[inputType];
      var inputContainer = getChildByClass(content, inputClass); // set attributes

      setAttributes(inputType, params.inputAttributes); // set class

      inputContainer.className = inputClass;

      if (rerender) {
        hide(inputContainer);
      }
    });

    if (params.input) {
      if (rerender) {
        showInput(params);
      } // set custom class


      setCustomClass(params);
    }
  };

  var showInput = function showInput(params) {
    if (!renderInputType[params.input]) {
      return error("Unexpected type of input! Expected \"text\", \"email\", \"password\", \"number\", \"tel\", \"select\", \"radio\", \"checkbox\", \"textarea\", \"file\" or \"url\", got \"".concat(params.input, "\""));
    }

    var inputContainer = getInputContainer(params.input);
    var input = renderInputType[params.input](inputContainer, params);
    show(input); // input autofocus

    setTimeout(function () {
      focusInput(input);
    });
  };

  var removeAttributes = function removeAttributes(input) {
    for (var i = 0; i < input.attributes.length; i++) {
      var attrName = input.attributes[i].name;

      if (!(['type', 'value', 'style'].indexOf(attrName) !== -1)) {
        input.removeAttribute(attrName);
      }
    }
  };

  var setAttributes = function setAttributes(inputType, inputAttributes) {
    var input = getInput(getContent(), inputType);

    if (!input) {
      return;
    }

    removeAttributes(input);

    for (var attr in inputAttributes) {
      // Do not set a placeholder for <input type="range">
      // it'll crash Edge, #1298
      if (inputType === 'range' && attr === 'placeholder') {
        continue;
      }

      input.setAttribute(attr, inputAttributes[attr]);
    }
  };

  var setCustomClass = function setCustomClass(params) {
    var inputContainer = getInputContainer(params.input);

    if (params.customClass) {
      addClass(inputContainer, params.customClass.input);
    }
  };

  var setInputPlaceholder = function setInputPlaceholder(input, params) {
    if (!input.placeholder || params.inputPlaceholder) {
      input.placeholder = params.inputPlaceholder;
    }
  };

  var setInputLabel = function setInputLabel(input, prependTo, params) {
    if (params.inputLabel) {
      input.id = swalClasses.input;
      var label = document.createElement('label');
      var labelClass = swalClasses['input-label'];
      label.setAttribute('for', input.id);
      label.className = labelClass;
      addClass(label, params.customClass.inputLabel);
      label.innerText = params.inputLabel;
      prependTo.insertAdjacentElement('beforebegin', label);
    }
  };

  var getInputContainer = function getInputContainer(inputType) {
    var inputClass = swalClasses[inputType] ? swalClasses[inputType] : swalClasses.input;
    return getChildByClass(getContent(), inputClass);
  };

  var renderInputType = {};

  renderInputType.text = renderInputType.email = renderInputType.password = renderInputType.number = renderInputType.tel = renderInputType.url = function (input, params) {
    if (typeof params.inputValue === 'string' || typeof params.inputValue === 'number') {
      input.value = params.inputValue;
    } else if (!isPromise(params.inputValue)) {
      warn("Unexpected type of inputValue! Expected \"string\", \"number\" or \"Promise\", got \"".concat(_typeof(params.inputValue), "\""));
    }

    setInputLabel(input, input, params);
    setInputPlaceholder(input, params);
    input.type = params.input;
    return input;
  };

  renderInputType.file = function (input, params) {
    setInputLabel(input, input, params);
    setInputPlaceholder(input, params);
    return input;
  };

  renderInputType.range = function (range, params) {
    var rangeInput = range.querySelector('input');
    var rangeOutput = range.querySelector('output');
    rangeInput.value = params.inputValue;
    rangeInput.type = params.input;
    rangeOutput.value = params.inputValue;
    setInputLabel(rangeInput, range, params);
    return range;
  };

  renderInputType.select = function (select, params) {
    select.textContent = '';

    if (params.inputPlaceholder) {
      var placeholder = document.createElement('option');
      setInnerHtml(placeholder, params.inputPlaceholder);
      placeholder.value = '';
      placeholder.disabled = true;
      placeholder.selected = true;
      select.appendChild(placeholder);
    }

    setInputLabel(select, select, params);
    return select;
  };

  renderInputType.radio = function (radio) {
    radio.textContent = '';
    return radio;
  };

  renderInputType.checkbox = function (checkboxContainer, params) {
    var checkbox = getInput(getContent(), 'checkbox');
    checkbox.value = 1;
    checkbox.id = swalClasses.checkbox;
    checkbox.checked = Boolean(params.inputValue);
    var label = checkboxContainer.querySelector('span');
    setInnerHtml(label, params.inputPlaceholder);
    return checkboxContainer;
  };

  renderInputType.textarea = function (textarea, params) {
    textarea.value = params.inputValue;
    setInputPlaceholder(textarea, params);
    setInputLabel(textarea, textarea, params);

    var getPadding = function getPadding(el) {
      return parseInt(window.getComputedStyle(el).paddingLeft) + parseInt(window.getComputedStyle(el).paddingRight);
    };

    if ('MutationObserver' in window) {
      // #1699
      var initialPopupWidth = parseInt(window.getComputedStyle(getPopup()).width);

      var outputsize = function outputsize() {
        var contentWidth = textarea.offsetWidth + getPadding(getPopup()) + getPadding(getContent());

        if (contentWidth > initialPopupWidth) {
          getPopup().style.width = "".concat(contentWidth, "px");
        } else {
          getPopup().style.width = null;
        }
      };

      new MutationObserver(outputsize).observe(textarea, {
        attributes: true,
        attributeFilter: ['style']
      });
    }

    return textarea;
  };

  var renderContent = function renderContent(instance, params) {
    var htmlContainer = getHtmlContainer();
    applyCustomClass(htmlContainer, params, 'htmlContainer'); // Content as HTML

    if (params.html) {
      parseHtmlToContainer(params.html, htmlContainer);
      show(htmlContainer, 'block'); // Content as plain text
    } else if (params.text) {
      htmlContainer.textContent = params.text;
      show(htmlContainer, 'block'); // No content
    } else {
      hide(htmlContainer);
    }

    renderInput(instance, params); // Custom class

    applyCustomClass(getContent(), params, 'content');
  };

  var renderFooter = function renderFooter(instance, params) {
    var footer = getFooter();
    toggle(footer, params.footer);

    if (params.footer) {
      parseHtmlToContainer(params.footer, footer);
    } // Custom class


    applyCustomClass(footer, params, 'footer');
  };

  var renderCloseButton = function renderCloseButton(instance, params) {
    var closeButton = getCloseButton();
    setInnerHtml(closeButton, params.closeButtonHtml); // Custom class

    applyCustomClass(closeButton, params, 'closeButton');
    toggle(closeButton, params.showCloseButton);
    closeButton.setAttribute('aria-label', params.closeButtonAriaLabel);
  };

  var renderIcon = function renderIcon(instance, params) {
    var innerParams = privateProps.innerParams.get(instance);
    var icon = getIcon(); // if the given icon already rendered, apply the styling without re-rendering the icon

    if (innerParams && params.icon === innerParams.icon) {
      // Custom or default content
      setContent(icon, params);
      applyStyles(icon, params);
      return;
    }

    if (!params.icon && !params.iconHtml) {
      return hide(icon);
    }

    if (params.icon && Object.keys(iconTypes).indexOf(params.icon) === -1) {
      error("Unknown icon! Expected \"success\", \"error\", \"warning\", \"info\" or \"question\", got \"".concat(params.icon, "\""));
      return hide(icon);
    }

    show(icon); // Custom or default content

    setContent(icon, params);
    applyStyles(icon, params); // Animate icon

    addClass(icon, params.showClass.icon);
  };

  var applyStyles = function applyStyles(icon, params) {
    for (var iconType in iconTypes) {
      if (params.icon !== iconType) {
        removeClass(icon, iconTypes[iconType]);
      }
    }

    addClass(icon, iconTypes[params.icon]); // Icon color

    setColor(icon, params); // Success icon background color

    adjustSuccessIconBackgoundColor(); // Custom class

    applyCustomClass(icon, params, 'icon');
  }; // Adjust success icon background color to match the popup background color


  var adjustSuccessIconBackgoundColor = function adjustSuccessIconBackgoundColor() {
    var popup = getPopup();
    var popupBackgroundColor = window.getComputedStyle(popup).getPropertyValue('background-color');
    var successIconParts = popup.querySelectorAll('[class^=swal2-success-circular-line], .swal2-success-fix');

    for (var i = 0; i < successIconParts.length; i++) {
      successIconParts[i].style.backgroundColor = popupBackgroundColor;
    }
  };

  var setContent = function setContent(icon, params) {
    icon.textContent = '';

    if (params.iconHtml) {
      setInnerHtml(icon, iconContent(params.iconHtml));
    } else if (params.icon === 'success') {
      setInnerHtml(icon, "\n      <div class=\"swal2-success-circular-line-left\"></div>\n      <span class=\"swal2-success-line-tip\"></span> <span class=\"swal2-success-line-long\"></span>\n      <div class=\"swal2-success-ring\"></div> <div class=\"swal2-success-fix\"></div>\n      <div class=\"swal2-success-circular-line-right\"></div>\n    ");
    } else if (params.icon === 'error') {
      setInnerHtml(icon, "\n      <span class=\"swal2-x-mark\">\n        <span class=\"swal2-x-mark-line-left\"></span>\n        <span class=\"swal2-x-mark-line-right\"></span>\n      </span>\n    ");
    } else {
      var defaultIconHtml = {
        question: '?',
        warning: '!',
        info: 'i'
      };
      setInnerHtml(icon, iconContent(defaultIconHtml[params.icon]));
    }
  };

  var setColor = function setColor(icon, params) {
    if (!params.iconColor) {
      return;
    }

    icon.style.color = params.iconColor;
    icon.style.borderColor = params.iconColor;

    for (var _i = 0, _arr = ['.swal2-success-line-tip', '.swal2-success-line-long', '.swal2-x-mark-line-left', '.swal2-x-mark-line-right']; _i < _arr.length; _i++) {
      var sel = _arr[_i];
      setStyle(icon, sel, 'backgroundColor', params.iconColor);
    }

    setStyle(icon, '.swal2-success-ring', 'borderColor', params.iconColor);
  };

  var iconContent = function iconContent(content) {
    return "<div class=\"".concat(swalClasses['icon-content'], "\">").concat(content, "</div>");
  };

  var renderImage = function renderImage(instance, params) {
    var image = getImage();

    if (!params.imageUrl) {
      return hide(image);
    }

    show(image, ''); // Src, alt

    image.setAttribute('src', params.imageUrl);
    image.setAttribute('alt', params.imageAlt); // Width, height

    applyNumericalStyle(image, 'width', params.imageWidth);
    applyNumericalStyle(image, 'height', params.imageHeight); // Class

    image.className = swalClasses.image;
    applyCustomClass(image, params, 'image');
  };

  var currentSteps = [];
  /*
   * Global function for chaining sweetAlert popups
   */

  var queue = function queue(steps) {
    warnAboutDeprecation('Swal.queue()', "async/await");
    var Swal = this;
    currentSteps = steps;

    var resetAndResolve = function resetAndResolve(resolve, value) {
      currentSteps = [];
      resolve(value);
    };

    var queueResult = [];
    return new Promise(function (resolve) {
      (function step(i, callback) {
        if (i < currentSteps.length) {
          document.body.setAttribute('data-swal2-queue-step', i);
          Swal.fire(currentSteps[i]).then(function (result) {
            if (typeof result.value !== 'undefined') {
              queueResult.push(result.value);
              step(i + 1, callback);
            } else {
              resetAndResolve(resolve, {
                dismiss: result.dismiss
              });
            }
          });
        } else {
          resetAndResolve(resolve, {
            value: queueResult
          });
        }
      })(0);
    });
  };
  /*
   * Global function for getting the index of current popup in queue
   */

  var getQueueStep = function getQueueStep() {
    return getContainer() && getContainer().getAttribute('data-queue-step');
  };
  /*
   * Global function for inserting a popup to the queue
   */

  var insertQueueStep = function insertQueueStep(step, index) {
    if (index && index < currentSteps.length) {
      return currentSteps.splice(index, 0, step);
    }

    return currentSteps.push(step);
  };
  /*
   * Global function for deleting a popup from the queue
   */

  var deleteQueueStep = function deleteQueueStep(index) {
    if (typeof currentSteps[index] !== 'undefined') {
      currentSteps.splice(index, 1);
    }
  };

  var createStepElement = function createStepElement(step) {
    var stepEl = document.createElement('li');
    addClass(stepEl, swalClasses['progress-step']);
    setInnerHtml(stepEl, step);
    return stepEl;
  };

  var createLineElement = function createLineElement(params) {
    var lineEl = document.createElement('li');
    addClass(lineEl, swalClasses['progress-step-line']);

    if (params.progressStepsDistance) {
      lineEl.style.width = params.progressStepsDistance;
    }

    return lineEl;
  };

  var renderProgressSteps = function renderProgressSteps(instance, params) {
    var progressStepsContainer = getProgressSteps();

    if (!params.progressSteps || params.progressSteps.length === 0) {
      return hide(progressStepsContainer);
    }

    show(progressStepsContainer);
    progressStepsContainer.textContent = '';
    var currentProgressStep = parseInt(params.currentProgressStep === undefined ? getQueueStep() : params.currentProgressStep);

    if (currentProgressStep >= params.progressSteps.length) {
      warn('Invalid currentProgressStep parameter, it should be less than progressSteps.length ' + '(currentProgressStep like JS arrays starts from 0)');
    }

    params.progressSteps.forEach(function (step, index) {
      var stepEl = createStepElement(step);
      progressStepsContainer.appendChild(stepEl);

      if (index === currentProgressStep) {
        addClass(stepEl, swalClasses['active-progress-step']);
      }

      if (index !== params.progressSteps.length - 1) {
        var lineEl = createLineElement(params);
        progressStepsContainer.appendChild(lineEl);
      }
    });
  };

  var renderTitle = function renderTitle(instance, params) {
    var title = getTitle();
    toggle(title, params.title || params.titleText, 'block');

    if (params.title) {
      parseHtmlToContainer(params.title, title);
    }

    if (params.titleText) {
      title.innerText = params.titleText;
    } // Custom class


    applyCustomClass(title, params, 'title');
  };

  var renderHeader = function renderHeader(instance, params) {
    var header = getHeader(); // Custom class

    applyCustomClass(header, params, 'header'); // Progress steps

    renderProgressSteps(instance, params); // Icon

    renderIcon(instance, params); // Image

    renderImage(instance, params); // Title

    renderTitle(instance, params); // Close button

    renderCloseButton(instance, params);
  };

  var renderPopup = function renderPopup(instance, params) {
    var container = getContainer();
    var popup = getPopup(); // Width

    if (params.toast) {
      // #2170
      applyNumericalStyle(container, 'width', params.width);
      popup.style.width = '100%';
    } else {
      applyNumericalStyle(popup, 'width', params.width);
    } // Padding


    applyNumericalStyle(popup, 'padding', params.padding); // Background

    if (params.background) {
      popup.style.background = params.background;
    }

    hide(getValidationMessage()); // Classes

    addClasses(popup, params);
  };

  var addClasses = function addClasses(popup, params) {
    // Default Class + showClass when updating Swal.update({})
    popup.className = "".concat(swalClasses.popup, " ").concat(isVisible(popup) ? params.showClass.popup : '');

    if (params.toast) {
      addClass([document.documentElement, document.body], swalClasses['toast-shown']);
      addClass(popup, swalClasses.toast);
    } else {
      addClass(popup, swalClasses.modal);
    } // Custom class


    applyCustomClass(popup, params, 'popup');

    if (typeof params.customClass === 'string') {
      addClass(popup, params.customClass);
    } // Icon class (#1842)


    if (params.icon) {
      addClass(popup, swalClasses["icon-".concat(params.icon)]);
    }
  };

  var render = function render(instance, params) {
    renderPopup(instance, params);
    renderContainer(instance, params);
    renderHeader(instance, params);
    renderContent(instance, params);
    renderActions(instance, params);
    renderFooter(instance, params);

    if (typeof params.didRender === 'function') {
      params.didRender(getPopup());
    } else if (typeof params.onRender === 'function') {
      params.onRender(getPopup()); // @deprecated
    }
  };

  /*
   * Global function to determine if SweetAlert2 popup is shown
   */

  var isVisible$1 = function isVisible$$1() {
    return isVisible(getPopup());
  };
  /*
   * Global function to click 'Confirm' button
   */

  var clickConfirm = function clickConfirm() {
    return getConfirmButton() && getConfirmButton().click();
  };
  /*
   * Global function to click 'Deny' button
   */

  var clickDeny = function clickDeny() {
    return getDenyButton() && getDenyButton().click();
  };
  /*
   * Global function to click 'Cancel' button
   */

  var clickCancel = function clickCancel() {
    return getCancelButton() && getCancelButton().click();
  };

  function fire() {
    var Swal = this;

    for (var _len = arguments.length, args = new Array(_len), _key = 0; _key < _len; _key++) {
      args[_key] = arguments[_key];
    }

    return _construct(Swal, args);
  }

  /**
   * Returns an extended version of `Swal` containing `params` as defaults.
   * Useful for reusing Swal configuration.
   *
   * For example:
   *
   * Before:
   * const textPromptOptions = { input: 'text', showCancelButton: true }
   * const {value: firstName} = await Swal.fire({ ...textPromptOptions, title: 'What is your first name?' })
   * const {value: lastName} = await Swal.fire({ ...textPromptOptions, title: 'What is your last name?' })
   *
   * After:
   * const TextPrompt = Swal.mixin({ input: 'text', showCancelButton: true })
   * const {value: firstName} = await TextPrompt('What is your first name?')
   * const {value: lastName} = await TextPrompt('What is your last name?')
   *
   * @param mixinParams
   */
  function mixin(mixinParams) {
    var MixinSwal = /*#__PURE__*/function (_this) {
      _inherits(MixinSwal, _this);

      var _super = _createSuper(MixinSwal);

      function MixinSwal() {
        _classCallCheck(this, MixinSwal);

        return _super.apply(this, arguments);
      }

      _createClass(MixinSwal, [{
        key: "_main",
        value: function _main(params, priorityMixinParams) {
          return _get(_getPrototypeOf(MixinSwal.prototype), "_main", this).call(this, params, _extends({}, mixinParams, priorityMixinParams));
        }
      }]);

      return MixinSwal;
    }(this);

    return MixinSwal;
  }

  /**
   * Shows loader (spinner), this is useful with AJAX requests.
   * By default the loader be shown instead of the "Confirm" button.
   */

  var showLoading = function showLoading(buttonToReplace) {
    var popup = getPopup();

    if (!popup) {
      Swal.fire();
    }

    popup = getPopup();
    var actions = getActions();
    var loader = getLoader();

    if (!buttonToReplace && isVisible(getConfirmButton())) {
      buttonToReplace = getConfirmButton();
    }

    show(actions);

    if (buttonToReplace) {
      hide(buttonToReplace);
      loader.setAttribute('data-button-to-replace', buttonToReplace.className);
    }

    loader.parentNode.insertBefore(loader, buttonToReplace);
    addClass([popup, actions], swalClasses.loading);
    show(loader);
    popup.setAttribute('data-loading', true);
    popup.setAttribute('aria-busy', true);
    popup.focus();
  };

  var RESTORE_FOCUS_TIMEOUT = 100;

  var globalState = {};

  var focusPreviousActiveElement = function focusPreviousActiveElement() {
    if (globalState.previousActiveElement && globalState.previousActiveElement.focus) {
      globalState.previousActiveElement.focus();
      globalState.previousActiveElement = null;
    } else if (document.body) {
      document.body.focus();
    }
  }; // Restore previous active (focused) element


  var restoreActiveElement = function restoreActiveElement(returnFocus) {
    return new Promise(function (resolve) {
      if (!returnFocus) {
        return resolve();
      }

      var x = window.scrollX;
      var y = window.scrollY;
      globalState.restoreFocusTimeout = setTimeout(function () {
        focusPreviousActiveElement();
        resolve();
      }, RESTORE_FOCUS_TIMEOUT); // issues/900

      if (typeof x !== 'undefined' && typeof y !== 'undefined') {
        // IE doesn't have scrollX/scrollY support
        window.scrollTo(x, y);
      }
    });
  };

  /**
   * If `timer` parameter is set, returns number of milliseconds of timer remained.
   * Otherwise, returns undefined.
   */

  var getTimerLeft = function getTimerLeft() {
    return globalState.timeout && globalState.timeout.getTimerLeft();
  };
  /**
   * Stop timer. Returns number of milliseconds of timer remained.
   * If `timer` parameter isn't set, returns undefined.
   */

  var stopTimer = function stopTimer() {
    if (globalState.timeout) {
      stopTimerProgressBar();
      return globalState.timeout.stop();
    }
  };
  /**
   * Resume timer. Returns number of milliseconds of timer remained.
   * If `timer` parameter isn't set, returns undefined.
   */

  var resumeTimer = function resumeTimer() {
    if (globalState.timeout) {
      var remaining = globalState.timeout.start();
      animateTimerProgressBar(remaining);
      return remaining;
    }
  };
  /**
   * Resume timer. Returns number of milliseconds of timer remained.
   * If `timer` parameter isn't set, returns undefined.
   */

  var toggleTimer = function toggleTimer() {
    var timer = globalState.timeout;
    return timer && (timer.running ? stopTimer() : resumeTimer());
  };
  /**
   * Increase timer. Returns number of milliseconds of an updated timer.
   * If `timer` parameter isn't set, returns undefined.
   */

  var increaseTimer = function increaseTimer(n) {
    if (globalState.timeout) {
      var remaining = globalState.timeout.increase(n);
      animateTimerProgressBar(remaining, true);
      return remaining;
    }
  };
  /**
   * Check if timer is running. Returns true if timer is running
   * or false if timer is paused or stopped.
   * If `timer` parameter isn't set, returns undefined
   */

  var isTimerRunning = function isTimerRunning() {
    return globalState.timeout && globalState.timeout.isRunning();
  };

  var bodyClickListenerAdded = false;
  var clickHandlers = {};
  function bindClickHandler() {
    var attr = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 'data-swal-template';
    clickHandlers[attr] = this;

    if (!bodyClickListenerAdded) {
      document.body.addEventListener('click', bodyClickListener);
      bodyClickListenerAdded = true;
    }
  }

  var bodyClickListener = function bodyClickListener(event) {
    // 1. using .parentNode instead of event.path because of better support by old browsers https://stackoverflow.com/a/39245638
    // 2. using .parentNode instead of .parentElement because of IE11 + SVG https://stackoverflow.com/a/36270354
    for (var el = event.target; el && el !== document; el = el.parentNode) {
      for (var attr in clickHandlers) {
        var template = el.getAttribute(attr);

        if (template) {
          clickHandlers[attr].fire({
            template: template
          });
          return;
        }
      }
    }
  };

  var defaultParams = {
    title: '',
    titleText: '',
    text: '',
    html: '',
    footer: '',
    icon: undefined,
    iconColor: undefined,
    iconHtml: undefined,
    template: undefined,
    toast: false,
    animation: true,
    showClass: {
      popup: 'swal2-show',
      backdrop: 'swal2-backdrop-show',
      icon: 'swal2-icon-show'
    },
    hideClass: {
      popup: 'swal2-hide',
      backdrop: 'swal2-backdrop-hide',
      icon: 'swal2-icon-hide'
    },
    customClass: {},
    target: 'body',
    backdrop: true,
    heightAuto: true,
    allowOutsideClick: true,
    allowEscapeKey: true,
    allowEnterKey: true,
    stopKeydownPropagation: true,
    keydownListenerCapture: false,
    showConfirmButton: true,
    showDenyButton: false,
    showCancelButton: false,
    preConfirm: undefined,
    preDeny: undefined,
    confirmButtonText: 'OK',
    confirmButtonAriaLabel: '',
    confirmButtonColor: undefined,
    denyButtonText: 'No',
    denyButtonAriaLabel: '',
    denyButtonColor: undefined,
    cancelButtonText: 'Cancel',
    cancelButtonAriaLabel: '',
    cancelButtonColor: undefined,
    buttonsStyling: true,
    reverseButtons: false,
    focusConfirm: true,
    focusDeny: false,
    focusCancel: false,
    returnFocus: true,
    showCloseButton: false,
    closeButtonHtml: '&times;',
    closeButtonAriaLabel: 'Close this dialog',
    loaderHtml: '',
    showLoaderOnConfirm: false,
    showLoaderOnDeny: false,
    imageUrl: undefined,
    imageWidth: undefined,
    imageHeight: undefined,
    imageAlt: '',
    timer: undefined,
    timerProgressBar: false,
    width: undefined,
    padding: undefined,
    background: undefined,
    input: undefined,
    inputPlaceholder: '',
    inputLabel: '',
    inputValue: '',
    inputOptions: {},
    inputAutoTrim: true,
    inputAttributes: {},
    inputValidator: undefined,
    returnInputValueOnDeny: false,
    validationMessage: undefined,
    grow: false,
    position: 'center',
    progressSteps: [],
    currentProgressStep: undefined,
    progressStepsDistance: undefined,
    onBeforeOpen: undefined,
    onOpen: undefined,
    willOpen: undefined,
    didOpen: undefined,
    onRender: undefined,
    didRender: undefined,
    onClose: undefined,
    onAfterClose: undefined,
    willClose: undefined,
    didClose: undefined,
    onDestroy: undefined,
    didDestroy: undefined,
    scrollbarPadding: true
  };
  var updatableParams = ['allowEscapeKey', 'allowOutsideClick', 'background', 'buttonsStyling', 'cancelButtonAriaLabel', 'cancelButtonColor', 'cancelButtonText', 'closeButtonAriaLabel', 'closeButtonHtml', 'confirmButtonAriaLabel', 'confirmButtonColor', 'confirmButtonText', 'currentProgressStep', 'customClass', 'denyButtonAriaLabel', 'denyButtonColor', 'denyButtonText', 'didClose', 'didDestroy', 'footer', 'hideClass', 'html', 'icon', 'iconColor', 'iconHtml', 'imageAlt', 'imageHeight', 'imageUrl', 'imageWidth', 'onAfterClose', 'onClose', 'onDestroy', 'progressSteps', 'returnFocus', 'reverseButtons', 'showCancelButton', 'showCloseButton', 'showConfirmButton', 'showDenyButton', 'text', 'title', 'titleText', 'willClose'];
  var deprecatedParams = {
    animation: 'showClass" and "hideClass',
    onBeforeOpen: 'willOpen',
    onOpen: 'didOpen',
    onRender: 'didRender',
    onClose: 'willClose',
    onAfterClose: 'didClose',
    onDestroy: 'didDestroy'
  };
  var toastIncompatibleParams = ['allowOutsideClick', 'allowEnterKey', 'backdrop', 'focusConfirm', 'focusDeny', 'focusCancel', 'returnFocus', 'heightAuto', 'keydownListenerCapture'];
  /**
   * Is valid parameter
   * @param {String} paramName
   */

  var isValidParameter = function isValidParameter(paramName) {
    return Object.prototype.hasOwnProperty.call(defaultParams, paramName);
  };
  /**
   * Is valid parameter for Swal.update() method
   * @param {String} paramName
   */

  var isUpdatableParameter = function isUpdatableParameter(paramName) {
    return updatableParams.indexOf(paramName) !== -1;
  };
  /**
   * Is deprecated parameter
   * @param {String} paramName
   */

  var isDeprecatedParameter = function isDeprecatedParameter(paramName) {
    return deprecatedParams[paramName];
  };

  var checkIfParamIsValid = function checkIfParamIsValid(param) {
    if (!isValidParameter(param)) {
      warn("Unknown parameter \"".concat(param, "\""));
    }
  };

  var checkIfToastParamIsValid = function checkIfToastParamIsValid(param) {
    if (toastIncompatibleParams.indexOf(param) !== -1) {
      warn("The parameter \"".concat(param, "\" is incompatible with toasts"));
    }
  };

  var checkIfParamIsDeprecated = function checkIfParamIsDeprecated(param) {
    if (isDeprecatedParameter(param)) {
      warnAboutDeprecation(param, isDeprecatedParameter(param));
    }
  };
  /**
   * Show relevant warnings for given params
   *
   * @param params
   */


  var showWarningsForParams = function showWarningsForParams(params) {
    for (var param in params) {
      checkIfParamIsValid(param);

      if (params.toast) {
        checkIfToastParamIsValid(param);
      }

      checkIfParamIsDeprecated(param);
    }
  };



  var staticMethods = /*#__PURE__*/Object.freeze({
    isValidParameter: isValidParameter,
    isUpdatableParameter: isUpdatableParameter,
    isDeprecatedParameter: isDeprecatedParameter,
    argsToParams: argsToParams,
    isVisible: isVisible$1,
    clickConfirm: clickConfirm,
    clickDeny: clickDeny,
    clickCancel: clickCancel,
    getContainer: getContainer,
    getPopup: getPopup,
    getTitle: getTitle,
    getContent: getContent,
    getHtmlContainer: getHtmlContainer,
    getImage: getImage,
    getIcon: getIcon,
    getInputLabel: getInputLabel,
    getCloseButton: getCloseButton,
    getActions: getActions,
    getConfirmButton: getConfirmButton,
    getDenyButton: getDenyButton,
    getCancelButton: getCancelButton,
    getLoader: getLoader,
    getHeader: getHeader,
    getFooter: getFooter,
    getTimerProgressBar: getTimerProgressBar,
    getFocusableElements: getFocusableElements,
    getValidationMessage: getValidationMessage,
    isLoading: isLoading,
    fire: fire,
    mixin: mixin,
    queue: queue,
    getQueueStep: getQueueStep,
    insertQueueStep: insertQueueStep,
    deleteQueueStep: deleteQueueStep,
    showLoading: showLoading,
    enableLoading: showLoading,
    getTimerLeft: getTimerLeft,
    stopTimer: stopTimer,
    resumeTimer: resumeTimer,
    toggleTimer: toggleTimer,
    increaseTimer: increaseTimer,
    isTimerRunning: isTimerRunning,
    bindClickHandler: bindClickHandler
  });

  /**
   * Hides loader and shows back the button which was hidden by .showLoading()
   */

  function hideLoading() {
    // do nothing if popup is closed
    var innerParams = privateProps.innerParams.get(this);

    if (!innerParams) {
      return;
    }

    var domCache = privateProps.domCache.get(this);
    hide(domCache.loader);
    var buttonToReplace = domCache.popup.getElementsByClassName(domCache.loader.getAttribute('data-button-to-replace'));

    if (buttonToReplace.length) {
      show(buttonToReplace[0], 'inline-block');
    } else if (allButtonsAreHidden()) {
      hide(domCache.actions);
    }

    removeClass([domCache.popup, domCache.actions], swalClasses.loading);
    domCache.popup.removeAttribute('aria-busy');
    domCache.popup.removeAttribute('data-loading');
    domCache.confirmButton.disabled = false;
    domCache.denyButton.disabled = false;
    domCache.cancelButton.disabled = false;
  }

  function getInput$1(instance) {
    var innerParams = privateProps.innerParams.get(instance || this);
    var domCache = privateProps.domCache.get(instance || this);

    if (!domCache) {
      return null;
    }

    return getInput(domCache.content, innerParams.input);
  }

  var fixScrollbar = function fixScrollbar() {
    // for queues, do not do this more than once
    if (states.previousBodyPadding !== null) {
      return;
    } // if the body has overflow


    if (document.body.scrollHeight > window.innerHeight) {
      // add padding so the content doesn't shift after removal of scrollbar
      states.previousBodyPadding = parseInt(window.getComputedStyle(document.body).getPropertyValue('padding-right'));
      document.body.style.paddingRight = "".concat(states.previousBodyPadding + measureScrollbar(), "px");
    }
  };
  var undoScrollbar = function undoScrollbar() {
    if (states.previousBodyPadding !== null) {
      document.body.style.paddingRight = "".concat(states.previousBodyPadding, "px");
      states.previousBodyPadding = null;
    }
  };

  /* istanbul ignore file */

  var iOSfix = function iOSfix() {
    var iOS = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream || navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1;

    if (iOS && !hasClass(document.body, swalClasses.iosfix)) {
      var offset = document.body.scrollTop;
      document.body.style.top = "".concat(offset * -1, "px");
      addClass(document.body, swalClasses.iosfix);
      lockBodyScroll();
      addBottomPaddingForTallPopups(); // #1948
    }
  };

  var addBottomPaddingForTallPopups = function addBottomPaddingForTallPopups() {
    var safari = !navigator.userAgent.match(/(CriOS|FxiOS|EdgiOS|YaBrowser|UCBrowser)/i);

    if (safari) {
      var bottomPanelHeight = 44;

      if (getPopup().scrollHeight > window.innerHeight - bottomPanelHeight) {
        getContainer().style.paddingBottom = "".concat(bottomPanelHeight, "px");
      }
    }
  };

  var lockBodyScroll = function lockBodyScroll() {
    // #1246
    var container = getContainer();
    var preventTouchMove;

    container.ontouchstart = function (e) {
      preventTouchMove = shouldPreventTouchMove(e);
    };

    container.ontouchmove = function (e) {
      if (preventTouchMove) {
        e.preventDefault();
        e.stopPropagation();
      }
    };
  };

  var shouldPreventTouchMove = function shouldPreventTouchMove(event) {
    var target = event.target;
    var container = getContainer();

    if (isStylys(event) || isZoom(event)) {
      return false;
    }

    if (target === container) {
      return true;
    }

    if (!isScrollable(container) && target.tagName !== 'INPUT' && // #1603
    !(isScrollable(getContent()) && // #1944
    getContent().contains(target))) {
      return true;
    }

    return false;
  };

  var isStylys = function isStylys(event) {
    // #1786
    return event.touches && event.touches.length && event.touches[0].touchType === 'stylus';
  };

  var isZoom = function isZoom(event) {
    // #1891
    return event.touches && event.touches.length > 1;
  };

  var undoIOSfix = function undoIOSfix() {
    if (hasClass(document.body, swalClasses.iosfix)) {
      var offset = parseInt(document.body.style.top, 10);
      removeClass(document.body, swalClasses.iosfix);
      document.body.style.top = '';
      document.body.scrollTop = offset * -1;
    }
  };

  /* istanbul ignore file */

  var isIE11 = function isIE11() {
    return !!window.MSInputMethodContext && !!document.documentMode;
  }; // Fix IE11 centering sweetalert2/issues/933


  var fixVerticalPositionIE = function fixVerticalPositionIE() {
    var container = getContainer();
    var popup = getPopup();
    container.style.removeProperty('align-items');

    if (popup.offsetTop < 0) {
      container.style.alignItems = 'flex-start';
    }
  };

  var IEfix = function IEfix() {
    if (typeof window !== 'undefined' && isIE11()) {
      fixVerticalPositionIE();
      window.addEventListener('resize', fixVerticalPositionIE);
    }
  };
  var undoIEfix = function undoIEfix() {
    if (typeof window !== 'undefined' && isIE11()) {
      window.removeEventListener('resize', fixVerticalPositionIE);
    }
  };

  // Adding aria-hidden="true" to elements outside of the active modal dialog ensures that
  // elements not within the active modal dialog will not be surfaced if a user opens a screen
  // reader’s list of elements (headings, form controls, landmarks, etc.) in the document.

  var setAriaHidden = function setAriaHidden() {
    var bodyChildren = toArray(document.body.children);
    bodyChildren.forEach(function (el) {
      if (el === getContainer() || contains(el, getContainer())) {
        return;
      }

      if (el.hasAttribute('aria-hidden')) {
        el.setAttribute('data-previous-aria-hidden', el.getAttribute('aria-hidden'));
      }

      el.setAttribute('aria-hidden', 'true');
    });
  };
  var unsetAriaHidden = function unsetAriaHidden() {
    var bodyChildren = toArray(document.body.children);
    bodyChildren.forEach(function (el) {
      if (el.hasAttribute('data-previous-aria-hidden')) {
        el.setAttribute('aria-hidden', el.getAttribute('data-previous-aria-hidden'));
        el.removeAttribute('data-previous-aria-hidden');
      } else {
        el.removeAttribute('aria-hidden');
      }
    });
  };

  /**
   * This module containts `WeakMap`s for each effectively-"private  property" that a `Swal` has.
   * For example, to set the private property "foo" of `this` to "bar", you can `privateProps.foo.set(this, 'bar')`
   * This is the approach that Babel will probably take to implement private methods/fields
   *   https://github.com/tc39/proposal-private-methods
   *   https://github.com/babel/babel/pull/7555
   * Once we have the changes from that PR in Babel, and our core class fits reasonable in *one module*
   *   then we can use that language feature.
   */
  var privateMethods = {
    swalPromiseResolve: new WeakMap()
  };

  /*
   * Instance method to close sweetAlert
   */

  function removePopupAndResetState(instance, container, returnFocus, didClose) {
    if (isToast()) {
      triggerDidCloseAndDispose(instance, didClose);
    } else {
      restoreActiveElement(returnFocus).then(function () {
        return triggerDidCloseAndDispose(instance, didClose);
      });
      globalState.keydownTarget.removeEventListener('keydown', globalState.keydownHandler, {
        capture: globalState.keydownListenerCapture
      });
      globalState.keydownHandlerAdded = false;
    }

    if (container.parentNode && !document.body.getAttribute('data-swal2-queue-step')) {
      container.parentNode.removeChild(container);
    }

    if (isModal()) {
      undoScrollbar();
      undoIOSfix();
      undoIEfix();
      unsetAriaHidden();
    }

    removeBodyClasses();
  }

  function removeBodyClasses() {
    removeClass([document.documentElement, document.body], [swalClasses.shown, swalClasses['height-auto'], swalClasses['no-backdrop'], swalClasses['toast-shown']]);
  }

  function close(resolveValue) {
    var popup = getPopup();

    if (!popup) {
      return;
    }

    resolveValue = prepareResolveValue(resolveValue);
    var innerParams = privateProps.innerParams.get(this);

    if (!innerParams || hasClass(popup, innerParams.hideClass.popup)) {
      return;
    }

    var swalPromiseResolve = privateMethods.swalPromiseResolve.get(this);
    removeClass(popup, innerParams.showClass.popup);
    addClass(popup, innerParams.hideClass.popup);
    var backdrop = getContainer();
    removeClass(backdrop, innerParams.showClass.backdrop);
    addClass(backdrop, innerParams.hideClass.backdrop);
    handlePopupAnimation(this, popup, innerParams); // Resolve Swal promise

    swalPromiseResolve(resolveValue);
  }

  var prepareResolveValue = function prepareResolveValue(resolveValue) {
    // When user calls Swal.close()
    if (typeof resolveValue === 'undefined') {
      return {
        isConfirmed: false,
        isDenied: false,
        isDismissed: true
      };
    }

    return _extends({
      isConfirmed: false,
      isDenied: false,
      isDismissed: false
    }, resolveValue);
  };

  var handlePopupAnimation = function handlePopupAnimation(instance, popup, innerParams) {
    var container = getContainer(); // If animation is supported, animate

    var animationIsSupported = animationEndEvent && hasCssAnimation(popup);
    var onClose = innerParams.onClose,
        onAfterClose = innerParams.onAfterClose,
        willClose = innerParams.willClose,
        didClose = innerParams.didClose;
    runDidClose(popup, willClose, onClose);

    if (animationIsSupported) {
      animatePopup(instance, popup, container, innerParams.returnFocus, didClose || onAfterClose);
    } else {
      // Otherwise, remove immediately
      removePopupAndResetState(instance, container, innerParams.returnFocus, didClose || onAfterClose);
    }
  };

  var runDidClose = function runDidClose(popup, willClose, onClose) {
    if (willClose !== null && typeof willClose === 'function') {
      willClose(popup);
    } else if (onClose !== null && typeof onClose === 'function') {
      onClose(popup); // @deprecated
    }
  };

  var animatePopup = function animatePopup(instance, popup, container, returnFocus, didClose) {
    globalState.swalCloseEventFinishedCallback = removePopupAndResetState.bind(null, instance, container, returnFocus, didClose);
    popup.addEventListener(animationEndEvent, function (e) {
      if (e.target === popup) {
        globalState.swalCloseEventFinishedCallback();
        delete globalState.swalCloseEventFinishedCallback;
      }
    });
  };

  var triggerDidCloseAndDispose = function triggerDidCloseAndDispose(instance, didClose) {
    setTimeout(function () {
      if (typeof didClose === 'function') {
        didClose();
      }

      instance._destroy();
    });
  };

  function setButtonsDisabled(instance, buttons, disabled) {
    var domCache = privateProps.domCache.get(instance);
    buttons.forEach(function (button) {
      domCache[button].disabled = disabled;
    });
  }

  function setInputDisabled(input, disabled) {
    if (!input) {
      return false;
    }

    if (input.type === 'radio') {
      var radiosContainer = input.parentNode.parentNode;
      var radios = radiosContainer.querySelectorAll('input');

      for (var i = 0; i < radios.length; i++) {
        radios[i].disabled = disabled;
      }
    } else {
      input.disabled = disabled;
    }
  }

  function enableButtons() {
    setButtonsDisabled(this, ['confirmButton', 'denyButton', 'cancelButton'], false);
  }
  function disableButtons() {
    setButtonsDisabled(this, ['confirmButton', 'denyButton', 'cancelButton'], true);
  }
  function enableInput() {
    return setInputDisabled(this.getInput(), false);
  }
  function disableInput() {
    return setInputDisabled(this.getInput(), true);
  }

  function showValidationMessage(error) {
    var domCache = privateProps.domCache.get(this);
    var params = privateProps.innerParams.get(this);
    setInnerHtml(domCache.validationMessage, error);
    domCache.validationMessage.className = swalClasses['validation-message'];

    if (params.customClass && params.customClass.validationMessage) {
      addClass(domCache.validationMessage, params.customClass.validationMessage);
    }

    show(domCache.validationMessage);
    var input = this.getInput();

    if (input) {
      input.setAttribute('aria-invalid', true);
      input.setAttribute('aria-describedBy', swalClasses['validation-message']);
      focusInput(input);
      addClass(input, swalClasses.inputerror);
    }
  } // Hide block with validation message

  function resetValidationMessage$1() {
    var domCache = privateProps.domCache.get(this);

    if (domCache.validationMessage) {
      hide(domCache.validationMessage);
    }

    var input = this.getInput();

    if (input) {
      input.removeAttribute('aria-invalid');
      input.removeAttribute('aria-describedBy');
      removeClass(input, swalClasses.inputerror);
    }
  }

  function getProgressSteps$1() {
    var domCache = privateProps.domCache.get(this);
    return domCache.progressSteps;
  }

  var Timer = /*#__PURE__*/function () {
    function Timer(callback, delay) {
      _classCallCheck(this, Timer);

      this.callback = callback;
      this.remaining = delay;
      this.running = false;
      this.start();
    }

    _createClass(Timer, [{
      key: "start",
      value: function start() {
        if (!this.running) {
          this.running = true;
          this.started = new Date();
          this.id = setTimeout(this.callback, this.remaining);
        }

        return this.remaining;
      }
    }, {
      key: "stop",
      value: function stop() {
        if (this.running) {
          this.running = false;
          clearTimeout(this.id);
          this.remaining -= new Date() - this.started;
        }

        return this.remaining;
      }
    }, {
      key: "increase",
      value: function increase(n) {
        var running = this.running;

        if (running) {
          this.stop();
        }

        this.remaining += n;

        if (running) {
          this.start();
        }

        return this.remaining;
      }
    }, {
      key: "getTimerLeft",
      value: function getTimerLeft() {
        if (this.running) {
          this.stop();
          this.start();
        }

        return this.remaining;
      }
    }, {
      key: "isRunning",
      value: function isRunning() {
        return this.running;
      }
    }]);

    return Timer;
  }();

  var defaultInputValidators = {
    email: function email(string, validationMessage) {
      return /^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.-]+\.[a-zA-Z0-9-]{2,24}$/.test(string) ? Promise.resolve() : Promise.resolve(validationMessage || 'Invalid email address');
    },
    url: function url(string, validationMessage) {
      // taken from https://stackoverflow.com/a/3809435 with a small change from #1306 and #2013
      return /^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._+~#=]{1,256}\.[a-z]{2,63}\b([-a-zA-Z0-9@:%_+.~#?&/=]*)$/.test(string) ? Promise.resolve() : Promise.resolve(validationMessage || 'Invalid URL');
    }
  };

  function setDefaultInputValidators(params) {
    // Use default `inputValidator` for supported input types if not provided
    if (!params.inputValidator) {
      Object.keys(defaultInputValidators).forEach(function (key) {
        if (params.input === key) {
          params.inputValidator = defaultInputValidators[key];
        }
      });
    }
  }

  function validateCustomTargetElement(params) {
    // Determine if the custom target element is valid
    if (!params.target || typeof params.target === 'string' && !document.querySelector(params.target) || typeof params.target !== 'string' && !params.target.appendChild) {
      warn('Target parameter is not valid, defaulting to "body"');
      params.target = 'body';
    }
  }
  /**
   * Set type, text and actions on popup
   *
   * @param params
   * @returns {boolean}
   */


  function setParameters(params) {
    setDefaultInputValidators(params); // showLoaderOnConfirm && preConfirm

    if (params.showLoaderOnConfirm && !params.preConfirm) {
      warn('showLoaderOnConfirm is set to true, but preConfirm is not defined.\n' + 'showLoaderOnConfirm should be used together with preConfirm, see usage example:\n' + 'https://sweetalert2.github.io/#ajax-request');
    } // params.animation will be actually used in renderPopup.js
    // but in case when params.animation is a function, we need to call that function
    // before popup (re)initialization, so it'll be possible to check Swal.isVisible()
    // inside the params.animation function


    params.animation = callIfFunction(params.animation);
    validateCustomTargetElement(params); // Replace newlines with <br> in title

    if (typeof params.title === 'string') {
      params.title = params.title.split('\n').join('<br />');
    }

    init(params);
  }

  var swalStringParams = ['swal-title', 'swal-html', 'swal-footer'];
  var getTemplateParams = function getTemplateParams(params) {
    var template = typeof params.template === 'string' ? document.querySelector(params.template) : params.template;

    if (!template) {
      return {};
    }

    var templateContent = template.content || template; // IE11

    showWarningsForElements(templateContent);

    var result = _extends(getSwalParams(templateContent), getSwalButtons(templateContent), getSwalImage(templateContent), getSwalIcon(templateContent), getSwalInput(templateContent), getSwalStringParams(templateContent, swalStringParams));

    return result;
  };

  var getSwalParams = function getSwalParams(templateContent) {
    var result = {};
    toArray(templateContent.querySelectorAll('swal-param')).forEach(function (param) {
      showWarningsForAttributes(param, ['name', 'value']);
      var paramName = param.getAttribute('name');
      var value = param.getAttribute('value');

      if (typeof defaultParams[paramName] === 'boolean' && value === 'false') {
        value = false;
      }

      if (_typeof(defaultParams[paramName]) === 'object') {
        value = JSON.parse(value);
      }

      result[paramName] = value;
    });
    return result;
  };

  var getSwalButtons = function getSwalButtons(templateContent) {
    var result = {};
    toArray(templateContent.querySelectorAll('swal-button')).forEach(function (button) {
      showWarningsForAttributes(button, ['type', 'color', 'aria-label']);
      var type = button.getAttribute('type');
      result["".concat(type, "ButtonText")] = button.innerHTML;
      result["show".concat(capitalizeFirstLetter(type), "Button")] = true;

      if (button.hasAttribute('color')) {
        result["".concat(type, "ButtonColor")] = button.getAttribute('color');
      }

      if (button.hasAttribute('aria-label')) {
        result["".concat(type, "ButtonAriaLabel")] = button.getAttribute('aria-label');
      }
    });
    return result;
  };

  var getSwalImage = function getSwalImage(templateContent) {
    var result = {};
    var image = templateContent.querySelector('swal-image');

    if (image) {
      showWarningsForAttributes(image, ['src', 'width', 'height', 'alt']);

      if (image.hasAttribute('src')) {
        result.imageUrl = image.getAttribute('src');
      }

      if (image.hasAttribute('width')) {
        result.imageWidth = image.getAttribute('width');
      }

      if (image.hasAttribute('height')) {
        result.imageHeight = image.getAttribute('height');
      }

      if (image.hasAttribute('alt')) {
        result.imageAlt = image.getAttribute('alt');
      }
    }

    return result;
  };

  var getSwalIcon = function getSwalIcon(templateContent) {
    var result = {};
    var icon = templateContent.querySelector('swal-icon');

    if (icon) {
      showWarningsForAttributes(icon, ['type', 'color']);

      if (icon.hasAttribute('type')) {
        result.icon = icon.getAttribute('type');
      }

      if (icon.hasAttribute('color')) {
        result.iconColor = icon.getAttribute('color');
      }

      result.iconHtml = icon.innerHTML;
    }

    return result;
  };

  var getSwalInput = function getSwalInput(templateContent) {
    var result = {};
    var input = templateContent.querySelector('swal-input');

    if (input) {
      showWarningsForAttributes(input, ['type', 'label', 'placeholder', 'value']);
      result.input = input.getAttribute('type') || 'text';

      if (input.hasAttribute('label')) {
        result.inputLabel = input.getAttribute('label');
      }

      if (input.hasAttribute('placeholder')) {
        result.inputPlaceholder = input.getAttribute('placeholder');
      }

      if (input.hasAttribute('value')) {
        result.inputValue = input.getAttribute('value');
      }
    }

    var inputOptions = templateContent.querySelectorAll('swal-input-option');

    if (inputOptions.length) {
      result.inputOptions = {};
      toArray(inputOptions).forEach(function (option) {
        showWarningsForAttributes(option, ['value']);
        var optionValue = option.getAttribute('value');
        var optionName = option.innerHTML;
        result.inputOptions[optionValue] = optionName;
      });
    }

    return result;
  };

  var getSwalStringParams = function getSwalStringParams(templateContent, paramNames) {
    var result = {};

    for (var i in paramNames) {
      var paramName = paramNames[i];
      var tag = templateContent.querySelector(paramName);

      if (tag) {
        showWarningsForAttributes(tag, []);
        result[paramName.replace(/^swal-/, '')] = tag.innerHTML.trim();
      }
    }

    return result;
  };

  var showWarningsForElements = function showWarningsForElements(template) {
    var allowedElements = swalStringParams.concat(['swal-param', 'swal-button', 'swal-image', 'swal-icon', 'swal-input', 'swal-input-option']);
    toArray(template.querySelectorAll('*')).forEach(function (el) {
      if (el.parentNode !== template) {
        // can't use template.children because of IE11
        return;
      }

      var tagName = el.tagName.toLowerCase();

      if (allowedElements.indexOf(tagName) === -1) {
        warn("Unrecognized element <".concat(tagName, ">"));
      }
    });
  };

  var showWarningsForAttributes = function showWarningsForAttributes(el, allowedAttributes) {
    toArray(el.attributes).forEach(function (attribute) {
      if (allowedAttributes.indexOf(attribute.name) === -1) {
        warn(["Unrecognized attribute \"".concat(attribute.name, "\" on <").concat(el.tagName.toLowerCase(), ">."), "".concat(allowedAttributes.length ? "Allowed attributes are: ".concat(allowedAttributes.join(', ')) : 'To set the value, use HTML within the element.')]);
      }
    });
  };

  var SHOW_CLASS_TIMEOUT = 10;
  /**
   * Open popup, add necessary classes and styles, fix scrollbar
   *
   * @param params
   */

  var openPopup = function openPopup(params) {
    var container = getContainer();
    var popup = getPopup();

    if (typeof params.willOpen === 'function') {
      params.willOpen(popup);
    } else if (typeof params.onBeforeOpen === 'function') {
      params.onBeforeOpen(popup); // @deprecated
    }

    var bodyStyles = window.getComputedStyle(document.body);
    var initialBodyOverflow = bodyStyles.overflowY;
    addClasses$1(container, popup, params); // scrolling is 'hidden' until animation is done, after that 'auto'

    setTimeout(function () {
      setScrollingVisibility(container, popup);
    }, SHOW_CLASS_TIMEOUT);

    if (isModal()) {
      fixScrollContainer(container, params.scrollbarPadding, initialBodyOverflow);
      setAriaHidden();
    }

    if (!isToast() && !globalState.previousActiveElement) {
      globalState.previousActiveElement = document.activeElement;
    }

    runDidOpen(popup, params);
    removeClass(container, swalClasses['no-transition']);
  };

  var runDidOpen = function runDidOpen(popup, params) {
    if (typeof params.didOpen === 'function') {
      setTimeout(function () {
        return params.didOpen(popup);
      });
    } else if (typeof params.onOpen === 'function') {
      setTimeout(function () {
        return params.onOpen(popup);
      }); // @deprecated
    }
  };

  var swalOpenAnimationFinished = function swalOpenAnimationFinished(event) {
    var popup = getPopup();

    if (event.target !== popup) {
      return;
    }

    var container = getContainer();
    popup.removeEventListener(animationEndEvent, swalOpenAnimationFinished);
    container.style.overflowY = 'auto';
  };

  var setScrollingVisibility = function setScrollingVisibility(container, popup) {
    if (animationEndEvent && hasCssAnimation(popup)) {
      container.style.overflowY = 'hidden';
      popup.addEventListener(animationEndEvent, swalOpenAnimationFinished);
    } else {
      container.style.overflowY = 'auto';
    }
  };

  var fixScrollContainer = function fixScrollContainer(container, scrollbarPadding, initialBodyOverflow) {
    iOSfix();
    IEfix();

    if (scrollbarPadding && initialBodyOverflow !== 'hidden') {
      fixScrollbar();
    } // sweetalert2/issues/1247


    setTimeout(function () {
      container.scrollTop = 0;
    });
  };

  var addClasses$1 = function addClasses(container, popup, params) {
    addClass(container, params.showClass.backdrop); // the workaround with setting/unsetting opacity is needed for #2019 and 2059

    popup.style.setProperty('opacity', '0', 'important');
    show(popup);
    setTimeout(function () {
      // Animate popup right after showing it
      addClass(popup, params.showClass.popup); // and remove the opacity workaround

      popup.style.removeProperty('opacity');
    }, SHOW_CLASS_TIMEOUT); // 10ms in order to fix #2062

    addClass([document.documentElement, document.body], swalClasses.shown);

    if (params.heightAuto && params.backdrop && !params.toast) {
      addClass([document.documentElement, document.body], swalClasses['height-auto']);
    }
  };

  var handleInputOptionsAndValue = function handleInputOptionsAndValue(instance, params) {
    if (params.input === 'select' || params.input === 'radio') {
      handleInputOptions(instance, params);
    } else if (['text', 'email', 'number', 'tel', 'textarea'].indexOf(params.input) !== -1 && (hasToPromiseFn(params.inputValue) || isPromise(params.inputValue))) {
      handleInputValue(instance, params);
    }
  };
  var getInputValue = function getInputValue(instance, innerParams) {
    var input = instance.getInput();

    if (!input) {
      return null;
    }

    switch (innerParams.input) {
      case 'checkbox':
        return getCheckboxValue(input);

      case 'radio':
        return getRadioValue(input);

      case 'file':
        return getFileValue(input);

      default:
        return innerParams.inputAutoTrim ? input.value.trim() : input.value;
    }
  };

  var getCheckboxValue = function getCheckboxValue(input) {
    return input.checked ? 1 : 0;
  };

  var getRadioValue = function getRadioValue(input) {
    return input.checked ? input.value : null;
  };

  var getFileValue = function getFileValue(input) {
    return input.files.length ? input.getAttribute('multiple') !== null ? input.files : input.files[0] : null;
  };

  var handleInputOptions = function handleInputOptions(instance, params) {
    var content = getContent();

    var processInputOptions = function processInputOptions(inputOptions) {
      return populateInputOptions[params.input](content, formatInputOptions(inputOptions), params);
    };

    if (hasToPromiseFn(params.inputOptions) || isPromise(params.inputOptions)) {
      showLoading(getConfirmButton());
      asPromise(params.inputOptions).then(function (inputOptions) {
        instance.hideLoading();
        processInputOptions(inputOptions);
      });
    } else if (_typeof(params.inputOptions) === 'object') {
      processInputOptions(params.inputOptions);
    } else {
      error("Unexpected type of inputOptions! Expected object, Map or Promise, got ".concat(_typeof(params.inputOptions)));
    }
  };

  var handleInputValue = function handleInputValue(instance, params) {
    var input = instance.getInput();
    hide(input);
    asPromise(params.inputValue).then(function (inputValue) {
      input.value = params.input === 'number' ? parseFloat(inputValue) || 0 : "".concat(inputValue);
      show(input);
      input.focus();
      instance.hideLoading();
    })["catch"](function (err) {
      error("Error in inputValue promise: ".concat(err));
      input.value = '';
      show(input);
      input.focus();
      instance.hideLoading();
    });
  };

  var populateInputOptions = {
    select: function select(content, inputOptions, params) {
      var select = getChildByClass(content, swalClasses.select);

      var renderOption = function renderOption(parent, optionLabel, optionValue) {
        var option = document.createElement('option');
        option.value = optionValue;
        setInnerHtml(option, optionLabel);
        option.selected = isSelected(optionValue, params.inputValue);
        parent.appendChild(option);
      };

      inputOptions.forEach(function (inputOption) {
        var optionValue = inputOption[0];
        var optionLabel = inputOption[1]; // <optgroup> spec:
        // https://www.w3.org/TR/html401/interact/forms.html#h-17.6
        // "...all OPTGROUP elements must be specified directly within a SELECT element (i.e., groups may not be nested)..."
        // check whether this is a <optgroup>

        if (Array.isArray(optionLabel)) {
          // if it is an array, then it is an <optgroup>
          var optgroup = document.createElement('optgroup');
          optgroup.label = optionValue;
          optgroup.disabled = false; // not configurable for now

          select.appendChild(optgroup);
          optionLabel.forEach(function (o) {
            return renderOption(optgroup, o[1], o[0]);
          });
        } else {
          // case of <option>
          renderOption(select, optionLabel, optionValue);
        }
      });
      select.focus();
    },
    radio: function radio(content, inputOptions, params) {
      var radio = getChildByClass(content, swalClasses.radio);
      inputOptions.forEach(function (inputOption) {
        var radioValue = inputOption[0];
        var radioLabel = inputOption[1];
        var radioInput = document.createElement('input');
        var radioLabelElement = document.createElement('label');
        radioInput.type = 'radio';
        radioInput.name = swalClasses.radio;
        radioInput.value = radioValue;

        if (isSelected(radioValue, params.inputValue)) {
          radioInput.checked = true;
        }

        var label = document.createElement('span');
        setInnerHtml(label, radioLabel);
        label.className = swalClasses.label;
        radioLabelElement.appendChild(radioInput);
        radioLabelElement.appendChild(label);
        radio.appendChild(radioLabelElement);
      });
      var radios = radio.querySelectorAll('input');

      if (radios.length) {
        radios[0].focus();
      }
    }
  };
  /**
   * Converts `inputOptions` into an array of `[value, label]`s
   * @param inputOptions
   */

  var formatInputOptions = function formatInputOptions(inputOptions) {
    var result = [];

    if (typeof Map !== 'undefined' && inputOptions instanceof Map) {
      inputOptions.forEach(function (value, key) {
        var valueFormatted = value;

        if (_typeof(valueFormatted) === 'object') {
          // case of <optgroup>
          valueFormatted = formatInputOptions(valueFormatted);
        }

        result.push([key, valueFormatted]);
      });
    } else {
      Object.keys(inputOptions).forEach(function (key) {
        var valueFormatted = inputOptions[key];

        if (_typeof(valueFormatted) === 'object') {
          // case of <optgroup>
          valueFormatted = formatInputOptions(valueFormatted);
        }

        result.push([key, valueFormatted]);
      });
    }

    return result;
  };

  var isSelected = function isSelected(optionValue, inputValue) {
    return inputValue && inputValue.toString() === optionValue.toString();
  };

  var handleConfirmButtonClick = function handleConfirmButtonClick(instance, innerParams) {
    instance.disableButtons();

    if (innerParams.input) {
      handleConfirmOrDenyWithInput(instance, innerParams, 'confirm');
    } else {
      confirm(instance, innerParams, true);
    }
  };
  var handleDenyButtonClick = function handleDenyButtonClick(instance, innerParams) {
    instance.disableButtons();

    if (innerParams.returnInputValueOnDeny) {
      handleConfirmOrDenyWithInput(instance, innerParams, 'deny');
    } else {
      deny(instance, innerParams, false);
    }
  };
  var handleCancelButtonClick = function handleCancelButtonClick(instance, dismissWith) {
    instance.disableButtons();
    dismissWith(DismissReason.cancel);
  };

  var handleConfirmOrDenyWithInput = function handleConfirmOrDenyWithInput(instance, innerParams, type
  /* type is either 'confirm' or 'deny' */
  ) {
    var inputValue = getInputValue(instance, innerParams);

    if (innerParams.inputValidator) {
      handleInputValidator(instance, innerParams, inputValue);
    } else if (!instance.getInput().checkValidity()) {
      instance.enableButtons();
      instance.showValidationMessage(innerParams.validationMessage);
    } else if (type === 'deny') {
      deny(instance, innerParams, inputValue);
    } else {
      confirm(instance, innerParams, inputValue);
    }
  };

  var handleInputValidator = function handleInputValidator(instance, innerParams, inputValue) {
    instance.disableInput();
    var validationPromise = Promise.resolve().then(function () {
      return asPromise(innerParams.inputValidator(inputValue, innerParams.validationMessage));
    });
    validationPromise.then(function (validationMessage) {
      instance.enableButtons();
      instance.enableInput();

      if (validationMessage) {
        instance.showValidationMessage(validationMessage);
      } else {
        confirm(instance, innerParams, inputValue);
      }
    });
  };

  var deny = function deny(instance, innerParams, value) {
    if (innerParams.showLoaderOnDeny) {
      showLoading(getDenyButton());
    }

    if (innerParams.preDeny) {
      var preDenyPromise = Promise.resolve().then(function () {
        return asPromise(innerParams.preDeny(value, innerParams.validationMessage));
      });
      preDenyPromise.then(function (preDenyValue) {
        if (preDenyValue === false) {
          instance.hideLoading();
        } else {
          instance.closePopup({
            isDenied: true,
            value: typeof preDenyValue === 'undefined' ? value : preDenyValue
          });
        }
      });
    } else {
      instance.closePopup({
        isDenied: true,
        value: value
      });
    }
  };

  var succeedWith = function succeedWith(instance, value) {
    instance.closePopup({
      isConfirmed: true,
      value: value
    });
  };

  var confirm = function confirm(instance, innerParams, value) {
    if (innerParams.showLoaderOnConfirm) {
      showLoading(); // TODO: make showLoading an *instance* method
    }

    if (innerParams.preConfirm) {
      instance.resetValidationMessage();
      var preConfirmPromise = Promise.resolve().then(function () {
        return asPromise(innerParams.preConfirm(value, innerParams.validationMessage));
      });
      preConfirmPromise.then(function (preConfirmValue) {
        if (isVisible(getValidationMessage()) || preConfirmValue === false) {
          instance.hideLoading();
        } else {
          succeedWith(instance, typeof preConfirmValue === 'undefined' ? value : preConfirmValue);
        }
      });
    } else {
      succeedWith(instance, value);
    }
  };

  var addKeydownHandler = function addKeydownHandler(instance, globalState, innerParams, dismissWith) {
    if (globalState.keydownTarget && globalState.keydownHandlerAdded) {
      globalState.keydownTarget.removeEventListener('keydown', globalState.keydownHandler, {
        capture: globalState.keydownListenerCapture
      });
      globalState.keydownHandlerAdded = false;
    }

    if (!innerParams.toast) {
      globalState.keydownHandler = function (e) {
        return keydownHandler(instance, e, dismissWith);
      };

      globalState.keydownTarget = innerParams.keydownListenerCapture ? window : getPopup();
      globalState.keydownListenerCapture = innerParams.keydownListenerCapture;
      globalState.keydownTarget.addEventListener('keydown', globalState.keydownHandler, {
        capture: globalState.keydownListenerCapture
      });
      globalState.keydownHandlerAdded = true;
    }
  }; // Focus handling

  var setFocus = function setFocus(innerParams, index, increment) {
    var focusableElements = getFocusableElements(); // search for visible elements and select the next possible match

    if (focusableElements.length) {
      index = index + increment; // rollover to first item

      if (index === focusableElements.length) {
        index = 0; // go to last item
      } else if (index === -1) {
        index = focusableElements.length - 1;
      }

      return focusableElements[index].focus();
    } // no visible focusable elements, focus the popup


    getPopup().focus();
  };
  var arrowKeysNextButton = ['ArrowRight', 'ArrowDown', 'Right', 'Down' // IE11
  ];
  var arrowKeysPreviousButton = ['ArrowLeft', 'ArrowUp', 'Left', 'Up' // IE11
  ];
  var escKeys = ['Escape', 'Esc' // IE11
  ];

  var keydownHandler = function keydownHandler(instance, e, dismissWith) {
    var innerParams = privateProps.innerParams.get(instance);

    if (!innerParams) {
      return; // This instance has already been destroyed
    }

    if (innerParams.stopKeydownPropagation) {
      e.stopPropagation();
    } // ENTER


    if (e.key === 'Enter') {
      handleEnter(instance, e, innerParams); // TAB
    } else if (e.key === 'Tab') {
      handleTab(e, innerParams); // ARROWS - switch focus between buttons
    } else if ([].concat(arrowKeysNextButton, arrowKeysPreviousButton).indexOf(e.key) !== -1) {
      handleArrows(e.key); // ESC
    } else if (escKeys.indexOf(e.key) !== -1) {
      handleEsc(e, innerParams, dismissWith);
    }
  };

  var handleEnter = function handleEnter(instance, e, innerParams) {
    // #720 #721
    if (e.isComposing) {
      return;
    }

    if (e.target && instance.getInput() && e.target.outerHTML === instance.getInput().outerHTML) {
      if (['textarea', 'file'].indexOf(innerParams.input) !== -1) {
        return; // do not submit
      }

      clickConfirm();
      e.preventDefault();
    }
  };

  var handleTab = function handleTab(e, innerParams) {
    var targetElement = e.target;
    var focusableElements = getFocusableElements();
    var btnIndex = -1;

    for (var i = 0; i < focusableElements.length; i++) {
      if (targetElement === focusableElements[i]) {
        btnIndex = i;
        break;
      }
    }

    if (!e.shiftKey) {
      // Cycle to the next button
      setFocus(innerParams, btnIndex, 1);
    } else {
      // Cycle to the prev button
      setFocus(innerParams, btnIndex, -1);
    }

    e.stopPropagation();
    e.preventDefault();
  };

  var handleArrows = function handleArrows(key) {
    var confirmButton = getConfirmButton();
    var denyButton = getDenyButton();
    var cancelButton = getCancelButton();

    if (!([confirmButton, denyButton, cancelButton].indexOf(document.activeElement) !== -1)) {
      return;
    }

    var sibling = arrowKeysNextButton.indexOf(key) !== -1 ? 'nextElementSibling' : 'previousElementSibling';
    var buttonToFocus = document.activeElement[sibling];

    if (buttonToFocus) {
      buttonToFocus.focus();
    }
  };

  var handleEsc = function handleEsc(e, innerParams, dismissWith) {
    if (callIfFunction(innerParams.allowEscapeKey)) {
      e.preventDefault();
      dismissWith(DismissReason.esc);
    }
  };

  var handlePopupClick = function handlePopupClick(instance, domCache, dismissWith) {
    var innerParams = privateProps.innerParams.get(instance);

    if (innerParams.toast) {
      handleToastClick(instance, domCache, dismissWith);
    } else {
      // Ignore click events that had mousedown on the popup but mouseup on the container
      // This can happen when the user drags a slider
      handleModalMousedown(domCache); // Ignore click events that had mousedown on the container but mouseup on the popup

      handleContainerMousedown(domCache);
      handleModalClick(instance, domCache, dismissWith);
    }
  };

  var handleToastClick = function handleToastClick(instance, domCache, dismissWith) {
    // Closing toast by internal click
    domCache.popup.onclick = function () {
      var innerParams = privateProps.innerParams.get(instance);

      if (innerParams.showConfirmButton || innerParams.showDenyButton || innerParams.showCancelButton || innerParams.showCloseButton || innerParams.timer || innerParams.input) {
        return;
      }

      dismissWith(DismissReason.close);
    };
  };

  var ignoreOutsideClick = false;

  var handleModalMousedown = function handleModalMousedown(domCache) {
    domCache.popup.onmousedown = function () {
      domCache.container.onmouseup = function (e) {
        domCache.container.onmouseup = undefined; // We only check if the mouseup target is the container because usually it doesn't
        // have any other direct children aside of the popup

        if (e.target === domCache.container) {
          ignoreOutsideClick = true;
        }
      };
    };
  };

  var handleContainerMousedown = function handleContainerMousedown(domCache) {
    domCache.container.onmousedown = function () {
      domCache.popup.onmouseup = function (e) {
        domCache.popup.onmouseup = undefined; // We also need to check if the mouseup target is a child of the popup

        if (e.target === domCache.popup || domCache.popup.contains(e.target)) {
          ignoreOutsideClick = true;
        }
      };
    };
  };

  var handleModalClick = function handleModalClick(instance, domCache, dismissWith) {
    domCache.container.onclick = function (e) {
      var innerParams = privateProps.innerParams.get(instance);

      if (ignoreOutsideClick) {
        ignoreOutsideClick = false;
        return;
      }

      if (e.target === domCache.container && callIfFunction(innerParams.allowOutsideClick)) {
        dismissWith(DismissReason.backdrop);
      }
    };
  };

  function _main(userParams) {
    var mixinParams = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : {};
    showWarningsForParams(_extends({}, mixinParams, userParams));

    if (globalState.currentInstance) {
      globalState.currentInstance._destroy();
    }

    globalState.currentInstance = this;
    var innerParams = prepareParams(userParams, mixinParams);
    setParameters(innerParams);
    Object.freeze(innerParams); // clear the previous timer

    if (globalState.timeout) {
      globalState.timeout.stop();
      delete globalState.timeout;
    } // clear the restore focus timeout


    clearTimeout(globalState.restoreFocusTimeout);
    var domCache = populateDomCache(this);
    render(this, innerParams);
    privateProps.innerParams.set(this, innerParams);
    return swalPromise(this, domCache, innerParams);
  }

  var prepareParams = function prepareParams(userParams, mixinParams) {
    var templateParams = getTemplateParams(userParams);

    var params = _extends({}, defaultParams, mixinParams, templateParams, userParams); // precedence is described in #2131


    params.showClass = _extends({}, defaultParams.showClass, params.showClass);
    params.hideClass = _extends({}, defaultParams.hideClass, params.hideClass); // @deprecated

    if (userParams.animation === false) {
      params.showClass = {
        popup: 'swal2-noanimation',
        backdrop: 'swal2-noanimation'
      };
      params.hideClass = {};
    }

    return params;
  };

  var swalPromise = function swalPromise(instance, domCache, innerParams) {
    return new Promise(function (resolve) {
      // functions to handle all closings/dismissals
      var dismissWith = function dismissWith(dismiss) {
        instance.closePopup({
          isDismissed: true,
          dismiss: dismiss
        });
      };

      privateMethods.swalPromiseResolve.set(instance, resolve);

      domCache.confirmButton.onclick = function () {
        return handleConfirmButtonClick(instance, innerParams);
      };

      domCache.denyButton.onclick = function () {
        return handleDenyButtonClick(instance, innerParams);
      };

      domCache.cancelButton.onclick = function () {
        return handleCancelButtonClick(instance, dismissWith);
      };

      domCache.closeButton.onclick = function () {
        return dismissWith(DismissReason.close);
      };

      handlePopupClick(instance, domCache, dismissWith);
      addKeydownHandler(instance, globalState, innerParams, dismissWith);
      handleInputOptionsAndValue(instance, innerParams);
      openPopup(innerParams);
      setupTimer(globalState, innerParams, dismissWith);
      initFocus(domCache, innerParams); // Scroll container to top on open (#1247, #1946)

      setTimeout(function () {
        domCache.container.scrollTop = 0;
      });
    });
  };

  var populateDomCache = function populateDomCache(instance) {
    var domCache = {
      popup: getPopup(),
      container: getContainer(),
      content: getContent(),
      actions: getActions(),
      confirmButton: getConfirmButton(),
      denyButton: getDenyButton(),
      cancelButton: getCancelButton(),
      loader: getLoader(),
      closeButton: getCloseButton(),
      validationMessage: getValidationMessage(),
      progressSteps: getProgressSteps()
    };
    privateProps.domCache.set(instance, domCache);
    return domCache;
  };

  var setupTimer = function setupTimer(globalState$$1, innerParams, dismissWith) {
    var timerProgressBar = getTimerProgressBar();
    hide(timerProgressBar);

    if (innerParams.timer) {
      globalState$$1.timeout = new Timer(function () {
        dismissWith('timer');
        delete globalState$$1.timeout;
      }, innerParams.timer);

      if (innerParams.timerProgressBar) {
        show(timerProgressBar);
        setTimeout(function () {
          if (globalState$$1.timeout && globalState$$1.timeout.running) {
            // timer can be already stopped or unset at this point
            animateTimerProgressBar(innerParams.timer);
          }
        });
      }
    }
  };

  var initFocus = function initFocus(domCache, innerParams) {
    if (innerParams.toast) {
      return;
    }

    if (!callIfFunction(innerParams.allowEnterKey)) {
      return blurActiveElement();
    }

    if (!focusButton(domCache, innerParams)) {
      setFocus(innerParams, -1, 1);
    }
  };

  var focusButton = function focusButton(domCache, innerParams) {
    if (innerParams.focusDeny && isVisible(domCache.denyButton)) {
      domCache.denyButton.focus();
      return true;
    }

    if (innerParams.focusCancel && isVisible(domCache.cancelButton)) {
      domCache.cancelButton.focus();
      return true;
    }

    if (innerParams.focusConfirm && isVisible(domCache.confirmButton)) {
      domCache.confirmButton.focus();
      return true;
    }

    return false;
  };

  var blurActiveElement = function blurActiveElement() {
    if (document.activeElement && typeof document.activeElement.blur === 'function') {
      document.activeElement.blur();
    }
  };

  /**
   * Updates popup parameters.
   */

  function update(params) {
    var popup = getPopup();
    var innerParams = privateProps.innerParams.get(this);

    if (!popup || hasClass(popup, innerParams.hideClass.popup)) {
      return warn("You're trying to update the closed or closing popup, that won't work. Use the update() method in preConfirm parameter or show a new popup.");
    }

    var validUpdatableParams = {}; // assign valid params from `params` to `defaults`

    Object.keys(params).forEach(function (param) {
      if (Swal.isUpdatableParameter(param)) {
        validUpdatableParams[param] = params[param];
      } else {
        warn("Invalid parameter to update: \"".concat(param, "\". Updatable params are listed here: https://github.com/sweetalert2/sweetalert2/blob/master/src/utils/params.js\n\nIf you think this parameter should be updatable, request it here: https://github.com/sweetalert2/sweetalert2/issues/new?template=02_feature_request.md"));
      }
    });

    var updatedParams = _extends({}, innerParams, validUpdatableParams);

    render(this, updatedParams);
    privateProps.innerParams.set(this, updatedParams);
    Object.defineProperties(this, {
      params: {
        value: _extends({}, this.params, params),
        writable: false,
        enumerable: true
      }
    });
  }

  function _destroy() {
    var domCache = privateProps.domCache.get(this);
    var innerParams = privateProps.innerParams.get(this);

    if (!innerParams) {
      return; // This instance has already been destroyed
    } // Check if there is another Swal closing


    if (domCache.popup && globalState.swalCloseEventFinishedCallback) {
      globalState.swalCloseEventFinishedCallback();
      delete globalState.swalCloseEventFinishedCallback;
    } // Check if there is a swal disposal defer timer


    if (globalState.deferDisposalTimer) {
      clearTimeout(globalState.deferDisposalTimer);
      delete globalState.deferDisposalTimer;
    }

    runDidDestroy(innerParams);
    disposeSwal(this);
  }

  var runDidDestroy = function runDidDestroy(innerParams) {
    if (typeof innerParams.didDestroy === 'function') {
      innerParams.didDestroy();
    } else if (typeof innerParams.onDestroy === 'function') {
      innerParams.onDestroy(); // @deprecated
    }
  };

  var disposeSwal = function disposeSwal(instance) {
    // Unset this.params so GC will dispose it (#1569)
    delete instance.params; // Unset globalState props so GC will dispose globalState (#1569)

    delete globalState.keydownHandler;
    delete globalState.keydownTarget; // Unset WeakMaps so GC will be able to dispose them (#1569)

    unsetWeakMaps(privateProps);
    unsetWeakMaps(privateMethods);
  };

  var unsetWeakMaps = function unsetWeakMaps(obj) {
    for (var i in obj) {
      obj[i] = new WeakMap();
    }
  };



  var instanceMethods = /*#__PURE__*/Object.freeze({
    hideLoading: hideLoading,
    disableLoading: hideLoading,
    getInput: getInput$1,
    close: close,
    closePopup: close,
    closeModal: close,
    closeToast: close,
    enableButtons: enableButtons,
    disableButtons: disableButtons,
    enableInput: enableInput,
    disableInput: disableInput,
    showValidationMessage: showValidationMessage,
    resetValidationMessage: resetValidationMessage$1,
    getProgressSteps: getProgressSteps$1,
    _main: _main,
    update: update,
    _destroy: _destroy
  });

  var currentInstance;

  var SweetAlert = /*#__PURE__*/function () {
    function SweetAlert() {
      _classCallCheck(this, SweetAlert);

      // Prevent run in Node env
      if (typeof window === 'undefined') {
        return;
      } // Check for the existence of Promise


      if (typeof Promise === 'undefined') {
        error('This package requires a Promise library, please include a shim to enable it in this browser (See: https://github.com/sweetalert2/sweetalert2/wiki/Migration-from-SweetAlert-to-SweetAlert2#1-ie-support)');
      }

      currentInstance = this;

      for (var _len = arguments.length, args = new Array(_len), _key = 0; _key < _len; _key++) {
        args[_key] = arguments[_key];
      }

      var outerParams = Object.freeze(this.constructor.argsToParams(args));
      Object.defineProperties(this, {
        params: {
          value: outerParams,
          writable: false,
          enumerable: true,
          configurable: true
        }
      });

      var promise = this._main(this.params);

      privateProps.promise.set(this, promise);
    } // `catch` cannot be the name of a module export, so we define our thenable methods here instead


    _createClass(SweetAlert, [{
      key: "then",
      value: function then(onFulfilled) {
        var promise = privateProps.promise.get(this);
        return promise.then(onFulfilled);
      }
    }, {
      key: "finally",
      value: function _finally(onFinally) {
        var promise = privateProps.promise.get(this);
        return promise["finally"](onFinally);
      }
    }]);

    return SweetAlert;
  }(); // Assign instance methods from src/instanceMethods/*.js to prototype


  _extends(SweetAlert.prototype, instanceMethods); // Assign static methods from src/staticMethods/*.js to constructor


  _extends(SweetAlert, staticMethods); // Proxy to instance methods to constructor, for now, for backwards compatibility


  Object.keys(instanceMethods).forEach(function (key) {
    SweetAlert[key] = function () {
      if (currentInstance) {
        var _currentInstance;

        return (_currentInstance = currentInstance)[key].apply(_currentInstance, arguments);
      }
    };
  });
  SweetAlert.DismissReason = DismissReason;
  SweetAlert.version = '10.16.9';

  var Swal = SweetAlert;
  Swal["default"] = Swal;

  return Swal;

}));
if (typeof this !== 'undefined' && this.Sweetalert2){  this.swal = this.sweetAlert = this.Swal = this.SweetAlert = this.Sweetalert2}

"undefined"!=typeof document&&function(e,t){var n=e.createElement("style");if(e.getElementsByTagName("head")[0].appendChild(n),n.styleSheet)n.styleSheet.disabled||(n.styleSheet.cssText=t);else try{n.innerHTML=t}catch(e){n.innerText=t}}(document,".swal2-popup.swal2-toast{flex-direction:column;align-items:stretch;width:auto;padding:1.25em;overflow-y:hidden;background:#fff;box-shadow:0 0 .625em #d9d9d9}.swal2-popup.swal2-toast .swal2-header{flex-direction:row;padding:0}.swal2-popup.swal2-toast .swal2-title{flex-grow:1;justify-content:flex-start;margin:0 .625em;font-size:1em}.swal2-popup.swal2-toast .swal2-loading{justify-content:center}.swal2-popup.swal2-toast .swal2-input{height:2em;margin:.3125em auto;font-size:1em}.swal2-popup.swal2-toast .swal2-validation-message{font-size:1em}.swal2-popup.swal2-toast .swal2-footer{margin:.5em 0 0;padding:.5em 0 0;font-size:.8em}.swal2-popup.swal2-toast .swal2-close{position:static;width:.8em;height:.8em;line-height:.8}.swal2-popup.swal2-toast .swal2-content{justify-content:flex-start;margin:0 .625em;padding:0;font-size:1em;text-align:initial}.swal2-popup.swal2-toast .swal2-html-container{padding:.625em 0 0}.swal2-popup.swal2-toast .swal2-html-container:empty{padding:0}.swal2-popup.swal2-toast .swal2-icon{width:2em;min-width:2em;height:2em;margin:0 .5em 0 0}.swal2-popup.swal2-toast .swal2-icon .swal2-icon-content{display:flex;align-items:center;font-size:1.8em;font-weight:700}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-popup.swal2-toast .swal2-icon .swal2-icon-content{font-size:.25em}}.swal2-popup.swal2-toast .swal2-icon.swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line]{top:.875em;width:1.375em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:.3125em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:.3125em}.swal2-popup.swal2-toast .swal2-actions{flex:1;flex-basis:auto!important;align-self:stretch;width:auto;height:2.2em;height:auto;margin:0 .3125em;margin-top:.3125em;padding:0}.swal2-popup.swal2-toast .swal2-styled{margin:.125em .3125em;padding:.3125em .625em;font-size:1em}.swal2-popup.swal2-toast .swal2-styled:focus{box-shadow:0 0 0 1px #fff,0 0 0 3px rgba(100,150,200,.5)}.swal2-popup.swal2-toast .swal2-success{border-color:#a5dc86}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line]{position:absolute;width:1.6em;height:3em;transform:rotate(45deg);border-radius:50%}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.8em;left:-.5em;transform:rotate(-45deg);transform-origin:2em 2em;border-radius:4em 0 0 4em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.25em;left:.9375em;transform-origin:0 1.5em;border-radius:0 4em 4em 0}.swal2-popup.swal2-toast .swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-success .swal2-success-fix{top:0;left:.4375em;width:.4375em;height:2.6875em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line]{height:.3125em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=tip]{top:1.125em;left:.1875em;width:.75em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=long]{top:.9375em;right:.1875em;width:1.375em}.swal2-popup.swal2-toast .swal2-success.swal2-icon-show .swal2-success-line-tip{-webkit-animation:swal2-toast-animate-success-line-tip .75s;animation:swal2-toast-animate-success-line-tip .75s}.swal2-popup.swal2-toast .swal2-success.swal2-icon-show .swal2-success-line-long{-webkit-animation:swal2-toast-animate-success-line-long .75s;animation:swal2-toast-animate-success-line-long .75s}.swal2-popup.swal2-toast.swal2-show{-webkit-animation:swal2-toast-show .5s;animation:swal2-toast-show .5s}.swal2-popup.swal2-toast.swal2-hide{-webkit-animation:swal2-toast-hide .1s forwards;animation:swal2-toast-hide .1s forwards}.swal2-container{display:flex;position:fixed;z-index:1060;top:0;right:0;bottom:0;left:0;flex-direction:row;align-items:center;justify-content:center;padding:.625em;overflow-x:hidden;transition:background-color .1s;-webkit-overflow-scrolling:touch}.swal2-container.swal2-backdrop-show,.swal2-container.swal2-noanimation{background:rgba(0,0,0,.4)}.swal2-container.swal2-backdrop-hide{background:0 0!important}.swal2-container.swal2-top{align-items:flex-start}.swal2-container.swal2-top-left,.swal2-container.swal2-top-start{align-items:flex-start;justify-content:flex-start}.swal2-container.swal2-top-end,.swal2-container.swal2-top-right{align-items:flex-start;justify-content:flex-end}.swal2-container.swal2-center{align-items:center}.swal2-container.swal2-center-left,.swal2-container.swal2-center-start{align-items:center;justify-content:flex-start}.swal2-container.swal2-center-end,.swal2-container.swal2-center-right{align-items:center;justify-content:flex-end}.swal2-container.swal2-bottom{align-items:flex-end}.swal2-container.swal2-bottom-left,.swal2-container.swal2-bottom-start{align-items:flex-end;justify-content:flex-start}.swal2-container.swal2-bottom-end,.swal2-container.swal2-bottom-right{align-items:flex-end;justify-content:flex-end}.swal2-container.swal2-bottom-end>:first-child,.swal2-container.swal2-bottom-left>:first-child,.swal2-container.swal2-bottom-right>:first-child,.swal2-container.swal2-bottom-start>:first-child,.swal2-container.swal2-bottom>:first-child{margin-top:auto}.swal2-container.swal2-grow-fullscreen>.swal2-modal{display:flex!important;flex:1;align-self:stretch;justify-content:center}.swal2-container.swal2-grow-row>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container.swal2-grow-column{flex:1;flex-direction:column}.swal2-container.swal2-grow-column.swal2-bottom,.swal2-container.swal2-grow-column.swal2-center,.swal2-container.swal2-grow-column.swal2-top{align-items:center}.swal2-container.swal2-grow-column.swal2-bottom-left,.swal2-container.swal2-grow-column.swal2-bottom-start,.swal2-container.swal2-grow-column.swal2-center-left,.swal2-container.swal2-grow-column.swal2-center-start,.swal2-container.swal2-grow-column.swal2-top-left,.swal2-container.swal2-grow-column.swal2-top-start{align-items:flex-start}.swal2-container.swal2-grow-column.swal2-bottom-end,.swal2-container.swal2-grow-column.swal2-bottom-right,.swal2-container.swal2-grow-column.swal2-center-end,.swal2-container.swal2-grow-column.swal2-center-right,.swal2-container.swal2-grow-column.swal2-top-end,.swal2-container.swal2-grow-column.swal2-top-right{align-items:flex-end}.swal2-container.swal2-grow-column>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container.swal2-no-transition{transition:none!important}.swal2-container:not(.swal2-top):not(.swal2-top-start):not(.swal2-top-end):not(.swal2-top-left):not(.swal2-top-right):not(.swal2-center-start):not(.swal2-center-end):not(.swal2-center-left):not(.swal2-center-right):not(.swal2-bottom):not(.swal2-bottom-start):not(.swal2-bottom-end):not(.swal2-bottom-left):not(.swal2-bottom-right):not(.swal2-grow-fullscreen)>.swal2-modal{margin:auto}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-container .swal2-modal{margin:0!important}}.swal2-popup{display:none;position:relative;box-sizing:border-box;flex-direction:column;justify-content:center;width:32em;max-width:100%;padding:1.25em;border:none;border-radius:5px;background:#fff;font-family:inherit;font-size:1rem}.swal2-popup:focus{outline:0}.swal2-popup.swal2-loading{overflow-y:hidden}.swal2-header{display:flex;flex-direction:column;align-items:center;padding:0 1.8em}.swal2-title{position:relative;max-width:100%;margin:0 0 .4em;padding:0;color:#595959;font-size:1.875em;font-weight:600;text-align:center;text-transform:none;word-wrap:break-word}.swal2-actions{display:flex;z-index:1;box-sizing:border-box;flex-wrap:wrap;align-items:center;justify-content:center;width:100%;margin:1.25em auto 0;padding:0}.swal2-actions:not(.swal2-loading) .swal2-styled[disabled]{opacity:.4}.swal2-actions:not(.swal2-loading) .swal2-styled:hover{background-image:linear-gradient(rgba(0,0,0,.1),rgba(0,0,0,.1))}.swal2-actions:not(.swal2-loading) .swal2-styled:active{background-image:linear-gradient(rgba(0,0,0,.2),rgba(0,0,0,.2))}.swal2-loader{display:none;align-items:center;justify-content:center;width:2.2em;height:2.2em;margin:0 1.875em;-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal;border-width:.25em;border-style:solid;border-radius:100%;border-color:#2778c4 transparent #2778c4 transparent}.swal2-styled{margin:.3125em;padding:.625em 1.1em;box-shadow:none;font-weight:500}.swal2-styled:not([disabled]){cursor:pointer}.swal2-styled.swal2-confirm{border:0;border-radius:.25em;background:initial;background-color:#2778c4;color:#fff;font-size:1em}.swal2-styled.swal2-deny{border:0;border-radius:.25em;background:initial;background-color:#d14529;color:#fff;font-size:1em}.swal2-styled.swal2-cancel{border:0;border-radius:.25em;background:initial;background-color:#757575;color:#fff;font-size:1em}.swal2-styled:focus{outline:0;box-shadow:0 0 0 3px rgba(100,150,200,.5)}.swal2-styled::-moz-focus-inner{border:0}.swal2-footer{justify-content:center;margin:1.25em 0 0;padding:1em 0 0;border-top:1px solid #eee;color:#545454;font-size:1em}.swal2-timer-progress-bar-container{position:absolute;right:0;bottom:0;left:0;height:.25em;overflow:hidden;border-bottom-right-radius:5px;border-bottom-left-radius:5px}.swal2-timer-progress-bar{width:100%;height:.25em;background:rgba(0,0,0,.2)}.swal2-image{max-width:100%;margin:1.25em auto}.swal2-close{position:absolute;z-index:2;top:0;right:0;align-items:center;justify-content:center;width:1.2em;height:1.2em;padding:0;overflow:hidden;transition:color .1s ease-out;border:none;border-radius:5px;background:0 0;color:#ccc;font-family:serif;font-size:2.5em;line-height:1.2;cursor:pointer}.swal2-close:hover{transform:none;background:0 0;color:#f27474}.swal2-close:focus{outline:0;box-shadow:inset 0 0 0 3px rgba(100,150,200,.5)}.swal2-close::-moz-focus-inner{border:0}.swal2-content{z-index:1;justify-content:center;margin:0;padding:0 1.6em;color:#545454;font-size:1.125em;font-weight:400;line-height:normal;text-align:center;word-wrap:break-word}.swal2-checkbox,.swal2-file,.swal2-input,.swal2-radio,.swal2-select,.swal2-textarea{margin:1em auto}.swal2-file,.swal2-input,.swal2-textarea{box-sizing:border-box;width:100%;transition:border-color .3s,box-shadow .3s;border:1px solid #d9d9d9;border-radius:.1875em;background:inherit;box-shadow:inset 0 1px 1px rgba(0,0,0,.06);color:inherit;font-size:1.125em}.swal2-file.swal2-inputerror,.swal2-input.swal2-inputerror,.swal2-textarea.swal2-inputerror{border-color:#f27474!important;box-shadow:0 0 2px #f27474!important}.swal2-file:focus,.swal2-input:focus,.swal2-textarea:focus{border:1px solid #b4dbed;outline:0;box-shadow:0 0 0 3px rgba(100,150,200,.5)}.swal2-file::-moz-placeholder,.swal2-input::-moz-placeholder,.swal2-textarea::-moz-placeholder{color:#ccc}.swal2-file:-ms-input-placeholder,.swal2-input:-ms-input-placeholder,.swal2-textarea:-ms-input-placeholder{color:#ccc}.swal2-file::placeholder,.swal2-input::placeholder,.swal2-textarea::placeholder{color:#ccc}.swal2-range{margin:1em auto;background:#fff}.swal2-range input{width:80%}.swal2-range output{width:20%;color:inherit;font-weight:600;text-align:center}.swal2-range input,.swal2-range output{height:2.625em;padding:0;font-size:1.125em;line-height:2.625em}.swal2-input{height:2.625em;padding:0 .75em}.swal2-input[type=number]{max-width:10em}.swal2-file{background:inherit;font-size:1.125em}.swal2-textarea{height:6.75em;padding:.75em}.swal2-select{min-width:50%;max-width:100%;padding:.375em .625em;background:inherit;color:inherit;font-size:1.125em}.swal2-checkbox,.swal2-radio{align-items:center;justify-content:center;background:#fff;color:inherit}.swal2-checkbox label,.swal2-radio label{margin:0 .6em;font-size:1.125em}.swal2-checkbox input,.swal2-radio input{flex-shrink:0;margin:0 .4em}.swal2-input-label{display:flex;justify-content:center;margin:1em auto}.swal2-validation-message{align-items:center;justify-content:center;margin:0 -2.7em;padding:.625em;overflow:hidden;background:#f0f0f0;color:#666;font-size:1em;font-weight:300}.swal2-validation-message::before{content:\"!\";display:inline-block;width:1.5em;min-width:1.5em;height:1.5em;margin:0 .625em;border-radius:50%;background-color:#f27474;color:#fff;font-weight:600;line-height:1.5em;text-align:center}.swal2-icon{position:relative;box-sizing:content-box;justify-content:center;width:5em;height:5em;margin:1.25em auto 1.875em;border:.25em solid transparent;border-radius:50%;border-color:#000;font-family:inherit;line-height:5em;cursor:default;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.swal2-icon .swal2-icon-content{display:flex;align-items:center;font-size:3.75em}.swal2-icon.swal2-error{border-color:#f27474;color:#f27474}.swal2-icon.swal2-error .swal2-x-mark{position:relative;flex-grow:1}.swal2-icon.swal2-error [class^=swal2-x-mark-line]{display:block;position:absolute;top:2.3125em;width:2.9375em;height:.3125em;border-radius:.125em;background-color:#f27474}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:1.0625em;transform:rotate(45deg)}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:1em;transform:rotate(-45deg)}.swal2-icon.swal2-error.swal2-icon-show{-webkit-animation:swal2-animate-error-icon .5s;animation:swal2-animate-error-icon .5s}.swal2-icon.swal2-error.swal2-icon-show .swal2-x-mark{-webkit-animation:swal2-animate-error-x-mark .5s;animation:swal2-animate-error-x-mark .5s}.swal2-icon.swal2-warning{border-color:#facea8;color:#f8bb86}.swal2-icon.swal2-info{border-color:#9de0f6;color:#3fc3ee}.swal2-icon.swal2-question{border-color:#c9dae1;color:#87adbd}.swal2-icon.swal2-success{border-color:#a5dc86;color:#a5dc86}.swal2-icon.swal2-success [class^=swal2-success-circular-line]{position:absolute;width:3.75em;height:7.5em;transform:rotate(45deg);border-radius:50%}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.4375em;left:-2.0635em;transform:rotate(-45deg);transform-origin:3.75em 3.75em;border-radius:7.5em 0 0 7.5em}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.6875em;left:1.875em;transform:rotate(-45deg);transform-origin:0 3.75em;border-radius:0 7.5em 7.5em 0}.swal2-icon.swal2-success .swal2-success-ring{position:absolute;z-index:2;top:-.25em;left:-.25em;box-sizing:content-box;width:100%;height:100%;border:.25em solid rgba(165,220,134,.3);border-radius:50%}.swal2-icon.swal2-success .swal2-success-fix{position:absolute;z-index:1;top:.5em;left:1.625em;width:.4375em;height:5.625em;transform:rotate(-45deg)}.swal2-icon.swal2-success [class^=swal2-success-line]{display:block;position:absolute;z-index:2;height:.3125em;border-radius:.125em;background-color:#a5dc86}.swal2-icon.swal2-success [class^=swal2-success-line][class$=tip]{top:2.875em;left:.8125em;width:1.5625em;transform:rotate(45deg)}.swal2-icon.swal2-success [class^=swal2-success-line][class$=long]{top:2.375em;right:.5em;width:2.9375em;transform:rotate(-45deg)}.swal2-icon.swal2-success.swal2-icon-show .swal2-success-line-tip{-webkit-animation:swal2-animate-success-line-tip .75s;animation:swal2-animate-success-line-tip .75s}.swal2-icon.swal2-success.swal2-icon-show .swal2-success-line-long{-webkit-animation:swal2-animate-success-line-long .75s;animation:swal2-animate-success-line-long .75s}.swal2-icon.swal2-success.swal2-icon-show .swal2-success-circular-line-right{-webkit-animation:swal2-rotate-success-circular-line 4.25s ease-in;animation:swal2-rotate-success-circular-line 4.25s ease-in}.swal2-progress-steps{flex-wrap:wrap;align-items:center;max-width:100%;margin:0 0 1.25em;padding:0;background:inherit;font-weight:600}.swal2-progress-steps li{display:inline-block;position:relative}.swal2-progress-steps .swal2-progress-step{z-index:20;flex-shrink:0;width:2em;height:2em;border-radius:2em;background:#2778c4;color:#fff;line-height:2em;text-align:center}.swal2-progress-steps .swal2-progress-step.swal2-active-progress-step{background:#2778c4}.swal2-progress-steps .swal2-progress-step.swal2-active-progress-step~.swal2-progress-step{background:#add8e6;color:#fff}.swal2-progress-steps .swal2-progress-step.swal2-active-progress-step~.swal2-progress-step-line{background:#add8e6}.swal2-progress-steps .swal2-progress-step-line{z-index:10;flex-shrink:0;width:2.5em;height:.4em;margin:0 -1px;background:#2778c4}[class^=swal2]{-webkit-tap-highlight-color:transparent}.swal2-show{-webkit-animation:swal2-show .3s;animation:swal2-show .3s}.swal2-hide{-webkit-animation:swal2-hide .15s forwards;animation:swal2-hide .15s forwards}.swal2-noanimation{transition:none}.swal2-scrollbar-measure{position:absolute;top:-9999px;width:50px;height:50px;overflow:scroll}.swal2-rtl .swal2-close{right:auto;left:0}.swal2-rtl .swal2-timer-progress-bar{right:0;left:auto}@supports (-ms-accelerator:true){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@-webkit-keyframes swal2-toast-show{0%{transform:translateY(-.625em) rotateZ(2deg)}33%{transform:translateY(0) rotateZ(-2deg)}66%{transform:translateY(.3125em) rotateZ(2deg)}100%{transform:translateY(0) rotateZ(0)}}@keyframes swal2-toast-show{0%{transform:translateY(-.625em) rotateZ(2deg)}33%{transform:translateY(0) rotateZ(-2deg)}66%{transform:translateY(.3125em) rotateZ(2deg)}100%{transform:translateY(0) rotateZ(0)}}@-webkit-keyframes swal2-toast-hide{100%{transform:rotateZ(1deg);opacity:0}}@keyframes swal2-toast-hide{100%{transform:rotateZ(1deg);opacity:0}}@-webkit-keyframes swal2-toast-animate-success-line-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@keyframes swal2-toast-animate-success-line-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@-webkit-keyframes swal2-toast-animate-success-line-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}@keyframes swal2-toast-animate-success-line-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}@-webkit-keyframes swal2-show{0%{transform:scale(.7)}45%{transform:scale(1.05)}80%{transform:scale(.95)}100%{transform:scale(1)}}@keyframes swal2-show{0%{transform:scale(.7)}45%{transform:scale(1.05)}80%{transform:scale(.95)}100%{transform:scale(1)}}@-webkit-keyframes swal2-hide{0%{transform:scale(1);opacity:1}100%{transform:scale(.5);opacity:0}}@keyframes swal2-hide{0%{transform:scale(1);opacity:1}100%{transform:scale(.5);opacity:0}}@-webkit-keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.8125em;width:1.5625em}}@keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.8125em;width:1.5625em}}@-webkit-keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@-webkit-keyframes swal2-rotate-success-circular-line{0%{transform:rotate(-45deg)}5%{transform:rotate(-45deg)}12%{transform:rotate(-405deg)}100%{transform:rotate(-405deg)}}@keyframes swal2-rotate-success-circular-line{0%{transform:rotate(-45deg)}5%{transform:rotate(-45deg)}12%{transform:rotate(-405deg)}100%{transform:rotate(-405deg)}}@-webkit-keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;transform:scale(.4);opacity:0}50%{margin-top:1.625em;transform:scale(.4);opacity:0}80%{margin-top:-.375em;transform:scale(1.15)}100%{margin-top:0;transform:scale(1);opacity:1}}@keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;transform:scale(.4);opacity:0}50%{margin-top:1.625em;transform:scale(.4);opacity:0}80%{margin-top:-.375em;transform:scale(1.15)}100%{margin-top:0;transform:scale(1);opacity:1}}@-webkit-keyframes swal2-animate-error-icon{0%{transform:rotateX(100deg);opacity:0}100%{transform:rotateX(0);opacity:1}}@keyframes swal2-animate-error-icon{0%{transform:rotateX(100deg);opacity:0}100%{transform:rotateX(0);opacity:1}}@-webkit-keyframes swal2-rotate-loading{0%{transform:rotate(0)}100%{transform:rotate(360deg)}}@keyframes swal2-rotate-loading{0%{transform:rotate(0)}100%{transform:rotate(360deg)}}body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown){overflow:hidden}body.swal2-height-auto{height:auto!important}body.swal2-no-backdrop .swal2-container{top:auto;right:auto;bottom:auto;left:auto;max-width:calc(100% - .625em * 2);background-color:transparent!important}body.swal2-no-backdrop .swal2-container>.swal2-modal{box-shadow:0 0 10px rgba(0,0,0,.4)}body.swal2-no-backdrop .swal2-container.swal2-top{top:0;left:50%;transform:translateX(-50%)}body.swal2-no-backdrop .swal2-container.swal2-top-left,body.swal2-no-backdrop .swal2-container.swal2-top-start{top:0;left:0}body.swal2-no-backdrop .swal2-container.swal2-top-end,body.swal2-no-backdrop .swal2-container.swal2-top-right{top:0;right:0}body.swal2-no-backdrop .swal2-container.swal2-center{top:50%;left:50%;transform:translate(-50%,-50%)}body.swal2-no-backdrop .swal2-container.swal2-center-left,body.swal2-no-backdrop .swal2-container.swal2-center-start{top:50%;left:0;transform:translateY(-50%)}body.swal2-no-backdrop .swal2-container.swal2-center-end,body.swal2-no-backdrop .swal2-container.swal2-center-right{top:50%;right:0;transform:translateY(-50%)}body.swal2-no-backdrop .swal2-container.swal2-bottom{bottom:0;left:50%;transform:translateX(-50%)}body.swal2-no-backdrop .swal2-container.swal2-bottom-left,body.swal2-no-backdrop .swal2-container.swal2-bottom-start{bottom:0;left:0}body.swal2-no-backdrop .swal2-container.swal2-bottom-end,body.swal2-no-backdrop .swal2-container.swal2-bottom-right{right:0;bottom:0}@media print{body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown){overflow-y:scroll!important}body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown)>[aria-hidden=true]{display:none}body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown) .swal2-container{position:static!important}}body.swal2-toast-shown .swal2-container{background-color:transparent}body.swal2-toast-shown .swal2-container.swal2-top{top:0;right:auto;bottom:auto;left:50%;transform:translateX(-50%)}body.swal2-toast-shown .swal2-container.swal2-top-end,body.swal2-toast-shown .swal2-container.swal2-top-right{top:0;right:0;bottom:auto;left:auto}body.swal2-toast-shown .swal2-container.swal2-top-left,body.swal2-toast-shown .swal2-container.swal2-top-start{top:0;right:auto;bottom:auto;left:0}body.swal2-toast-shown .swal2-container.swal2-center-left,body.swal2-toast-shown .swal2-container.swal2-center-start{top:50%;right:auto;bottom:auto;left:0;transform:translateY(-50%)}body.swal2-toast-shown .swal2-container.swal2-center{top:50%;right:auto;bottom:auto;left:50%;transform:translate(-50%,-50%)}body.swal2-toast-shown .swal2-container.swal2-center-end,body.swal2-toast-shown .swal2-container.swal2-center-right{top:50%;right:0;bottom:auto;left:auto;transform:translateY(-50%)}body.swal2-toast-shown .swal2-container.swal2-bottom-left,body.swal2-toast-shown .swal2-container.swal2-bottom-start{top:auto;right:auto;bottom:0;left:0}body.swal2-toast-shown .swal2-container.swal2-bottom{top:auto;right:auto;bottom:0;left:50%;transform:translateX(-50%)}body.swal2-toast-shown .swal2-container.swal2-bottom-end,body.swal2-toast-shown .swal2-container.swal2-bottom-right{top:auto;right:0;bottom:0;left:auto}");

/***/ }),

/***/ 41:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return BodyOutputType; });
/* unused harmony export DefaultIconClasses */
/* unused harmony export DefaultTypeClasses */
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "b", function() { return ToasterConfig; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "c", function() { return ToasterContainerComponent; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "d", function() { return ToasterModule; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "e", function() { return ToasterService; });
/* unused harmony export ɵa */
/* unused harmony export ɵb */
/* unused harmony export ɵc */
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(0);
/* harmony import */ var _angular_animations__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(6);
/* harmony import */ var rxjs__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(15);
/* harmony import */ var rxjs__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(28);
/* harmony import */ var rxjs_operators__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(192);
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(1);
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(56);











const _c0 = function (a0, a1) { return [a0, a1]; };
function ToasterContainerComponent_div_3_Template(rf, ctx) { if (rf & 1) {
    const _r3 = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵgetCurrentView */ "kc"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementStart */ "jc"](0, "div", 2);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵlistener */ "qc"]("click", function ToasterContainerComponent_div_3_Template_div_click_0_listener() { _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵrestoreView */ "Jc"](_r3); const toast_r1 = ctx.$implicit; const ctx_r2 = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵnextContext */ "uc"](); return ctx_r2.click(toast_r1); })("clickEvent", function ToasterContainerComponent_div_3_Template_div_clickEvent_0_listener($event) { _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵrestoreView */ "Jc"](_r3); const ctx_r4 = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵnextContext */ "uc"](); return ctx_r4.childClick($event); })("removeToastEvent", function ToasterContainerComponent_div_3_Template_div_removeToastEvent_0_listener($event) { _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵrestoreView */ "Jc"](_r3); const ctx_r5 = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵnextContext */ "uc"](); return ctx_r5.removeToast($event); });
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](1, "\n            ");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementEnd */ "ic"]();
} if (rf & 2) {
    const toast_r1 = ctx.$implicit;
    const ctx_r0 = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵnextContext */ "uc"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("toast", toast_r1)("toasterconfig", ctx_r0.toasterconfig)("@toastState", ctx_r0.toasterconfig.animation)("titleClass", ctx_r0.toasterconfig.titleClass)("messageClass", ctx_r0.toasterconfig.messageClass)("ngClass", _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵpureFunction2 */ "Gc"](6, _c0, ctx_r0.toasterconfig.iconClasses[toast_r1.type], ctx_r0.toasterconfig.typeClasses[toast_r1.type]));
} }
const _c1 = function (a0) { return [a0]; };
const _c2 = ["componentBody"];
const _c3 = ["toastComp", ""];
function ToastComponent_div_8_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelement */ "ec"](0, "div", null, 7);
} }
function ToastComponent_div_10_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelement */ "ec"](0, "div", 8);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵpipe */ "vc"](1, "trustHtml");
} if (rf & 2) {
    const ctx_r1 = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵnextContext */ "uc"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("innerHTML", _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵpipeBind1 */ "wc"](1, 1, ctx_r1.toast.body), _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵsanitizeHtml */ "Kc"]);
} }
function ToastComponent_div_12_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementStart */ "jc"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementEnd */ "ic"]();
} if (rf & 2) {
    const ctx_r2 = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵnextContext */ "uc"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtextInterpolate */ "Rc"](ctx_r2.toast.body);
} }
function ToastComponent_button_16_Template(rf, ctx) { if (rf & 1) {
    const _r7 = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵgetCurrentView */ "kc"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementStart */ "jc"](0, "button", 9);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵlistener */ "qc"]("click", function ToastComponent_button_16_Template_button_click_0_listener($event) { _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵrestoreView */ "Jc"](_r7); const ctx_r6 = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵnextContext */ "uc"](); return ctx_r6.click($event, ctx_r6.toast); });
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵpipe */ "vc"](1, "trustHtml");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](2, "\n        ");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementEnd */ "ic"]();
} if (rf & 2) {
    const ctx_r3 = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵnextContext */ "uc"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("innerHTML", _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵpipeBind1 */ "wc"](1, 1, ctx_r3.toast.closeHtml), _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵsanitizeHtml */ "Kc"]);
} }
function ToastComponent_div_18_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementStart */ "jc"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](1, "\n            ");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelement */ "ec"](2, "div", 10);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](3, "\n        ");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementEnd */ "ic"]();
} if (rf & 2) {
    const ctx_r4 = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵnextContext */ "uc"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](2);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵstyleProp */ "Nc"]("width", ctx_r4.progressBarWidth + "%");
} }
const Transitions = [
    Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* trigger */ "l"])('toastState', [
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* state */ "i"])('flyRight, flyLeft, slideDown, slideDown, slideUp, slideUp, fade', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({ opacity: 1, transform: 'translate(0,0)' })),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* transition */ "k"])('void => flyRight', [
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 0,
                transform: 'translateX(100%)',
                height: 0
            }),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.15s ease-in', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 1,
                height: '*'
            })),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.25s 15ms ease-in')
        ]),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* transition */ "k"])('flyRight => void', [
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.25s ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 0,
                transform: 'translateX(100%)'
            })),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.15s ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                height: 0
            }))
        ]),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* transition */ "k"])('void => flyLeft', [
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 0,
                transform: 'translateX(-100%)',
                height: 0
            }),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.15s ease-in', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 1,
                height: '*'
            })),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.25s 15ms ease-in')
        ]),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* transition */ "k"])('flyLeft => void', [
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.25s 10ms ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 0,
                transform: 'translateX(-100%)'
            })),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.15s ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                height: 0
            }))
        ]),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* transition */ "k"])('void => slideDown', [
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 0,
                transform: 'translateY(-500%)',
                height: 0
            }),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* group */ "f"])([
                Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.2s ease-in', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                    height: '*'
                })),
                Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.4s ease-in', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                    transform: 'translate(0,0)'
                })),
                Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.3s 0.1s ease-in', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                    opacity: 1
                }))
            ])
        ]),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* transition */ "k"])('slideDown => void', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* group */ "f"])([
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.3s ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 0
            })),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.4s ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                transform: 'translateY(-500%)'
            })),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.2s 0.2s ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                height: 0
            }))
        ])),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* transition */ "k"])('void => slideUp', [
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 0,
                transform: 'translateY(1000%)',
                height: 0
            }),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* group */ "f"])([
                Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.2s ease-in', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                    height: '*'
                })),
                Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.5s ease-in', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                    transform: 'translate(0,0)'
                })),
                Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.3s 0.1s ease-in', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                    opacity: 1
                }))
            ])
        ]),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* transition */ "k"])('slideUp => void', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* group */ "f"])([
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.3s ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 0
            })),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.5s ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                transform: 'translateY(1000%)'
            })),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.3s 0.15s ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                height: 0
            }))
        ])),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* transition */ "k"])('void => fade', [
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 0,
                height: 0
            }),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.20s ease-in', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                height: '*'
            })),
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.15s ease-in', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                opacity: 1
            }))
        ]),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* transition */ "k"])('fade => void', [
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* group */ "f"])([
                Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.0s ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                    // reposition the background to prevent
                    // a ghost image during transition
                    'background-position': '-99999px'
                })),
                Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.15s ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                    opacity: 0,
                    'background-image': ''
                })),
                Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* animate */ "e"])('0.3s 20ms ease-out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_1__[/* style */ "j"])({
                    height: 0
                }))
            ])
        ])
    ]),
];

var BodyOutputType;
(function (BodyOutputType) {
    BodyOutputType[BodyOutputType["Default"] = 0] = "Default";
    BodyOutputType[BodyOutputType["TrustedHtml"] = 1] = "TrustedHtml";
    BodyOutputType[BodyOutputType["Component"] = 2] = "Component";
})(BodyOutputType || (BodyOutputType = {}));

const DefaultTypeClasses = {
    error: 'toast-error',
    info: 'toast-info',
    wait: 'toast-wait',
    success: 'toast-success',
    warning: 'toast-warning'
};
const DefaultIconClasses = {
    error: 'icon-error',
    info: 'icon-info',
    wait: 'icon-wait',
    success: 'icon-success',
    warning: 'icon-warning'
};
class ToasterConfig {
    constructor(configOverrides) {
        configOverrides = configOverrides || {};
        this.limit = configOverrides.limit || null;
        this.tapToDismiss = configOverrides.tapToDismiss != null ? configOverrides.tapToDismiss : true;
        this.showCloseButton = configOverrides.showCloseButton != null ? configOverrides.showCloseButton : false;
        this.closeHtml = configOverrides.closeHtml || '<span>&times;</span>';
        this.newestOnTop = configOverrides.newestOnTop != null ? configOverrides.newestOnTop : true;
        this.timeout = configOverrides.timeout != null ? configOverrides.timeout : 5000;
        this.typeClasses = configOverrides.typeClasses || DefaultTypeClasses;
        this.iconClasses = configOverrides.iconClasses || DefaultIconClasses;
        this.bodyOutputType = configOverrides.bodyOutputType || BodyOutputType.Default;
        this.bodyTemplate = configOverrides.bodyTemplate || 'toasterBodyTmpl.html';
        this.defaultToastType = configOverrides.defaultToastType || 'info';
        this.positionClass = configOverrides.positionClass || 'toast-top-right';
        this.titleClass = configOverrides.titleClass || 'toast-title';
        this.messageClass = configOverrides.messageClass || 'toast-message';
        this.animation = configOverrides.animation || '';
        this.preventDuplicates = configOverrides.preventDuplicates != null ? configOverrides.preventDuplicates : false;
        this.mouseoverTimerStop = configOverrides.mouseoverTimerStop != null ? configOverrides.mouseoverTimerStop : false;
        this.toastContainerId = configOverrides.toastContainerId != null ? configOverrides.toastContainerId : null;
    }
}
ToasterConfig.ɵfac = function ToasterConfig_Factory(t) { return new (t || ToasterConfig)(_angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵinject */ "nc"](undefined)); };
ToasterConfig.ɵprov = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdefineInjectable */ "Zb"]({ token: ToasterConfig, factory: ToasterConfig.ɵfac });
ToasterConfig.ctorParameters = () => [
    { type: undefined }
];
(function () { (typeof ngDevMode === "undefined" || ngDevMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵsetClassMetadata */ "Lb"](ToasterConfig, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Injectable */ "A"]
    }], function () { return [{ type: undefined }]; }, null); })();

// http://stackoverflow.com/questions/26501688/a-typescript-guid-class
class Guid {
    static newGuid() {
        return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
            const r = Math.random() * 16 | 0, v = c === 'x' ? r : (r & 0x3 | 0x8);
            return v.toString(16);
        });
    }
}
class ToasterService {
    /**
     * Creates an instance of ToasterService.
     */
    constructor() {
        this.addToast = new rxjs__WEBPACK_IMPORTED_MODULE_2__[/* Observable */ "a"]((observer) => this._addToast = observer).pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_4__[/* share */ "a"])());
        this.clearToasts = new rxjs__WEBPACK_IMPORTED_MODULE_2__[/* Observable */ "a"]((observer) => this._clearToasts = observer).pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_4__[/* share */ "a"])());
        this._removeToastSubject = new rxjs__WEBPACK_IMPORTED_MODULE_3__[/* Subject */ "a"]();
        this.removeToast = this._removeToastSubject.pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_4__[/* share */ "a"])());
    }
    /**
     * Synchronously create and show a new toast instance.
     *
     * @param {(string | Toast)} type The type of the toast, or a Toast object.
     * @param {string=} title The toast title.
     * @param {string=} body The toast body.
     * @returns {Toast}
     *          The newly created Toast instance with a randomly generated GUID Id.
     */
    pop(type, title, body) {
        const toast = typeof type === 'string' ? { type: type, title: title, body: body } : type;
        if (!toast.toastId) {
            toast.toastId = Guid.newGuid();
        }
        if (!this._addToast) {
            throw new Error('No Toaster Containers have been initialized to receive toasts.');
        }
        this._addToast.next(toast);
        return toast;
    }
    /**
     * Asynchronously create and show a new toast instance.
     *
     * @param {(string | Toast)} type The type of the toast, or a Toast object.
     * @param {string=} title The toast title.
     * @param {string=} body The toast body.
     * @returns {Observable<Toast>}
     *          A hot Observable that can be subscribed to in order to receive the Toast instance
     *          with a randomly generated GUID Id.
     */
    popAsync(type, title, body) {
        setTimeout(() => {
            this.pop(type, title, body);
        }, 0);
        return this.addToast;
    }
    /**
     * Clears a toast by toastId and/or toastContainerId.
     *
     * @param {string} toastId The toastId to clear.
     * @param {number=} toastContainerId
     *        The toastContainerId of the container to remove toasts from.
     */
    clear(toastId, toastContainerId) {
        const clearWrapper = {
            toastId: toastId, toastContainerId: toastContainerId
        };
        this._clearToasts.next(clearWrapper);
    }
}
ToasterService.ɵfac = function ToasterService_Factory(t) { return new (t || ToasterService)(); };
ToasterService.ɵprov = Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdefineInjectable */ "Zb"])({ factory: function ToasterService_Factory() { return new ToasterService(); }, token: ToasterService, providedIn: "root" });
ToasterService.ctorParameters = () => [];
(function () { (typeof ngDevMode === "undefined" || ngDevMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵsetClassMetadata */ "Lb"](ToasterService, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Injectable */ "A"],
        args: [{ providedIn: 'root' }]
    }], function () { return []; }, null); })();

class ToasterContainerComponent {
    constructor(toasterService) {
        this.toasts = [];
        this.toasterService = toasterService;
    }
    ngOnInit() {
        this.registerSubscribers();
        if (this.isNullOrUndefined(this.toasterconfig)) {
            this.toasterconfig = new ToasterConfig();
        }
    }
    // event handlers
    click(toast, isCloseButton) {
        if (toast.onClickCallback) {
            toast.onClickCallback(toast);
        }
        const tapToDismiss = !this.isNullOrUndefined(toast.tapToDismiss)
            ? toast.tapToDismiss
            : this.toasterconfig.tapToDismiss;
        if (tapToDismiss || (toast.showCloseButton && isCloseButton)) {
            this.removeToast(toast);
        }
    }
    childClick($event) {
        this.click($event.value.toast, $event.value.isCloseButton);
    }
    removeToast(toast) {
        const index = this.toasts.indexOf(toast);
        if (index < 0) {
            return;
        }
        ;
        const toastId = this.toastIdOrDefault(toast);
        this.toasts.splice(index, 1);
        if (toast.onHideCallback) {
            toast.onHideCallback(toast);
        }
        this.toasterService._removeToastSubject.next({ toastId: toastId, toastContainerId: toast.toastContainerId });
    }
    // private functions
    registerSubscribers() {
        this.addToastSubscriber = this.toasterService.addToast.subscribe((toast) => {
            this.addToast(toast);
        });
        this.clearToastsSubscriber = this.toasterService.clearToasts.subscribe((clearWrapper) => {
            this.clearToasts(clearWrapper);
        });
    }
    addToast(toast) {
        if (toast.toastContainerId && this.toasterconfig.toastContainerId
            && toast.toastContainerId !== this.toasterconfig.toastContainerId) {
            return;
        }
        ;
        if (!toast.type
            || !this.toasterconfig.typeClasses[toast.type]
            || !this.toasterconfig.iconClasses[toast.type]) {
            toast.type = this.toasterconfig.defaultToastType;
        }
        if (this.toasterconfig.preventDuplicates && this.toasts.length > 0) {
            if (toast.toastId && this.toasts.some(t => t.toastId === toast.toastId)) {
                return;
            }
            else if (this.toasts.some(t => t.body === toast.body)) {
                return;
            }
        }
        if (this.isNullOrUndefined(toast.showCloseButton)) {
            if (typeof this.toasterconfig.showCloseButton === 'object') {
                toast.showCloseButton = this.toasterconfig.showCloseButton[toast.type];
            }
            else if (typeof this.toasterconfig.showCloseButton === 'boolean') {
                toast.showCloseButton = this.toasterconfig.showCloseButton;
            }
        }
        if (toast.showCloseButton) {
            toast.closeHtml = toast.closeHtml || this.toasterconfig.closeHtml;
        }
        toast.bodyOutputType = toast.bodyOutputType || this.toasterconfig.bodyOutputType;
        if (this.toasterconfig.newestOnTop) {
            this.toasts.unshift(toast);
            if (this.isLimitExceeded()) {
                this.toasts.pop();
            }
        }
        else {
            this.toasts.push(toast);
            if (this.isLimitExceeded()) {
                this.toasts.shift();
            }
        }
        if (toast.onShowCallback) {
            toast.onShowCallback(toast);
        }
    }
    isLimitExceeded() {
        return this.toasterconfig.limit && this.toasts.length > this.toasterconfig.limit;
    }
    removeAllToasts() {
        for (let i = this.toasts.length - 1; i >= 0; i--) {
            this.removeToast(this.toasts[i]);
        }
    }
    clearToasts(clearWrapper) {
        const toastId = clearWrapper.toastId;
        const toastContainerId = clearWrapper.toastContainerId;
        if (this.isNullOrUndefined(toastContainerId) || (toastContainerId === this.toasterconfig.toastContainerId)) {
            this.clearToastsAction(toastId);
        }
    }
    clearToastsAction(toastId) {
        if (toastId) {
            this.removeToast(this.toasts.filter(t => t.toastId === toastId)[0]);
        }
        else {
            this.removeAllToasts();
        }
    }
    toastIdOrDefault(toast) {
        return toast.toastId || '';
    }
    isNullOrUndefined(value) {
        return value === null || typeof value === 'undefined';
    }
    ngOnDestroy() {
        if (this.addToastSubscriber) {
            this.addToastSubscriber.unsubscribe();
        }
        if (this.clearToastsSubscriber) {
            this.clearToastsSubscriber.unsubscribe();
        }
    }
}
ToasterContainerComponent.ɵfac = function ToasterContainerComponent_Factory(t) { return new (t || ToasterContainerComponent)(_angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdirectiveInject */ "dc"](ToasterService)); };
ToasterContainerComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdefineComponent */ "Xb"]({ type: ToasterContainerComponent, selectors: [["toaster-container"]], inputs: { toasterconfig: "toasterconfig" }, decls: 6, vars: 4, consts: [[1, "toast-container", 3, "ngClass"], ["toastComp", "", "class", "toast", 3, "toast", "toasterconfig", "titleClass", "messageClass", "ngClass", "click", "clickEvent", "removeToastEvent", 4, "ngFor", "ngForOf"], ["toastComp", "", 1, "toast", 3, "toast", "toasterconfig", "titleClass", "messageClass", "ngClass", "click", "clickEvent", "removeToastEvent"]], template: function ToasterContainerComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](0, "\n        ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementStart */ "jc"](1, "div", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](2, "\n            ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtemplate */ "Oc"](3, ToasterContainerComponent_div_3_Template, 2, 9, "div", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](4, "\n        ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementEnd */ "ic"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](5, "\n        ");
    } if (rf & 2) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("ngClass", _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵpureFunction1 */ "Fc"](2, _c1, ctx.toasterconfig.positionClass));
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("ngForOf", ctx.toasts);
    } }, directives: function () { return [_angular_common__WEBPACK_IMPORTED_MODULE_5__[/* NgClass */ "j"], _angular_common__WEBPACK_IMPORTED_MODULE_5__[/* NgForOf */ "k"], ToastComponent]; }, encapsulation: 2, data: { animation: Transitions } });
ToasterContainerComponent.ctorParameters = () => [
    { type: ToasterService }
];
ToasterContainerComponent.propDecorators = {
    toasterconfig: [{ type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Input */ "D"] }]
};
(function () { (typeof ngDevMode === "undefined" || ngDevMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵsetClassMetadata */ "Lb"](ToasterContainerComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Component */ "l"],
        args: [{
                selector: 'toaster-container',
                template: `
        <div class="toast-container" [ngClass]="[toasterconfig.positionClass]">
            <div toastComp *ngFor="let toast of toasts" class="toast" [toast]="toast"
                [toasterconfig]="toasterconfig"
                [@toastState]="toasterconfig.animation"
                [titleClass]="toasterconfig.titleClass"
                [messageClass]="toasterconfig.messageClass"
                [ngClass]="[
                    toasterconfig.iconClasses[toast.type],
                    toasterconfig.typeClasses[toast.type]
                ]"
                (click)="click(toast)" (clickEvent)="childClick($event)"
                (removeToastEvent)="removeToast($event)"
            >
            </div>
        </div>
        `,
                animations: Transitions
            }]
    }], function () { return [{ type: ToasterService }]; }, { toasterconfig: [{
            type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Input */ "D"]
        }] }); })();

class ToastComponent {
    constructor(componentFactoryResolver, changeDetectorRef, ngZone, element, renderer2) {
        this.componentFactoryResolver = componentFactoryResolver;
        this.changeDetectorRef = changeDetectorRef;
        this.ngZone = ngZone;
        this.element = element;
        this.renderer2 = renderer2;
        this.progressBarWidth = -1;
        this.bodyOutputType = BodyOutputType;
        this.clickEvent = new _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* EventEmitter */ "t"]();
        this.removeToastEvent = new _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* EventEmitter */ "t"]();
        this.timeoutId = null;
        this.timeout = 0;
        this.progressBarIntervalId = null;
    }
    ngOnInit() {
        if (this.toast.progressBar) {
            this.toast.progressBarDirection = this.toast.progressBarDirection || 'decreasing';
        }
        let timeout = (typeof this.toast.timeout === 'number')
            ? this.toast.timeout : this.toasterconfig.timeout;
        if (typeof timeout === 'object') {
            timeout = timeout[this.toast.type];
        }
        ;
        this.timeout = timeout;
    }
    ngAfterViewInit() {
        if (this.toast.bodyOutputType === this.bodyOutputType.Component) {
            const component = this.componentFactoryResolver.resolveComponentFactory(this.toast.body);
            const componentInstance = this.componentBody.createComponent(component, undefined, this.componentBody.injector);
            componentInstance.instance.toast = this.toast;
            this.changeDetectorRef.detectChanges();
        }
        if (this.toasterconfig.mouseoverTimerStop) {
            // only apply a mouseenter event when necessary to avoid
            // unnecessary event and change detection cycles.
            this.removeMouseOverListener = this.renderer2.listen(this.element.nativeElement, 'mouseenter', () => this.stopTimer());
        }
        this.configureTimer();
    }
    click(event, toast) {
        event.stopPropagation();
        this.clickEvent.emit({ value: { toast: toast, isCloseButton: true } });
    }
    stopTimer() {
        this.progressBarWidth = 0;
        this.clearTimers();
    }
    restartTimer() {
        if (this.toasterconfig.mouseoverTimerStop) {
            if (!this.timeoutId) {
                this.configureTimer();
            }
        }
        else if (this.timeout && !this.timeoutId) {
            this.removeToast();
        }
    }
    ngOnDestroy() {
        if (this.removeMouseOverListener) {
            this.removeMouseOverListener();
        }
        this.clearTimers();
    }
    configureTimer() {
        if (!this.timeout || this.timeout < 1) {
            return;
        }
        if (this.toast.progressBar) {
            this.removeToastTick = new Date().getTime() + this.timeout;
            this.progressBarWidth = -1;
        }
        this.ngZone.runOutsideAngular(() => {
            this.timeoutId = window.setTimeout(() => {
                this.ngZone.run(() => {
                    this.changeDetectorRef.markForCheck();
                    this.removeToast();
                });
            }, this.timeout);
            if (this.toast.progressBar) {
                this.progressBarIntervalId = window.setInterval(() => {
                    this.ngZone.run(() => {
                        this.updateProgressBar();
                    });
                }, 10);
            }
        });
    }
    updateProgressBar() {
        if (this.progressBarWidth === 0 || this.progressBarWidth === 100) {
            return;
        }
        this.progressBarWidth = ((this.removeToastTick - new Date().getTime()) / this.timeout) * 100;
        if (this.toast.progressBarDirection === 'increasing') {
            this.progressBarWidth = 100 - this.progressBarWidth;
        }
        if (this.progressBarWidth < 0) {
            this.progressBarWidth = 0;
        }
        if (this.progressBarWidth > 100) {
            this.progressBarWidth = 100;
        }
    }
    clearTimers() {
        if (this.timeoutId) {
            window.clearTimeout(this.timeoutId);
        }
        if (this.progressBarIntervalId) {
            window.clearInterval(this.progressBarIntervalId);
        }
        this.timeoutId = null;
        this.progressBarIntervalId = null;
    }
    removeToast() {
        this.removeToastEvent.emit(this.toast);
    }
}
ToastComponent.ɵfac = function ToastComponent_Factory(t) { return new (t || ToastComponent)(_angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdirectiveInject */ "dc"](_angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ComponentFactoryResolver */ "m"]), _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdirectiveInject */ "dc"](_angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ChangeDetectorRef */ "j"]), _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdirectiveInject */ "dc"](_angular_core__WEBPACK_IMPORTED_MODULE_0__[/* NgZone */ "M"]), _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdirectiveInject */ "dc"](_angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ElementRef */ "r"]), _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdirectiveInject */ "dc"](_angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Renderer2 */ "T"])); };
ToastComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdefineComponent */ "Xb"]({ type: ToastComponent, selectors: [["", "toastComp", ""]], viewQuery: function ToastComponent_Query(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵviewQuery */ "Uc"](_c2, 1, _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ViewContainerRef */ "gb"]);
    } if (rf & 2) {
        let _t;
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵqueryRefresh */ "Hc"](_t = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵloadQuery */ "rc"]()) && (ctx.componentBody = _t.first);
    } }, hostBindings: function ToastComponent_HostBindings(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵlistener */ "qc"]("mouseleave", function ToastComponent_mouseleave_HostBindingHandler() { return ctx.restartTimer(); });
    } }, inputs: { toasterconfig: "toasterconfig", toast: "toast", titleClass: "titleClass", messageClass: "messageClass" }, outputs: { clickEvent: "clickEvent", removeToastEvent: "removeToastEvent" }, attrs: _c3, decls: 19, vars: 9, consts: [[1, "toast-content"], [3, "ngClass"], [3, "ngClass", "ngSwitch"], [4, "ngSwitchCase"], [3, "innerHTML", 4, "ngSwitchCase"], ["class", "toast-close-button", 3, "innerHTML", "click", 4, "ngIf"], [4, "ngIf"], ["componentBody", ""], [3, "innerHTML"], [1, "toast-close-button", 3, "innerHTML", "click"], [1, "toast-progress-bar"]], template: function ToastComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](0, "\n        ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementStart */ "jc"](1, "div", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](2, "\n            ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementStart */ "jc"](3, "div", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementEnd */ "ic"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](5, "\n            ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementStart */ "jc"](6, "div", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](7, "\n                ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtemplate */ "Oc"](8, ToastComponent_div_8_Template, 2, 0, "div", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](9, "\n                ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtemplate */ "Oc"](10, ToastComponent_div_10_Template, 2, 3, "div", 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](11, "\n                ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtemplate */ "Oc"](12, ToastComponent_div_12_Template, 2, 1, "div", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](13, "\n            ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementEnd */ "ic"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](14, "\n        ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵelementEnd */ "ic"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](15, "\n        ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtemplate */ "Oc"](16, ToastComponent_button_16_Template, 3, 3, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtext */ "Qc"](17, "\n        ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtemplate */ "Oc"](18, ToastComponent_div_18_Template, 4, 2, "div", 6);
    } if (rf & 2) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("ngClass", ctx.titleClass);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵtextInterpolate */ "Rc"](ctx.toast.title);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("ngClass", ctx.messageClass)("ngSwitch", ctx.toast.bodyOutputType);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("ngSwitchCase", ctx.bodyOutputType.Component);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("ngSwitchCase", ctx.bodyOutputType.TrustedHtml);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("ngSwitchCase", ctx.bodyOutputType.Default);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("ngIf", ctx.toast.showCloseButton);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵadvance */ "Sb"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵproperty */ "Bc"]("ngIf", ctx.toast.progressBar);
    } }, directives: function () { return [_angular_common__WEBPACK_IMPORTED_MODULE_5__[/* NgClass */ "j"], _angular_common__WEBPACK_IMPORTED_MODULE_5__[/* NgSwitch */ "n"], _angular_common__WEBPACK_IMPORTED_MODULE_5__[/* NgSwitchCase */ "o"], _angular_common__WEBPACK_IMPORTED_MODULE_5__[/* NgIf */ "l"]]; }, pipes: function () { return [TrustHtmlPipe]; }, encapsulation: 2 });
ToastComponent.ctorParameters = () => [
    { type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ComponentFactoryResolver */ "m"] },
    { type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ChangeDetectorRef */ "j"] },
    { type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* NgZone */ "M"] },
    { type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ElementRef */ "r"] },
    { type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Renderer2 */ "T"] }
];
ToastComponent.propDecorators = {
    toasterconfig: [{ type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Input */ "D"] }],
    toast: [{ type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Input */ "D"] }],
    titleClass: [{ type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Input */ "D"] }],
    messageClass: [{ type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Input */ "D"] }],
    componentBody: [{ type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ViewChild */ "fb"], args: ['componentBody', { read: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ViewContainerRef */ "gb"], static: false },] }],
    clickEvent: [{ type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Output */ "O"] }],
    removeToastEvent: [{ type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Output */ "O"] }],
    restartTimer: [{ type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* HostListener */ "w"], args: ['mouseleave',] }]
};
(function () { (typeof ngDevMode === "undefined" || ngDevMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵsetClassMetadata */ "Lb"](ToastComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Component */ "l"],
        args: [{
                selector: '[toastComp]',
                template: `
        <div class="toast-content">
            <div [ngClass]="titleClass">{{toast.title}}</div>
            <div [ngClass]="messageClass" [ngSwitch]="toast.bodyOutputType">
                <div *ngSwitchCase="bodyOutputType.Component" #componentBody></div>
                <div *ngSwitchCase="bodyOutputType.TrustedHtml" [innerHTML]="toast.body | trustHtml"></div>
                <div *ngSwitchCase="bodyOutputType.Default">{{toast.body}}</div>
            </div>
        </div>
        <button class="toast-close-button" *ngIf="toast.showCloseButton" (click)="click($event, toast)"
            [innerHTML]="toast.closeHtml | trustHtml">
        </button>
        <div *ngIf="toast.progressBar">
            <div class="toast-progress-bar" [style.width]="progressBarWidth + '%'"></div>
        </div>`
            }]
    }], function () { return [{ type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ComponentFactoryResolver */ "m"] }, { type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ChangeDetectorRef */ "j"] }, { type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* NgZone */ "M"] }, { type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ElementRef */ "r"] }, { type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Renderer2 */ "T"] }]; }, { clickEvent: [{
            type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Output */ "O"]
        }], removeToastEvent: [{
            type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Output */ "O"]
        }], restartTimer: [{
            type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* HostListener */ "w"],
            args: ['mouseleave']
        }], toasterconfig: [{
            type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Input */ "D"]
        }], toast: [{
            type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Input */ "D"]
        }], titleClass: [{
            type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Input */ "D"]
        }], messageClass: [{
            type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Input */ "D"]
        }], componentBody: [{
            type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ViewChild */ "fb"],
            args: ['componentBody', { read: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ViewContainerRef */ "gb"], static: false }]
        }] }); })();

class TrustHtmlPipe {
    constructor(sanitizer) {
        this.sanitizer = sanitizer;
    }
    transform(content) {
        return this.sanitizer.bypassSecurityTrustHtml(content);
    }
}
TrustHtmlPipe.ɵfac = function TrustHtmlPipe_Factory(t) { return new (t || TrustHtmlPipe)(_angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdirectiveInject */ "dc"](_angular_platform_browser__WEBPACK_IMPORTED_MODULE_6__[/* DomSanitizer */ "b"])); };
TrustHtmlPipe.ɵpipe = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdefinePipe */ "cc"]({ name: "trustHtml", type: TrustHtmlPipe, pure: true });
TrustHtmlPipe.ctorParameters = () => [
    { type: _angular_platform_browser__WEBPACK_IMPORTED_MODULE_6__[/* DomSanitizer */ "b"] }
];
(function () { (typeof ngDevMode === "undefined" || ngDevMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵsetClassMetadata */ "Lb"](TrustHtmlPipe, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* Pipe */ "R"],
        args: [{
                name: 'trustHtml',
                pure: true
            }]
    }], function () { return [{ type: _angular_platform_browser__WEBPACK_IMPORTED_MODULE_6__[/* DomSanitizer */ "b"] }]; }, null); })();

class ToasterModule {
    static forRoot() {
        return {
            ngModule: ToasterModule,
            providers: [ToasterService, ToasterContainerComponent]
        };
    }
    static forChild() {
        return {
            ngModule: ToasterModule,
            providers: [ToasterContainerComponent]
        };
    }
}
ToasterModule.ɵfac = function ToasterModule_Factory(t) { return new (t || ToasterModule)(); };
ToasterModule.ɵmod = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdefineNgModule */ "bc"]({ type: ToasterModule });
ToasterModule.ɵinj = _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵdefineInjector */ "ac"]({ imports: [[_angular_common__WEBPACK_IMPORTED_MODULE_5__[/* CommonModule */ "b"]]] });
(function () { (typeof ngJitMode === "undefined" || ngJitMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵɵsetNgModuleScope */ "Mc"](ToasterModule, { declarations: function () { return [ToastComponent, ToasterContainerComponent, TrustHtmlPipe]; }, imports: function () { return [_angular_common__WEBPACK_IMPORTED_MODULE_5__[/* CommonModule */ "b"]]; }, exports: function () { return [ToasterContainerComponent, ToastComponent]; } }); })();
(function () { (typeof ngDevMode === "undefined" || ngDevMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* ɵsetClassMetadata */ "Lb"](ToasterModule, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__[/* NgModule */ "H"],
        args: [{
                imports: [_angular_common__WEBPACK_IMPORTED_MODULE_5__[/* CommonModule */ "b"]],
                declarations: [
                    ToastComponent,
                    ToasterContainerComponent,
                    TrustHtmlPipe
                ],
                exports: [
                    ToasterContainerComponent,
                    ToastComponent
                ]
            }]
    }], null, null); })();

/*
 * Public API Surface of angular2-toaster
 */

/**
 * Generated bundle index. Do not edit.
 */



//# sourceMappingURL=angular2-toaster.js.map

/***/ }),

/***/ 411:
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_FACTORY__, __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;/**
 * Duo Web SDK v2
 * Copyright 2021, Duo Security
 */

(function (root, factory) {
    /*eslint-disable */
    if (true) {
        // AMD. Register as an anonymous module.
        !(__WEBPACK_AMD_DEFINE_ARRAY__ = [], __WEBPACK_AMD_DEFINE_FACTORY__ = (factory),
				__WEBPACK_AMD_DEFINE_RESULT__ = (typeof __WEBPACK_AMD_DEFINE_FACTORY__ === 'function' ?
				(__WEBPACK_AMD_DEFINE_FACTORY__.apply(exports, __WEBPACK_AMD_DEFINE_ARRAY__)) : __WEBPACK_AMD_DEFINE_FACTORY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));
    /*eslint-enable */
    } else { var Duo; }
}(this, function() {
    var DUO_MESSAGE_FORMAT = /^(?:AUTH|ENROLL)+\|[A-Za-z0-9\+\/=]+\|[A-Za-z0-9\+\/=]+$/;
    var DUO_ERROR_FORMAT = /^ERR\|[\w\s\.\(\)]+$/;
    var DUO_OPEN_WINDOW_FORMAT = /^DUO_OPEN_WINDOW\|/;
    var VALID_OPEN_WINDOW_DOMAINS = [
        'duo.com',
        'duosecurity.com',
        'duomobile.s3-us-west-1.amazonaws.com'
    ];

    var postAction,
        postArgument,
        host,
        sigRequest,
        duoSig,
        appSig,
        iframe,
        submitCallback;

    // We use this function instead of setting initial values in the var
    // declarations to make sure the initial values and subsequent
    // re-initializations are always the same.
    initializeStatefulVariables();

    /**
     * Set local variables to whatever they should be before you call init().
     */
    function initializeStatefulVariables() {
        postAction = '';
        postArgument = 'sig_response';
        host = undefined;
        sigRequest = undefined;
        duoSig = undefined;
        appSig = undefined;
        iframe = undefined;
        submitCallback = undefined;
    }

    function throwError(message, givenUrl) {
        var url = (
            givenUrl ||
            'https://www.duosecurity.com/docs/duoweb#3.-show-the-iframe'
        );
        throw new Error(
            'Duo Web SDK error: ' + message +
            (url ? ('\n' + 'See ' + url + ' for more information') : '')
        );
    }

    function hyphenize(str) {
        return str.replace(/([a-z])([A-Z])/, '$1-$2').toLowerCase();
    }

    // cross-browser data attributes
    function getDataAttribute(element, name) {
        if ('dataset' in element) {
            return element.dataset[name];
        } else {
            return element.getAttribute('data-' + hyphenize(name));
        }
    }

    // cross-browser event binding/unbinding
    function on(context, event, fallbackEvent, callback) {
        if ('addEventListener' in window) {
            context.addEventListener(event, callback, false);
        } else {
            context.attachEvent(fallbackEvent, callback);
        }
    }

    function off(context, event, fallbackEvent, callback) {
        if ('removeEventListener' in window) {
            context.removeEventListener(event, callback, false);
        } else {
            context.detachEvent(fallbackEvent, callback);
        }
    }

    function onReady(callback) {
        on(document, 'DOMContentLoaded', 'onreadystatechange', callback);
    }

    function offReady(callback) {
        off(document, 'DOMContentLoaded', 'onreadystatechange', callback);
    }

    function onMessage(callback) {
        on(window, 'message', 'onmessage', callback);
    }

    function offMessage(callback) {
        off(window, 'message', 'onmessage', callback);
    }

    /**
     * Parse the sig_request parameter, throwing errors if the token contains
     * a server error or if the token is invalid.
     *
     * @param {String} sig Request token
     */
    function parseSigRequest(sig) {
        if (!sig) {
            // nothing to do
            return;
        }

        // see if the token contains an error, throwing it if it does
        if (sig.indexOf('ERR|') === 0) {
            throwError(sig.split('|')[1]);
        }

        // validate the token
        if (sig.indexOf(':') === -1 || sig.split(':').length !== 2) {
            throwError(
                'Duo was given a bad token.  This might indicate a configuration ' +
                'problem with one of Duo\'s client libraries.'
            );
        }

        var sigParts = sig.split(':');

        // hang on to the token, and the parsed duo and app sigs
        sigRequest = sig;
        duoSig = sigParts[0];
        appSig = sigParts[1];

        return {
            sigRequest: sig,
            duoSig: sigParts[0],
            appSig: sigParts[1]
        };
    }

    /**
     * Validate that a MessageEvent came from the Duo service, and that it
     * is a properly formatted payload.
     *
     * The Google Chrome sign-in page injects some JS into pages that also
     * make use of postMessage, so we need to do additional validation above
     * and beyond the origin.
     *
     * @param {MessageEvent} event Message received via postMessage
     */
    function isDuoMessage(event) {
        return Boolean(
            event.origin === ('https://' + host) &&
            typeof event.data === 'string' &&
            (
                event.data.match(DUO_MESSAGE_FORMAT) ||
                event.data.match(DUO_ERROR_FORMAT) ||
                event.data.match(DUO_OPEN_WINDOW_FORMAT)
            )
        );
    }

    /**
     * Validate the request token and prepare for the iframe to become ready.
     *
     * All options below can be passed into an options hash to `Duo.init`, or
     * specified on the iframe using `data-` attributes.
     *
     * Options specified using the options hash will take precedence over
     * `data-` attributes.
     *
     * Example using options hash:
     * ```javascript
     * Duo.init({
     *     iframe: "some_other_id",
     *     host: "api-main.duo.test",
     *     sig_request: "...",
     *     post_action: "/auth",
     *     post_argument: "resp"
     * });
     * ```
     *
     * Example using `data-` attributes:
     * ```html
     * <iframe id="duo_iframe"
     *         data-host="api-main.duo.test"
     *         data-sig-request="..."
     *         data-post-action="/auth"
     *         data-post-argument="resp"
     *         >
     * </iframe>
     * ```
     *
     * Some browsers (especially embedded browsers) don't like it when the Duo
     * Web SDK changes the `src` attribute on the iframe. To prevent this, there
     * is an alternative way to use the Duo Web SDK:
     *
     * Add a div (or any other container element) instead of an iframe to the
     * DOM with an id of "duo_iframe", or pass that element to the
     * `iframeContainer` parameter of `Duo.init`. An iframe will be created and
     * inserted into that container element, preventing `src` change related
     * bugs. WARNING: All other elements in the container will be deleted.
     *
     * The `iframeAttributes` parameter of `Duo.init` is available to set any
     * attributes on the inserted iframe if the Duo Web SDK is inserting the
     * iframe. For details, see the parameter documentation below.
     *
     * @param {Object} options
     * @param {String} options.host - Hostname for the Duo Prompt.
     * @param {String} options.sig_request - Request token.
     * @param {String|HTMLElement} [options.iframe] - The iframe, or id of an
     *     iframe that will be used for the Duo Prompt. If you don't provide
     *     this or the `iframeContainer` parameter the Duo Web SDK will default
     *     to using whatever element has an id of "duo_iframe".
     * @param {String|HTMLElement} [options.iframeContainer] - The element you
     *     want the Duo Prompt inserted into, or the id of that element.
     *     Anything inside this element will be deleted and replaced with an
     *     iframe hosting the Duo prompt. If you don't provide this or the
     *     `iframe` parameter the Duo Web SDK will default to using whatever
     *     element has an id of "duo_iframe".
     * @param {Object} [options.iframeAttributes] - Object with  names and
     *     values coresponding to attributes you want added to the  Duo Prompt
     *     iframe, like `title`, `width` and `allow`. WARNING: this parameter
     *     only works if you use the `iframeContainer` parameter or add an id
     *     of "duo_iframe" to an element that isn't an iframe. If you have
     *     added an iframe to the DOM yourself, you should set those attributes
     *     directly on the iframe.
     * @param {String} [options.post_action=''] - URL to POST back to after a
     *     successful auth.
     * @param {String} [options.post_argument='sig_response'] - Parameter name
     *     to use for response token.
     * @param {Function} [options.submit_callback] - If provided, the Duo Web
     *     SDK will not submit the form. Instead it will execute this callback
     *     function passing in a reference to the "duo_form" form object.
     *     `submit_callback`` can be used to prevent the webpage from reloading.
     */
    function init(options) {
        // If init() is called more than once we have to reset all the local
        // variables to ensure init() will work the same way every time. This
        // helps people making single page applications. SPAs may periodically
        // remove the iframe and add a new one that has to be initialized.
        initializeStatefulVariables();

        if (options) {
            if (options.host) {
                host = options.host;
            }

            if (options.sig_request) {
                parseSigRequest(options.sig_request);
            }

            if (options.post_action) {
                postAction = options.post_action;
            }

            if (options.post_argument) {
                postArgument = options.post_argument;
            }

            if (typeof options.submit_callback === 'function') {
                submitCallback = options.submit_callback;
            }
        }

        var promptElement = getPromptElement(options);
        if (promptElement) {
            // If we can get the element that will host the prompt, set it.
            ready(promptElement, options.iframeAttributes || {});
        } else {
            // If the element that will host the prompt isn't available yet, set
            // it up after the DOM finishes loading.
            asyncReady(options);
        }

        // always clean up after yourself!
        offReady(init);
    }

    /**
     * Given the options from init(), get the iframe or iframe container that
     * should be used for the Duo Prompt. Returns `null` if nothing was found.
     */
    function getPromptElement(options) {
        var result;

        if (options.iframe && options.iframeContainer) {
            throwError(
                'Passing both `iframe` and `iframeContainer` arguments at the' +
                ' same time is not allowed.'
            );
        } else if (options.iframe) {
            // If we are getting an iframe, try to get it and raise if the
            // element we find is NOT an iframe.
            result = getUserDefinedElement(options.iframe);
            validateIframe(result);
        } else if (options.iframeContainer) {
            result = getUserDefinedElement(options.iframeContainer);
            validateIframeContainer(result);
        } else {
            result = document.getElementById('duo_iframe');
        }

        return result;
    }

    /**
     * When given an HTMLElement, return it. When given a string, get an element
     * with that id, else return null.
     */
    function getUserDefinedElement(object) {
        if (object.tagName) {
            return object;
        } else if (typeof object == 'string') {
            return document.getElementById(object);
        }
        return null;
    }

    /**
     * Check if the given thing is an iframe.
     */
    function isIframe(element) {
        return (
            element &&
            element.tagName &&
            element.tagName.toLowerCase() === 'iframe'
        );
    }

    /**
     * Throw an error if we are given an element that is NOT an iframe.
     */
    function validateIframe(element) {
        if (element && !isIframe(element)) {
            throwError(
                '`iframe` only accepts an iframe element or the id of an' +
                ' iframe. To use a non-iframe element, use the' +
                ' `iframeContainer` argument.'
            );
        }
    }

    /**
     * Throw an error if we are given an element that IS an iframe instead of an
     * element that we can insert an iframe into.
     */
    function validateIframeContainer(element) {
        if (element && isIframe(element)) {
            throwError(
                '`iframeContainer` only accepts a non-iframe element or the' +
                ' id of a non-iframe. To use a non-iframe element, use the' +
                ' `iframeContainer` argument on Duo.init().'
            );
        }
    }

    /**
     * Generate the URL that goes to the Duo Prompt.
     */
    function generateIframeSrc() {
        return [
            'https://', host, '/frame/web/v1/auth?tx=', encodeURIComponent(duoSig),
            '&parent=', encodeURIComponent(document.location.href),
            '&v=2.9'
        ].join('');
    }

    /**
     * This function is called when a message was received from another domain
     * using the `postMessage` API.  Check that the event came from the Duo
     * service domain, and that the message is a properly formatted payload,
     * then perform the post back to the primary service.
     *
     * @param event Event object (contains origin and data)
     */
    function onReceivedMessage(event) {
        if (isDuoMessage(event)) {
            if (event.data.match(DUO_OPEN_WINDOW_FORMAT)) {
                var url = event.data.substring("DUO_OPEN_WINDOW|".length);
                if (isValidUrlToOpen(url)) {
                    // Open the URL that comes after the DUO_WINDOW_OPEN token.
                    window.open(url, "_self");
                }
            }
            else {
                // the event came from duo, do the post back
                doPostBack(event.data);

                // always clean up after yourself!
                offMessage(onReceivedMessage);
            }
        }
    }

    /**
     * Validate that this passed in URL is one that we will actually allow to
     * be opened.
     * @param url String URL that the message poster wants to open
     * @returns {boolean} true if we allow this url to be opened in the window
     */
    function isValidUrlToOpen(url) {
        if (!url) {
            return false;
        }

        var parser = document.createElement('a');
        parser.href = url;

        if (parser.protocol === "duotrustedendpoints:") {
            return true;
        } else if (parser.protocol !== "https:") {
            return false;
        }

        for (var i = 0; i < VALID_OPEN_WINDOW_DOMAINS.length; i++) {
           if (parser.hostname.endsWith("." + VALID_OPEN_WINDOW_DOMAINS[i]) ||
                   parser.hostname === VALID_OPEN_WINDOW_DOMAINS[i]) {
               return true;
           }
        }
        return false;
    }

    /**
     * Register a callback to call ready() after the DOM has loaded.
     */
    function asyncReady(options) {
        var callback = function() {
            var promptElement = getPromptElement(options);
            if (!promptElement) {
                throwError(
                    'This page does not contain an iframe for Duo to use.' +
                    ' Add an element like' +
                    ' <iframe id="duo_iframe"></iframe> to this page.'
                );
            }

            ready(promptElement, options.iframeAttributes || {});

            // Always clean up after yourself.
            offReady(callback)
        };

        onReady(callback);
    }

    /**
     * Point the iframe at Duo, then wait for it to postMessage back to us.
     */
    function ready(promptElement, iframeAttributes) {
        if (!host) {
            host = getDataAttribute(promptElement, 'host');

            if (!host) {
                throwError(
                    'No API hostname is given for Duo to use.  Be sure to pass ' +
                    'a `host` parameter to Duo.init, or through the `data-host` ' +
                    'attribute on the iframe element.'
                );
            }
        }

        if (!duoSig || !appSig) {
            parseSigRequest(getDataAttribute(promptElement, 'sigRequest'));

            if (!duoSig || !appSig) {
                throwError(
                    'No valid signed request is given.  Be sure to give the ' +
                    '`sig_request` parameter to Duo.init, or use the ' +
                    '`data-sig-request` attribute on the iframe element.'
                );
            }
        }

        // if postAction/Argument are defaults, see if they are specified
        // as data attributes on the iframe
        if (postAction === '') {
            postAction = getDataAttribute(promptElement, 'postAction') || postAction;
        }

        if (postArgument === 'sig_response') {
            postArgument = getDataAttribute(promptElement, 'postArgument') || postArgument;
        }

        if (isIframe(promptElement)) {
            iframe = promptElement;
            iframe.src = generateIframeSrc();
        } else {
            // If given a container to put an iframe in, clean out any children
            // child elements in case `init()` was called more than once.
            while (promptElement.firstChild) {
                // We call `removeChild()` instead of doing `innerHTML = ""`
                // to make sure we unbind any events.
                promptElement.removeChild(promptElement.firstChild);
            }

            iframe = document.createElement('iframe');

            // Set the src and all other attributes on the new iframe.
            iframeAttributes['src'] = generateIframeSrc();
            for (var name in iframeAttributes) {
                iframe.setAttribute(name, iframeAttributes[name]);
            }

            promptElement.appendChild(iframe);
        }

        // listen for the 'message' event
        onMessage(onReceivedMessage);
    }

    /**
     * We received a postMessage from Duo.  POST back to the primary service
     * with the response token, and any additional user-supplied parameters
     * given in form#duo_form.
     */
    function doPostBack(response) {
        // create a hidden input to contain the response token
        var input = document.createElement('input');
        input.type = 'hidden';
        input.name = postArgument;
        input.value = response + ':' + appSig;

        // user may supply their own form with additional inputs
        var form = document.getElementById('duo_form');

        // if the form doesn't exist, create one
        if (!form) {
            form = document.createElement('form');

            // insert the new form after the iframe
            iframe.parentElement.insertBefore(form, iframe.nextSibling);
        }

        // make sure we are actually posting to the right place
        form.method = 'POST';
        form.action = postAction;

        // add the response token input to the form
        form.appendChild(input);

        // away we go!
        if (typeof submitCallback === "function") {
            submitCallback.call(null, form);
        } else {
            form.submit();
        }
    }

    return {
        init: init,
        _onReady: onReady,
        _parseSigRequest: parseSigRequest,
        _isDuoMessage: isDuoMessage,
        _doPostBack: doPostBack
    };
}));


/***/ }),

/***/ 469:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return scan; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/** PURE_IMPORTS_START tslib,_Subscriber PURE_IMPORTS_END */


function scan(accumulator, seed) {
    var hasSeed = false;
    if (arguments.length >= 2) {
        hasSeed = true;
    }
    return function scanOperatorFunction(source) {
        return source.lift(new ScanOperator(accumulator, seed, hasSeed));
    };
}
var ScanOperator = /*@__PURE__*/ (function () {
    function ScanOperator(accumulator, seed, hasSeed) {
        if (hasSeed === void 0) {
            hasSeed = false;
        }
        this.accumulator = accumulator;
        this.seed = seed;
        this.hasSeed = hasSeed;
    }
    ScanOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new ScanSubscriber(subscriber, this.accumulator, this.seed, this.hasSeed));
    };
    return ScanOperator;
}());
var ScanSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](ScanSubscriber, _super);
    function ScanSubscriber(destination, accumulator, _seed, hasSeed) {
        var _this = _super.call(this, destination) || this;
        _this.accumulator = accumulator;
        _this._seed = _seed;
        _this.hasSeed = hasSeed;
        _this.index = 0;
        return _this;
    }
    Object.defineProperty(ScanSubscriber.prototype, "seed", {
        get: function () {
            return this._seed;
        },
        set: function (value) {
            this.hasSeed = true;
            this._seed = value;
        },
        enumerable: true,
        configurable: true
    });
    ScanSubscriber.prototype._next = function (value) {
        if (!this.hasSeed) {
            this.seed = value;
            this.destination.next(value);
        }
        else {
            return this._tryNext(value);
        }
    };
    ScanSubscriber.prototype._tryNext = function (value) {
        var index = this.index++;
        var result;
        try {
            result = this.accumulator(this.seed, value, index);
        }
        catch (err) {
            this.destination.error(err);
        }
        this.seed = result;
        this.destination.next(result);
    };
    return ScanSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));
//# sourceMappingURL=scan.js.map


/***/ }),

/***/ 47:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return config; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
var _enable_super_gross_mode_that_will_cause_bad_things = false;
var config = {
    Promise: undefined,
    set useDeprecatedSynchronousErrorHandling(value) {
        if (value) {
            var error = /*@__PURE__*/ new Error();
            /*@__PURE__*/ console.warn('DEPRECATED! RxJS was set to use deprecated synchronous error handling behavior by code at: \n' + error.stack);
        }
        else if (_enable_super_gross_mode_that_will_cause_bad_things) {
            /*@__PURE__*/ console.log('RxJS: Back to a better error behavior. Thank you. <3');
        }
        _enable_super_gross_mode_that_will_cause_bad_things = value;
    },
    get useDeprecatedSynchronousErrorHandling() {
        return _enable_super_gross_mode_that_will_cause_bad_things;
    },
};
//# sourceMappingURL=config.js.map


/***/ }),

/***/ 470:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return defer; });
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(15);
/* harmony import */ var _from__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(54);
/* harmony import */ var _empty__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(98);
/** PURE_IMPORTS_START _Observable,_from,_empty PURE_IMPORTS_END */



function defer(observableFactory) {
    return new _Observable__WEBPACK_IMPORTED_MODULE_0__[/* Observable */ "a"](function (subscriber) {
        var input;
        try {
            input = observableFactory();
        }
        catch (err) {
            subscriber.error(err);
            return undefined;
        }
        var source = input ? Object(_from__WEBPACK_IMPORTED_MODULE_1__[/* from */ "a"])(input) : Object(_empty__WEBPACK_IMPORTED_MODULE_2__[/* empty */ "b"])();
        return source.subscribe(subscriber);
    });
}
//# sourceMappingURL=defer.js.map


/***/ }),

/***/ 53:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return SimpleInnerSubscriber; });
/* unused harmony export ComplexInnerSubscriber */
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "b", function() { return SimpleOuterSubscriber; });
/* unused harmony export ComplexOuterSubscriber */
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "c", function() { return innerSubscribe; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(15);
/* harmony import */ var _util_subscribeTo__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(112);
/** PURE_IMPORTS_START tslib,_Subscriber,_Observable,_util_subscribeTo PURE_IMPORTS_END */




var SimpleInnerSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](SimpleInnerSubscriber, _super);
    function SimpleInnerSubscriber(parent) {
        var _this = _super.call(this) || this;
        _this.parent = parent;
        return _this;
    }
    SimpleInnerSubscriber.prototype._next = function (value) {
        this.parent.notifyNext(value);
    };
    SimpleInnerSubscriber.prototype._error = function (error) {
        this.parent.notifyError(error);
        this.unsubscribe();
    };
    SimpleInnerSubscriber.prototype._complete = function () {
        this.parent.notifyComplete();
        this.unsubscribe();
    };
    return SimpleInnerSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));

var ComplexInnerSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](ComplexInnerSubscriber, _super);
    function ComplexInnerSubscriber(parent, outerValue, outerIndex) {
        var _this = _super.call(this) || this;
        _this.parent = parent;
        _this.outerValue = outerValue;
        _this.outerIndex = outerIndex;
        return _this;
    }
    ComplexInnerSubscriber.prototype._next = function (value) {
        this.parent.notifyNext(this.outerValue, value, this.outerIndex, this);
    };
    ComplexInnerSubscriber.prototype._error = function (error) {
        this.parent.notifyError(error);
        this.unsubscribe();
    };
    ComplexInnerSubscriber.prototype._complete = function () {
        this.parent.notifyComplete(this);
        this.unsubscribe();
    };
    return ComplexInnerSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));

var SimpleOuterSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](SimpleOuterSubscriber, _super);
    function SimpleOuterSubscriber() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    SimpleOuterSubscriber.prototype.notifyNext = function (innerValue) {
        this.destination.next(innerValue);
    };
    SimpleOuterSubscriber.prototype.notifyError = function (err) {
        this.destination.error(err);
    };
    SimpleOuterSubscriber.prototype.notifyComplete = function () {
        this.destination.complete();
    };
    return SimpleOuterSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));

var ComplexOuterSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](ComplexOuterSubscriber, _super);
    function ComplexOuterSubscriber() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    ComplexOuterSubscriber.prototype.notifyNext = function (_outerValue, innerValue, _outerIndex, _innerSub) {
        this.destination.next(innerValue);
    };
    ComplexOuterSubscriber.prototype.notifyError = function (error) {
        this.destination.error(error);
    };
    ComplexOuterSubscriber.prototype.notifyComplete = function (_innerSub) {
        this.destination.complete();
    };
    return ComplexOuterSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));

function innerSubscribe(result, innerSubscriber) {
    if (innerSubscriber.closed) {
        return undefined;
    }
    if (result instanceof _Observable__WEBPACK_IMPORTED_MODULE_2__[/* Observable */ "a"]) {
        return result.subscribe(innerSubscriber);
    }
    var subscription;
    try {
        subscription = Object(_util_subscribeTo__WEBPACK_IMPORTED_MODULE_3__[/* subscribeTo */ "a"])(result)(innerSubscriber);
    }
    catch (error) {
        innerSubscriber.error(error);
    }
    return subscription;
}
//# sourceMappingURL=innerSubscribe.js.map


/***/ }),

/***/ 54:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ from; });

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Observable.js + 3 modules
var Observable = __webpack_require__(15);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/subscribeTo.js + 3 modules
var subscribeTo = __webpack_require__(112);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Subscription.js + 1 modules
var Subscription = __webpack_require__(22);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/symbol/observable.js
var symbol_observable = __webpack_require__(61);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduled/scheduleObservable.js
/** PURE_IMPORTS_START _Observable,_Subscription,_symbol_observable PURE_IMPORTS_END */



function scheduleObservable(input, scheduler) {
    return new Observable["a" /* Observable */](function (subscriber) {
        var sub = new Subscription["a" /* Subscription */]();
        sub.add(scheduler.schedule(function () {
            var observable = input[symbol_observable["a" /* observable */]]();
            sub.add(observable.subscribe({
                next: function (value) { sub.add(scheduler.schedule(function () { return subscriber.next(value); })); },
                error: function (err) { sub.add(scheduler.schedule(function () { return subscriber.error(err); })); },
                complete: function () { sub.add(scheduler.schedule(function () { return subscriber.complete(); })); },
            }));
        }));
        return sub;
    });
}
//# sourceMappingURL=scheduleObservable.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduled/schedulePromise.js
/** PURE_IMPORTS_START _Observable,_Subscription PURE_IMPORTS_END */


function schedulePromise(input, scheduler) {
    return new Observable["a" /* Observable */](function (subscriber) {
        var sub = new Subscription["a" /* Subscription */]();
        sub.add(scheduler.schedule(function () {
            return input.then(function (value) {
                sub.add(scheduler.schedule(function () {
                    subscriber.next(value);
                    sub.add(scheduler.schedule(function () { return subscriber.complete(); }));
                }));
            }, function (err) {
                sub.add(scheduler.schedule(function () { return subscriber.error(err); }));
            });
        }));
        return sub;
    });
}
//# sourceMappingURL=schedulePromise.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/scheduled/scheduleArray.js
var scheduleArray = __webpack_require__(110);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/symbol/iterator.js
var symbol_iterator = __webpack_require__(72);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduled/scheduleIterable.js
/** PURE_IMPORTS_START _Observable,_Subscription,_symbol_iterator PURE_IMPORTS_END */



function scheduleIterable(input, scheduler) {
    if (!input) {
        throw new Error('Iterable cannot be null');
    }
    return new Observable["a" /* Observable */](function (subscriber) {
        var sub = new Subscription["a" /* Subscription */]();
        var iterator;
        sub.add(function () {
            if (iterator && typeof iterator.return === 'function') {
                iterator.return();
            }
        });
        sub.add(scheduler.schedule(function () {
            iterator = input[symbol_iterator["a" /* iterator */]]();
            sub.add(scheduler.schedule(function () {
                if (subscriber.closed) {
                    return;
                }
                var value;
                var done;
                try {
                    var result = iterator.next();
                    value = result.value;
                    done = result.done;
                }
                catch (err) {
                    subscriber.error(err);
                    return;
                }
                if (done) {
                    subscriber.complete();
                }
                else {
                    subscriber.next(value);
                    this.schedule();
                }
            }));
        }));
        return sub;
    });
}
//# sourceMappingURL=scheduleIterable.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/isInteropObservable.js
/** PURE_IMPORTS_START _symbol_observable PURE_IMPORTS_END */

function isInteropObservable(input) {
    return input && typeof input[symbol_observable["a" /* observable */]] === 'function';
}
//# sourceMappingURL=isInteropObservable.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isPromise.js
var isPromise = __webpack_require__(131);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isArrayLike.js
var isArrayLike = __webpack_require__(129);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/isIterable.js
/** PURE_IMPORTS_START _symbol_iterator PURE_IMPORTS_END */

function isIterable(input) {
    return input && typeof input[symbol_iterator["a" /* iterator */]] === 'function';
}
//# sourceMappingURL=isIterable.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduled/scheduled.js
/** PURE_IMPORTS_START _scheduleObservable,_schedulePromise,_scheduleArray,_scheduleIterable,_util_isInteropObservable,_util_isPromise,_util_isArrayLike,_util_isIterable PURE_IMPORTS_END */








function scheduled(input, scheduler) {
    if (input != null) {
        if (isInteropObservable(input)) {
            return scheduleObservable(input, scheduler);
        }
        else if (Object(isPromise["a" /* isPromise */])(input)) {
            return schedulePromise(input, scheduler);
        }
        else if (Object(isArrayLike["a" /* isArrayLike */])(input)) {
            return Object(scheduleArray["a" /* scheduleArray */])(input, scheduler);
        }
        else if (isIterable(input) || typeof input === 'string') {
            return scheduleIterable(input, scheduler);
        }
    }
    throw new TypeError((input !== null && typeof input || input) + ' is not observable');
}
//# sourceMappingURL=scheduled.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/observable/from.js
/** PURE_IMPORTS_START _Observable,_util_subscribeTo,_scheduled_scheduled PURE_IMPORTS_END */



function from(input, scheduler) {
    if (!scheduler) {
        if (input instanceof Observable["a" /* Observable */]) {
            return input;
        }
        return new Observable["a" /* Observable */](Object(subscribeTo["a" /* subscribeTo */])(input));
    }
    else {
        return scheduled(input, scheduler);
    }
}
//# sourceMappingURL=from.js.map


/***/ }),

/***/ 57:
/***/ (function(module, exports, __webpack_require__) {

"use strict";



// Load rules
var Trie = __webpack_require__(316);
var allRules = Trie.fromJson(__webpack_require__(317));

// Internals
var extractHostname = __webpack_require__(318);
var getDomain = __webpack_require__(324);
var getPublicSuffix = __webpack_require__(325);
var getSubdomain = __webpack_require__(326);
var isValid = __webpack_require__(211);
var isIp = __webpack_require__(327);
var tldExists = __webpack_require__(328);


// Flags representing steps in the `parse` function. They are used to implement
// a early stop mechanism (simulating some form of laziness) to avoid doing more
// work than necessary to perform a given action (e.g.: we don't need to extract
// the domain and subdomain if we are only interested in public suffix).
var TLD_EXISTS = 1;
var PUBLIC_SUFFIX = 2;
var DOMAIN = 3;
var SUB_DOMAIN = 4;
var ALL = 5;


/**
 * Creates a new instance of tldjs
 * @param  {Object.<rules,validHosts>} options [description]
 * @return {tldjs|Object}                      [description]
 */
function factory(options) {
  var rules = options.rules || allRules || {};
  var validHosts = options.validHosts || [];
  var _extractHostname = options.extractHostname || extractHostname;

  /**
   * Process a given url and extract all information. This is a higher level API
   * around private functions of `tld.js`. It allows to remove duplication (only
   * extract hostname from url once for all operations) and implement some early
   * termination mechanism to not pay the price of what we don't need (this
   * simulates laziness at a lower cost).
   *
   * @param {string} url
   * @param {number|undefined} _step - where should we stop processing
   * @return {object}
   */
  function parse(url, _step) {
    var step = _step || ALL;
    var result = {
      hostname: _extractHostname(url),
      isValid: null,
      isIp: null,
      tldExists: false,
      publicSuffix: null,
      domain: null,
      subdomain: null,
    };

    if (result.hostname === null) {
      result.isIp = false;
      result.isValid = false;
      return result;
    }

    // Check if `hostname` is a valid ip address
    result.isIp = isIp(result.hostname);
    if (result.isIp) {
      result.isValid = true;
      return result;
    }

    // Check if `hostname` is valid
    result.isValid = isValid(result.hostname);
    if (result.isValid === false) return result;

    // Check if tld exists
    if (step === ALL || step === TLD_EXISTS) {
      result.tldExists = tldExists(rules, result.hostname);
    }
    if (step === TLD_EXISTS) return result;

    // Extract public suffix
    result.publicSuffix = getPublicSuffix(rules, result.hostname);
    if (step === PUBLIC_SUFFIX) return result;

    // Extract domain
    result.domain = getDomain(validHosts, result.publicSuffix, result.hostname);
    if (step === DOMAIN) return result;

    // Extract subdomain
    result.subdomain = getSubdomain(result.hostname, result.domain);

    return result;
  }


  return {
    extractHostname: _extractHostname,
    isValid: isValid,
    parse: parse,
    tldExists: function (url) {
      return parse(url, TLD_EXISTS).tldExists;
    },
    getPublicSuffix: function (url) {
      return parse(url, PUBLIC_SUFFIX).publicSuffix;
    },
    getDomain: function (url) {
      return parse(url, DOMAIN).domain;
    },
    getSubdomain: function (url) {
      return parse(url, SUB_DOMAIN).subdomain;
    },
    fromUserSettings: factory
  };
}


module.exports = factory({});


/***/ }),

/***/ 61:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return observable; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
var observable = /*@__PURE__*/ (function () { return typeof Symbol === 'function' && Symbol.observable || '@@observable'; })();
//# sourceMappingURL=observable.js.map


/***/ }),

/***/ 62:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return mergeMap; });
/* unused harmony export MergeMapOperator */
/* unused harmony export MergeMapSubscriber */
/* unused harmony export flatMap */
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _map__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(32);
/* harmony import */ var _observable_from__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(54);
/* harmony import */ var _innerSubscribe__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(53);
/** PURE_IMPORTS_START tslib,_map,_observable_from,_innerSubscribe PURE_IMPORTS_END */




function mergeMap(project, resultSelector, concurrent) {
    if (concurrent === void 0) {
        concurrent = Number.POSITIVE_INFINITY;
    }
    if (typeof resultSelector === 'function') {
        return function (source) { return source.pipe(mergeMap(function (a, i) { return Object(_observable_from__WEBPACK_IMPORTED_MODULE_2__[/* from */ "a"])(project(a, i)).pipe(Object(_map__WEBPACK_IMPORTED_MODULE_1__[/* map */ "a"])(function (b, ii) { return resultSelector(a, b, i, ii); })); }, concurrent)); };
    }
    else if (typeof resultSelector === 'number') {
        concurrent = resultSelector;
    }
    return function (source) { return source.lift(new MergeMapOperator(project, concurrent)); };
}
var MergeMapOperator = /*@__PURE__*/ (function () {
    function MergeMapOperator(project, concurrent) {
        if (concurrent === void 0) {
            concurrent = Number.POSITIVE_INFINITY;
        }
        this.project = project;
        this.concurrent = concurrent;
    }
    MergeMapOperator.prototype.call = function (observer, source) {
        return source.subscribe(new MergeMapSubscriber(observer, this.project, this.concurrent));
    };
    return MergeMapOperator;
}());

var MergeMapSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](MergeMapSubscriber, _super);
    function MergeMapSubscriber(destination, project, concurrent) {
        if (concurrent === void 0) {
            concurrent = Number.POSITIVE_INFINITY;
        }
        var _this = _super.call(this, destination) || this;
        _this.project = project;
        _this.concurrent = concurrent;
        _this.hasCompleted = false;
        _this.buffer = [];
        _this.active = 0;
        _this.index = 0;
        return _this;
    }
    MergeMapSubscriber.prototype._next = function (value) {
        if (this.active < this.concurrent) {
            this._tryNext(value);
        }
        else {
            this.buffer.push(value);
        }
    };
    MergeMapSubscriber.prototype._tryNext = function (value) {
        var result;
        var index = this.index++;
        try {
            result = this.project(value, index);
        }
        catch (err) {
            this.destination.error(err);
            return;
        }
        this.active++;
        this._innerSub(result);
    };
    MergeMapSubscriber.prototype._innerSub = function (ish) {
        var innerSubscriber = new _innerSubscribe__WEBPACK_IMPORTED_MODULE_3__[/* SimpleInnerSubscriber */ "a"](this);
        var destination = this.destination;
        destination.add(innerSubscriber);
        var innerSubscription = Object(_innerSubscribe__WEBPACK_IMPORTED_MODULE_3__[/* innerSubscribe */ "c"])(ish, innerSubscriber);
        if (innerSubscription !== innerSubscriber) {
            destination.add(innerSubscription);
        }
    };
    MergeMapSubscriber.prototype._complete = function () {
        this.hasCompleted = true;
        if (this.active === 0 && this.buffer.length === 0) {
            this.destination.complete();
        }
        this.unsubscribe();
    };
    MergeMapSubscriber.prototype.notifyNext = function (innerValue) {
        this.destination.next(innerValue);
    };
    MergeMapSubscriber.prototype.notifyComplete = function () {
        var buffer = this.buffer;
        this.active--;
        if (buffer.length > 0) {
            this._next(buffer.shift());
        }
        else if (this.active === 0 && this.hasCompleted) {
            this.destination.complete();
        }
    };
    return MergeMapSubscriber;
}(_innerSubscribe__WEBPACK_IMPORTED_MODULE_3__[/* SimpleOuterSubscriber */ "b"]));

var flatMap = mergeMap;
//# sourceMappingURL=mergeMap.js.map


/***/ }),

/***/ 63:
/***/ (function(module, exports) {

var g;

// This works in non-strict mode
g = (function() {
	return this;
})();

try {
	// This works if eval is allowed (see CSP)
	g = g || new Function("return this")();
} catch (e) {
	// This works if the window reference is available
	if (typeof window === "object") g = window;
}

// g can still be undefined, but nothing to do about it...
// We return undefined, instead of nothing here, so it's
// easier to handle this case. if(!global) { ...}

module.exports = g;


/***/ }),

/***/ 65:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return hostReportError; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
function hostReportError(err) {
    setTimeout(function () { throw err; }, 0);
}
//# sourceMappingURL=hostReportError.js.map


/***/ }),

/***/ 72:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* unused harmony export getSymbolIterator */
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return iterator; });
/* unused harmony export $$iterator */
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
function getSymbolIterator() {
    if (typeof Symbol !== 'function' || !Symbol.iterator) {
        return '@@iterator';
    }
    return Symbol.iterator;
}
var iterator = /*@__PURE__*/ getSymbolIterator();
var $$iterator = iterator;
//# sourceMappingURL=iterator.js.map


/***/ }),

/***/ 73:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ObjectUnsubscribedError; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
var ObjectUnsubscribedErrorImpl = /*@__PURE__*/ (function () {
    function ObjectUnsubscribedErrorImpl() {
        Error.call(this);
        this.message = 'object unsubscribed';
        this.name = 'ObjectUnsubscribedError';
        return this;
    }
    ObjectUnsubscribedErrorImpl.prototype = /*@__PURE__*/ Object.create(Error.prototype);
    return ObjectUnsubscribedErrorImpl;
})();
var ObjectUnsubscribedError = ObjectUnsubscribedErrorImpl;
//# sourceMappingURL=ObjectUnsubscribedError.js.map


/***/ }),

/***/ 75:
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/* WEBPACK VAR INJECTION */(function(global) {/*!
 * The buffer module from node.js, for the browser.
 *
 * @author   Feross Aboukhadijeh <http://feross.org>
 * @license  MIT
 */
/* eslint-disable no-proto */



var base64 = __webpack_require__(314)
var ieee754 = __webpack_require__(315)
var isArray = __webpack_require__(246)

exports.Buffer = Buffer
exports.SlowBuffer = SlowBuffer
exports.INSPECT_MAX_BYTES = 50

/**
 * If `Buffer.TYPED_ARRAY_SUPPORT`:
 *   === true    Use Uint8Array implementation (fastest)
 *   === false   Use Object implementation (most compatible, even IE6)
 *
 * Browsers that support typed arrays are IE 10+, Firefox 4+, Chrome 7+, Safari 5.1+,
 * Opera 11.6+, iOS 4.2+.
 *
 * Due to various browser bugs, sometimes the Object implementation will be used even
 * when the browser supports typed arrays.
 *
 * Note:
 *
 *   - Firefox 4-29 lacks support for adding new properties to `Uint8Array` instances,
 *     See: https://bugzilla.mozilla.org/show_bug.cgi?id=695438.
 *
 *   - Chrome 9-10 is missing the `TypedArray.prototype.subarray` function.
 *
 *   - IE10 has a broken `TypedArray.prototype.subarray` function which returns arrays of
 *     incorrect length in some situations.

 * We detect these buggy browsers and set `Buffer.TYPED_ARRAY_SUPPORT` to `false` so they
 * get the Object implementation, which is slower but behaves correctly.
 */
Buffer.TYPED_ARRAY_SUPPORT = global.TYPED_ARRAY_SUPPORT !== undefined
  ? global.TYPED_ARRAY_SUPPORT
  : typedArraySupport()

/*
 * Export kMaxLength after typed array support is determined.
 */
exports.kMaxLength = kMaxLength()

function typedArraySupport () {
  try {
    var arr = new Uint8Array(1)
    arr.__proto__ = {__proto__: Uint8Array.prototype, foo: function () { return 42 }}
    return arr.foo() === 42 && // typed array instances can be augmented
        typeof arr.subarray === 'function' && // chrome 9-10 lack `subarray`
        arr.subarray(1, 1).byteLength === 0 // ie10 has broken `subarray`
  } catch (e) {
    return false
  }
}

function kMaxLength () {
  return Buffer.TYPED_ARRAY_SUPPORT
    ? 0x7fffffff
    : 0x3fffffff
}

function createBuffer (that, length) {
  if (kMaxLength() < length) {
    throw new RangeError('Invalid typed array length')
  }
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    // Return an augmented `Uint8Array` instance, for best performance
    that = new Uint8Array(length)
    that.__proto__ = Buffer.prototype
  } else {
    // Fallback: Return an object instance of the Buffer class
    if (that === null) {
      that = new Buffer(length)
    }
    that.length = length
  }

  return that
}

/**
 * The Buffer constructor returns instances of `Uint8Array` that have their
 * prototype changed to `Buffer.prototype`. Furthermore, `Buffer` is a subclass of
 * `Uint8Array`, so the returned instances will have all the node `Buffer` methods
 * and the `Uint8Array` methods. Square bracket notation works as expected -- it
 * returns a single octet.
 *
 * The `Uint8Array` prototype remains unmodified.
 */

function Buffer (arg, encodingOrOffset, length) {
  if (!Buffer.TYPED_ARRAY_SUPPORT && !(this instanceof Buffer)) {
    return new Buffer(arg, encodingOrOffset, length)
  }

  // Common case.
  if (typeof arg === 'number') {
    if (typeof encodingOrOffset === 'string') {
      throw new Error(
        'If encoding is specified then the first argument must be a string'
      )
    }
    return allocUnsafe(this, arg)
  }
  return from(this, arg, encodingOrOffset, length)
}

Buffer.poolSize = 8192 // not used by this implementation

// TODO: Legacy, not needed anymore. Remove in next major version.
Buffer._augment = function (arr) {
  arr.__proto__ = Buffer.prototype
  return arr
}

function from (that, value, encodingOrOffset, length) {
  if (typeof value === 'number') {
    throw new TypeError('"value" argument must not be a number')
  }

  if (typeof ArrayBuffer !== 'undefined' && value instanceof ArrayBuffer) {
    return fromArrayBuffer(that, value, encodingOrOffset, length)
  }

  if (typeof value === 'string') {
    return fromString(that, value, encodingOrOffset)
  }

  return fromObject(that, value)
}

/**
 * Functionally equivalent to Buffer(arg, encoding) but throws a TypeError
 * if value is a number.
 * Buffer.from(str[, encoding])
 * Buffer.from(array)
 * Buffer.from(buffer)
 * Buffer.from(arrayBuffer[, byteOffset[, length]])
 **/
Buffer.from = function (value, encodingOrOffset, length) {
  return from(null, value, encodingOrOffset, length)
}

if (Buffer.TYPED_ARRAY_SUPPORT) {
  Buffer.prototype.__proto__ = Uint8Array.prototype
  Buffer.__proto__ = Uint8Array
  if (typeof Symbol !== 'undefined' && Symbol.species &&
      Buffer[Symbol.species] === Buffer) {
    // Fix subarray() in ES2016. See: https://github.com/feross/buffer/pull/97
    Object.defineProperty(Buffer, Symbol.species, {
      value: null,
      configurable: true
    })
  }
}

function assertSize (size) {
  if (typeof size !== 'number') {
    throw new TypeError('"size" argument must be a number')
  } else if (size < 0) {
    throw new RangeError('"size" argument must not be negative')
  }
}

function alloc (that, size, fill, encoding) {
  assertSize(size)
  if (size <= 0) {
    return createBuffer(that, size)
  }
  if (fill !== undefined) {
    // Only pay attention to encoding if it's a string. This
    // prevents accidentally sending in a number that would
    // be interpretted as a start offset.
    return typeof encoding === 'string'
      ? createBuffer(that, size).fill(fill, encoding)
      : createBuffer(that, size).fill(fill)
  }
  return createBuffer(that, size)
}

/**
 * Creates a new filled Buffer instance.
 * alloc(size[, fill[, encoding]])
 **/
Buffer.alloc = function (size, fill, encoding) {
  return alloc(null, size, fill, encoding)
}

function allocUnsafe (that, size) {
  assertSize(size)
  that = createBuffer(that, size < 0 ? 0 : checked(size) | 0)
  if (!Buffer.TYPED_ARRAY_SUPPORT) {
    for (var i = 0; i < size; ++i) {
      that[i] = 0
    }
  }
  return that
}

/**
 * Equivalent to Buffer(num), by default creates a non-zero-filled Buffer instance.
 * */
Buffer.allocUnsafe = function (size) {
  return allocUnsafe(null, size)
}
/**
 * Equivalent to SlowBuffer(num), by default creates a non-zero-filled Buffer instance.
 */
Buffer.allocUnsafeSlow = function (size) {
  return allocUnsafe(null, size)
}

function fromString (that, string, encoding) {
  if (typeof encoding !== 'string' || encoding === '') {
    encoding = 'utf8'
  }

  if (!Buffer.isEncoding(encoding)) {
    throw new TypeError('"encoding" must be a valid string encoding')
  }

  var length = byteLength(string, encoding) | 0
  that = createBuffer(that, length)

  var actual = that.write(string, encoding)

  if (actual !== length) {
    // Writing a hex string, for example, that contains invalid characters will
    // cause everything after the first invalid character to be ignored. (e.g.
    // 'abxxcd' will be treated as 'ab')
    that = that.slice(0, actual)
  }

  return that
}

function fromArrayLike (that, array) {
  var length = array.length < 0 ? 0 : checked(array.length) | 0
  that = createBuffer(that, length)
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

function fromArrayBuffer (that, array, byteOffset, length) {
  array.byteLength // this throws if `array` is not a valid ArrayBuffer

  if (byteOffset < 0 || array.byteLength < byteOffset) {
    throw new RangeError('\'offset\' is out of bounds')
  }

  if (array.byteLength < byteOffset + (length || 0)) {
    throw new RangeError('\'length\' is out of bounds')
  }

  if (byteOffset === undefined && length === undefined) {
    array = new Uint8Array(array)
  } else if (length === undefined) {
    array = new Uint8Array(array, byteOffset)
  } else {
    array = new Uint8Array(array, byteOffset, length)
  }

  if (Buffer.TYPED_ARRAY_SUPPORT) {
    // Return an augmented `Uint8Array` instance, for best performance
    that = array
    that.__proto__ = Buffer.prototype
  } else {
    // Fallback: Return an object instance of the Buffer class
    that = fromArrayLike(that, array)
  }
  return that
}

function fromObject (that, obj) {
  if (Buffer.isBuffer(obj)) {
    var len = checked(obj.length) | 0
    that = createBuffer(that, len)

    if (that.length === 0) {
      return that
    }

    obj.copy(that, 0, 0, len)
    return that
  }

  if (obj) {
    if ((typeof ArrayBuffer !== 'undefined' &&
        obj.buffer instanceof ArrayBuffer) || 'length' in obj) {
      if (typeof obj.length !== 'number' || isnan(obj.length)) {
        return createBuffer(that, 0)
      }
      return fromArrayLike(that, obj)
    }

    if (obj.type === 'Buffer' && isArray(obj.data)) {
      return fromArrayLike(that, obj.data)
    }
  }

  throw new TypeError('First argument must be a string, Buffer, ArrayBuffer, Array, or array-like object.')
}

function checked (length) {
  // Note: cannot use `length < kMaxLength()` here because that fails when
  // length is NaN (which is otherwise coerced to zero.)
  if (length >= kMaxLength()) {
    throw new RangeError('Attempt to allocate Buffer larger than maximum ' +
                         'size: 0x' + kMaxLength().toString(16) + ' bytes')
  }
  return length | 0
}

function SlowBuffer (length) {
  if (+length != length) { // eslint-disable-line eqeqeq
    length = 0
  }
  return Buffer.alloc(+length)
}

Buffer.isBuffer = function isBuffer (b) {
  return !!(b != null && b._isBuffer)
}

Buffer.compare = function compare (a, b) {
  if (!Buffer.isBuffer(a) || !Buffer.isBuffer(b)) {
    throw new TypeError('Arguments must be Buffers')
  }

  if (a === b) return 0

  var x = a.length
  var y = b.length

  for (var i = 0, len = Math.min(x, y); i < len; ++i) {
    if (a[i] !== b[i]) {
      x = a[i]
      y = b[i]
      break
    }
  }

  if (x < y) return -1
  if (y < x) return 1
  return 0
}

Buffer.isEncoding = function isEncoding (encoding) {
  switch (String(encoding).toLowerCase()) {
    case 'hex':
    case 'utf8':
    case 'utf-8':
    case 'ascii':
    case 'latin1':
    case 'binary':
    case 'base64':
    case 'ucs2':
    case 'ucs-2':
    case 'utf16le':
    case 'utf-16le':
      return true
    default:
      return false
  }
}

Buffer.concat = function concat (list, length) {
  if (!isArray(list)) {
    throw new TypeError('"list" argument must be an Array of Buffers')
  }

  if (list.length === 0) {
    return Buffer.alloc(0)
  }

  var i
  if (length === undefined) {
    length = 0
    for (i = 0; i < list.length; ++i) {
      length += list[i].length
    }
  }

  var buffer = Buffer.allocUnsafe(length)
  var pos = 0
  for (i = 0; i < list.length; ++i) {
    var buf = list[i]
    if (!Buffer.isBuffer(buf)) {
      throw new TypeError('"list" argument must be an Array of Buffers')
    }
    buf.copy(buffer, pos)
    pos += buf.length
  }
  return buffer
}

function byteLength (string, encoding) {
  if (Buffer.isBuffer(string)) {
    return string.length
  }
  if (typeof ArrayBuffer !== 'undefined' && typeof ArrayBuffer.isView === 'function' &&
      (ArrayBuffer.isView(string) || string instanceof ArrayBuffer)) {
    return string.byteLength
  }
  if (typeof string !== 'string') {
    string = '' + string
  }

  var len = string.length
  if (len === 0) return 0

  // Use a for loop to avoid recursion
  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'ascii':
      case 'latin1':
      case 'binary':
        return len
      case 'utf8':
      case 'utf-8':
      case undefined:
        return utf8ToBytes(string).length
      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return len * 2
      case 'hex':
        return len >>> 1
      case 'base64':
        return base64ToBytes(string).length
      default:
        if (loweredCase) return utf8ToBytes(string).length // assume utf8
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}
Buffer.byteLength = byteLength

function slowToString (encoding, start, end) {
  var loweredCase = false

  // No need to verify that "this.length <= MAX_UINT32" since it's a read-only
  // property of a typed array.

  // This behaves neither like String nor Uint8Array in that we set start/end
  // to their upper/lower bounds if the value passed is out of range.
  // undefined is handled specially as per ECMA-262 6th Edition,
  // Section 13.3.3.7 Runtime Semantics: KeyedBindingInitialization.
  if (start === undefined || start < 0) {
    start = 0
  }
  // Return early if start > this.length. Done here to prevent potential uint32
  // coercion fail below.
  if (start > this.length) {
    return ''
  }

  if (end === undefined || end > this.length) {
    end = this.length
  }

  if (end <= 0) {
    return ''
  }

  // Force coersion to uint32. This will also coerce falsey/NaN values to 0.
  end >>>= 0
  start >>>= 0

  if (end <= start) {
    return ''
  }

  if (!encoding) encoding = 'utf8'

  while (true) {
    switch (encoding) {
      case 'hex':
        return hexSlice(this, start, end)

      case 'utf8':
      case 'utf-8':
        return utf8Slice(this, start, end)

      case 'ascii':
        return asciiSlice(this, start, end)

      case 'latin1':
      case 'binary':
        return latin1Slice(this, start, end)

      case 'base64':
        return base64Slice(this, start, end)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return utf16leSlice(this, start, end)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = (encoding + '').toLowerCase()
        loweredCase = true
    }
  }
}

// The property is used by `Buffer.isBuffer` and `is-buffer` (in Safari 5-7) to detect
// Buffer instances.
Buffer.prototype._isBuffer = true

function swap (b, n, m) {
  var i = b[n]
  b[n] = b[m]
  b[m] = i
}

Buffer.prototype.swap16 = function swap16 () {
  var len = this.length
  if (len % 2 !== 0) {
    throw new RangeError('Buffer size must be a multiple of 16-bits')
  }
  for (var i = 0; i < len; i += 2) {
    swap(this, i, i + 1)
  }
  return this
}

Buffer.prototype.swap32 = function swap32 () {
  var len = this.length
  if (len % 4 !== 0) {
    throw new RangeError('Buffer size must be a multiple of 32-bits')
  }
  for (var i = 0; i < len; i += 4) {
    swap(this, i, i + 3)
    swap(this, i + 1, i + 2)
  }
  return this
}

Buffer.prototype.swap64 = function swap64 () {
  var len = this.length
  if (len % 8 !== 0) {
    throw new RangeError('Buffer size must be a multiple of 64-bits')
  }
  for (var i = 0; i < len; i += 8) {
    swap(this, i, i + 7)
    swap(this, i + 1, i + 6)
    swap(this, i + 2, i + 5)
    swap(this, i + 3, i + 4)
  }
  return this
}

Buffer.prototype.toString = function toString () {
  var length = this.length | 0
  if (length === 0) return ''
  if (arguments.length === 0) return utf8Slice(this, 0, length)
  return slowToString.apply(this, arguments)
}

Buffer.prototype.equals = function equals (b) {
  if (!Buffer.isBuffer(b)) throw new TypeError('Argument must be a Buffer')
  if (this === b) return true
  return Buffer.compare(this, b) === 0
}

Buffer.prototype.inspect = function inspect () {
  var str = ''
  var max = exports.INSPECT_MAX_BYTES
  if (this.length > 0) {
    str = this.toString('hex', 0, max).match(/.{2}/g).join(' ')
    if (this.length > max) str += ' ... '
  }
  return '<Buffer ' + str + '>'
}

Buffer.prototype.compare = function compare (target, start, end, thisStart, thisEnd) {
  if (!Buffer.isBuffer(target)) {
    throw new TypeError('Argument must be a Buffer')
  }

  if (start === undefined) {
    start = 0
  }
  if (end === undefined) {
    end = target ? target.length : 0
  }
  if (thisStart === undefined) {
    thisStart = 0
  }
  if (thisEnd === undefined) {
    thisEnd = this.length
  }

  if (start < 0 || end > target.length || thisStart < 0 || thisEnd > this.length) {
    throw new RangeError('out of range index')
  }

  if (thisStart >= thisEnd && start >= end) {
    return 0
  }
  if (thisStart >= thisEnd) {
    return -1
  }
  if (start >= end) {
    return 1
  }

  start >>>= 0
  end >>>= 0
  thisStart >>>= 0
  thisEnd >>>= 0

  if (this === target) return 0

  var x = thisEnd - thisStart
  var y = end - start
  var len = Math.min(x, y)

  var thisCopy = this.slice(thisStart, thisEnd)
  var targetCopy = target.slice(start, end)

  for (var i = 0; i < len; ++i) {
    if (thisCopy[i] !== targetCopy[i]) {
      x = thisCopy[i]
      y = targetCopy[i]
      break
    }
  }

  if (x < y) return -1
  if (y < x) return 1
  return 0
}

// Finds either the first index of `val` in `buffer` at offset >= `byteOffset`,
// OR the last index of `val` in `buffer` at offset <= `byteOffset`.
//
// Arguments:
// - buffer - a Buffer to search
// - val - a string, Buffer, or number
// - byteOffset - an index into `buffer`; will be clamped to an int32
// - encoding - an optional encoding, relevant is val is a string
// - dir - true for indexOf, false for lastIndexOf
function bidirectionalIndexOf (buffer, val, byteOffset, encoding, dir) {
  // Empty buffer means no match
  if (buffer.length === 0) return -1

  // Normalize byteOffset
  if (typeof byteOffset === 'string') {
    encoding = byteOffset
    byteOffset = 0
  } else if (byteOffset > 0x7fffffff) {
    byteOffset = 0x7fffffff
  } else if (byteOffset < -0x80000000) {
    byteOffset = -0x80000000
  }
  byteOffset = +byteOffset  // Coerce to Number.
  if (isNaN(byteOffset)) {
    // byteOffset: it it's undefined, null, NaN, "foo", etc, search whole buffer
    byteOffset = dir ? 0 : (buffer.length - 1)
  }

  // Normalize byteOffset: negative offsets start from the end of the buffer
  if (byteOffset < 0) byteOffset = buffer.length + byteOffset
  if (byteOffset >= buffer.length) {
    if (dir) return -1
    else byteOffset = buffer.length - 1
  } else if (byteOffset < 0) {
    if (dir) byteOffset = 0
    else return -1
  }

  // Normalize val
  if (typeof val === 'string') {
    val = Buffer.from(val, encoding)
  }

  // Finally, search either indexOf (if dir is true) or lastIndexOf
  if (Buffer.isBuffer(val)) {
    // Special case: looking for empty string/buffer always fails
    if (val.length === 0) {
      return -1
    }
    return arrayIndexOf(buffer, val, byteOffset, encoding, dir)
  } else if (typeof val === 'number') {
    val = val & 0xFF // Search for a byte value [0-255]
    if (Buffer.TYPED_ARRAY_SUPPORT &&
        typeof Uint8Array.prototype.indexOf === 'function') {
      if (dir) {
        return Uint8Array.prototype.indexOf.call(buffer, val, byteOffset)
      } else {
        return Uint8Array.prototype.lastIndexOf.call(buffer, val, byteOffset)
      }
    }
    return arrayIndexOf(buffer, [ val ], byteOffset, encoding, dir)
  }

  throw new TypeError('val must be string, number or Buffer')
}

function arrayIndexOf (arr, val, byteOffset, encoding, dir) {
  var indexSize = 1
  var arrLength = arr.length
  var valLength = val.length

  if (encoding !== undefined) {
    encoding = String(encoding).toLowerCase()
    if (encoding === 'ucs2' || encoding === 'ucs-2' ||
        encoding === 'utf16le' || encoding === 'utf-16le') {
      if (arr.length < 2 || val.length < 2) {
        return -1
      }
      indexSize = 2
      arrLength /= 2
      valLength /= 2
      byteOffset /= 2
    }
  }

  function read (buf, i) {
    if (indexSize === 1) {
      return buf[i]
    } else {
      return buf.readUInt16BE(i * indexSize)
    }
  }

  var i
  if (dir) {
    var foundIndex = -1
    for (i = byteOffset; i < arrLength; i++) {
      if (read(arr, i) === read(val, foundIndex === -1 ? 0 : i - foundIndex)) {
        if (foundIndex === -1) foundIndex = i
        if (i - foundIndex + 1 === valLength) return foundIndex * indexSize
      } else {
        if (foundIndex !== -1) i -= i - foundIndex
        foundIndex = -1
      }
    }
  } else {
    if (byteOffset + valLength > arrLength) byteOffset = arrLength - valLength
    for (i = byteOffset; i >= 0; i--) {
      var found = true
      for (var j = 0; j < valLength; j++) {
        if (read(arr, i + j) !== read(val, j)) {
          found = false
          break
        }
      }
      if (found) return i
    }
  }

  return -1
}

Buffer.prototype.includes = function includes (val, byteOffset, encoding) {
  return this.indexOf(val, byteOffset, encoding) !== -1
}

Buffer.prototype.indexOf = function indexOf (val, byteOffset, encoding) {
  return bidirectionalIndexOf(this, val, byteOffset, encoding, true)
}

Buffer.prototype.lastIndexOf = function lastIndexOf (val, byteOffset, encoding) {
  return bidirectionalIndexOf(this, val, byteOffset, encoding, false)
}

function hexWrite (buf, string, offset, length) {
  offset = Number(offset) || 0
  var remaining = buf.length - offset
  if (!length) {
    length = remaining
  } else {
    length = Number(length)
    if (length > remaining) {
      length = remaining
    }
  }

  // must be an even number of digits
  var strLen = string.length
  if (strLen % 2 !== 0) throw new TypeError('Invalid hex string')

  if (length > strLen / 2) {
    length = strLen / 2
  }
  for (var i = 0; i < length; ++i) {
    var parsed = parseInt(string.substr(i * 2, 2), 16)
    if (isNaN(parsed)) return i
    buf[offset + i] = parsed
  }
  return i
}

function utf8Write (buf, string, offset, length) {
  return blitBuffer(utf8ToBytes(string, buf.length - offset), buf, offset, length)
}

function asciiWrite (buf, string, offset, length) {
  return blitBuffer(asciiToBytes(string), buf, offset, length)
}

function latin1Write (buf, string, offset, length) {
  return asciiWrite(buf, string, offset, length)
}

function base64Write (buf, string, offset, length) {
  return blitBuffer(base64ToBytes(string), buf, offset, length)
}

function ucs2Write (buf, string, offset, length) {
  return blitBuffer(utf16leToBytes(string, buf.length - offset), buf, offset, length)
}

Buffer.prototype.write = function write (string, offset, length, encoding) {
  // Buffer#write(string)
  if (offset === undefined) {
    encoding = 'utf8'
    length = this.length
    offset = 0
  // Buffer#write(string, encoding)
  } else if (length === undefined && typeof offset === 'string') {
    encoding = offset
    length = this.length
    offset = 0
  // Buffer#write(string, offset[, length][, encoding])
  } else if (isFinite(offset)) {
    offset = offset | 0
    if (isFinite(length)) {
      length = length | 0
      if (encoding === undefined) encoding = 'utf8'
    } else {
      encoding = length
      length = undefined
    }
  // legacy write(string, encoding, offset, length) - remove in v0.13
  } else {
    throw new Error(
      'Buffer.write(string, encoding, offset[, length]) is no longer supported'
    )
  }

  var remaining = this.length - offset
  if (length === undefined || length > remaining) length = remaining

  if ((string.length > 0 && (length < 0 || offset < 0)) || offset > this.length) {
    throw new RangeError('Attempt to write outside buffer bounds')
  }

  if (!encoding) encoding = 'utf8'

  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'hex':
        return hexWrite(this, string, offset, length)

      case 'utf8':
      case 'utf-8':
        return utf8Write(this, string, offset, length)

      case 'ascii':
        return asciiWrite(this, string, offset, length)

      case 'latin1':
      case 'binary':
        return latin1Write(this, string, offset, length)

      case 'base64':
        // Warning: maxLength not taken into account in base64Write
        return base64Write(this, string, offset, length)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return ucs2Write(this, string, offset, length)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}

Buffer.prototype.toJSON = function toJSON () {
  return {
    type: 'Buffer',
    data: Array.prototype.slice.call(this._arr || this, 0)
  }
}

function base64Slice (buf, start, end) {
  if (start === 0 && end === buf.length) {
    return base64.fromByteArray(buf)
  } else {
    return base64.fromByteArray(buf.slice(start, end))
  }
}

function utf8Slice (buf, start, end) {
  end = Math.min(buf.length, end)
  var res = []

  var i = start
  while (i < end) {
    var firstByte = buf[i]
    var codePoint = null
    var bytesPerSequence = (firstByte > 0xEF) ? 4
      : (firstByte > 0xDF) ? 3
      : (firstByte > 0xBF) ? 2
      : 1

    if (i + bytesPerSequence <= end) {
      var secondByte, thirdByte, fourthByte, tempCodePoint

      switch (bytesPerSequence) {
        case 1:
          if (firstByte < 0x80) {
            codePoint = firstByte
          }
          break
        case 2:
          secondByte = buf[i + 1]
          if ((secondByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0x1F) << 0x6 | (secondByte & 0x3F)
            if (tempCodePoint > 0x7F) {
              codePoint = tempCodePoint
            }
          }
          break
        case 3:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0xC | (secondByte & 0x3F) << 0x6 | (thirdByte & 0x3F)
            if (tempCodePoint > 0x7FF && (tempCodePoint < 0xD800 || tempCodePoint > 0xDFFF)) {
              codePoint = tempCodePoint
            }
          }
          break
        case 4:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          fourthByte = buf[i + 3]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80 && (fourthByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0x12 | (secondByte & 0x3F) << 0xC | (thirdByte & 0x3F) << 0x6 | (fourthByte & 0x3F)
            if (tempCodePoint > 0xFFFF && tempCodePoint < 0x110000) {
              codePoint = tempCodePoint
            }
          }
      }
    }

    if (codePoint === null) {
      // we did not generate a valid codePoint so insert a
      // replacement char (U+FFFD) and advance only 1 byte
      codePoint = 0xFFFD
      bytesPerSequence = 1
    } else if (codePoint > 0xFFFF) {
      // encode to utf16 (surrogate pair dance)
      codePoint -= 0x10000
      res.push(codePoint >>> 10 & 0x3FF | 0xD800)
      codePoint = 0xDC00 | codePoint & 0x3FF
    }

    res.push(codePoint)
    i += bytesPerSequence
  }

  return decodeCodePointsArray(res)
}

// Based on http://stackoverflow.com/a/22747272/680742, the browser with
// the lowest limit is Chrome, with 0x10000 args.
// We go 1 magnitude less, for safety
var MAX_ARGUMENTS_LENGTH = 0x1000

function decodeCodePointsArray (codePoints) {
  var len = codePoints.length
  if (len <= MAX_ARGUMENTS_LENGTH) {
    return String.fromCharCode.apply(String, codePoints) // avoid extra slice()
  }

  // Decode in chunks to avoid "call stack size exceeded".
  var res = ''
  var i = 0
  while (i < len) {
    res += String.fromCharCode.apply(
      String,
      codePoints.slice(i, i += MAX_ARGUMENTS_LENGTH)
    )
  }
  return res
}

function asciiSlice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; ++i) {
    ret += String.fromCharCode(buf[i] & 0x7F)
  }
  return ret
}

function latin1Slice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; ++i) {
    ret += String.fromCharCode(buf[i])
  }
  return ret
}

function hexSlice (buf, start, end) {
  var len = buf.length

  if (!start || start < 0) start = 0
  if (!end || end < 0 || end > len) end = len

  var out = ''
  for (var i = start; i < end; ++i) {
    out += toHex(buf[i])
  }
  return out
}

function utf16leSlice (buf, start, end) {
  var bytes = buf.slice(start, end)
  var res = ''
  for (var i = 0; i < bytes.length; i += 2) {
    res += String.fromCharCode(bytes[i] + bytes[i + 1] * 256)
  }
  return res
}

Buffer.prototype.slice = function slice (start, end) {
  var len = this.length
  start = ~~start
  end = end === undefined ? len : ~~end

  if (start < 0) {
    start += len
    if (start < 0) start = 0
  } else if (start > len) {
    start = len
  }

  if (end < 0) {
    end += len
    if (end < 0) end = 0
  } else if (end > len) {
    end = len
  }

  if (end < start) end = start

  var newBuf
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    newBuf = this.subarray(start, end)
    newBuf.__proto__ = Buffer.prototype
  } else {
    var sliceLen = end - start
    newBuf = new Buffer(sliceLen, undefined)
    for (var i = 0; i < sliceLen; ++i) {
      newBuf[i] = this[i + start]
    }
  }

  return newBuf
}

/*
 * Need to make sure that buffer isn't trying to write out of bounds.
 */
function checkOffset (offset, ext, length) {
  if ((offset % 1) !== 0 || offset < 0) throw new RangeError('offset is not uint')
  if (offset + ext > length) throw new RangeError('Trying to access beyond buffer length')
}

Buffer.prototype.readUIntLE = function readUIntLE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }

  return val
}

Buffer.prototype.readUIntBE = function readUIntBE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) {
    checkOffset(offset, byteLength, this.length)
  }

  var val = this[offset + --byteLength]
  var mul = 1
  while (byteLength > 0 && (mul *= 0x100)) {
    val += this[offset + --byteLength] * mul
  }

  return val
}

Buffer.prototype.readUInt8 = function readUInt8 (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 1, this.length)
  return this[offset]
}

Buffer.prototype.readUInt16LE = function readUInt16LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  return this[offset] | (this[offset + 1] << 8)
}

Buffer.prototype.readUInt16BE = function readUInt16BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  return (this[offset] << 8) | this[offset + 1]
}

Buffer.prototype.readUInt32LE = function readUInt32LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return ((this[offset]) |
      (this[offset + 1] << 8) |
      (this[offset + 2] << 16)) +
      (this[offset + 3] * 0x1000000)
}

Buffer.prototype.readUInt32BE = function readUInt32BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] * 0x1000000) +
    ((this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    this[offset + 3])
}

Buffer.prototype.readIntLE = function readIntLE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readIntBE = function readIntBE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var i = byteLength
  var mul = 1
  var val = this[offset + --i]
  while (i > 0 && (mul *= 0x100)) {
    val += this[offset + --i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readInt8 = function readInt8 (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 1, this.length)
  if (!(this[offset] & 0x80)) return (this[offset])
  return ((0xff - this[offset] + 1) * -1)
}

Buffer.prototype.readInt16LE = function readInt16LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset] | (this[offset + 1] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt16BE = function readInt16BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset + 1] | (this[offset] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt32LE = function readInt32LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset]) |
    (this[offset + 1] << 8) |
    (this[offset + 2] << 16) |
    (this[offset + 3] << 24)
}

Buffer.prototype.readInt32BE = function readInt32BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] << 24) |
    (this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    (this[offset + 3])
}

Buffer.prototype.readFloatLE = function readFloatLE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, true, 23, 4)
}

Buffer.prototype.readFloatBE = function readFloatBE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, false, 23, 4)
}

Buffer.prototype.readDoubleLE = function readDoubleLE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, true, 52, 8)
}

Buffer.prototype.readDoubleBE = function readDoubleBE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, false, 52, 8)
}

function checkInt (buf, value, offset, ext, max, min) {
  if (!Buffer.isBuffer(buf)) throw new TypeError('"buffer" argument must be a Buffer instance')
  if (value > max || value < min) throw new RangeError('"value" argument is out of bounds')
  if (offset + ext > buf.length) throw new RangeError('Index out of range')
}

Buffer.prototype.writeUIntLE = function writeUIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) {
    var maxBytes = Math.pow(2, 8 * byteLength) - 1
    checkInt(this, value, offset, byteLength, maxBytes, 0)
  }

  var mul = 1
  var i = 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUIntBE = function writeUIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) {
    var maxBytes = Math.pow(2, 8 * byteLength) - 1
    checkInt(this, value, offset, byteLength, maxBytes, 0)
  }

  var i = byteLength - 1
  var mul = 1
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUInt8 = function writeUInt8 (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 1, 0xff, 0)
  if (!Buffer.TYPED_ARRAY_SUPPORT) value = Math.floor(value)
  this[offset] = (value & 0xff)
  return offset + 1
}

function objectWriteUInt16 (buf, value, offset, littleEndian) {
  if (value < 0) value = 0xffff + value + 1
  for (var i = 0, j = Math.min(buf.length - offset, 2); i < j; ++i) {
    buf[offset + i] = (value & (0xff << (8 * (littleEndian ? i : 1 - i)))) >>>
      (littleEndian ? i : 1 - i) * 8
  }
}

Buffer.prototype.writeUInt16LE = function writeUInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
  } else {
    objectWriteUInt16(this, value, offset, true)
  }
  return offset + 2
}

Buffer.prototype.writeUInt16BE = function writeUInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 8)
    this[offset + 1] = (value & 0xff)
  } else {
    objectWriteUInt16(this, value, offset, false)
  }
  return offset + 2
}

function objectWriteUInt32 (buf, value, offset, littleEndian) {
  if (value < 0) value = 0xffffffff + value + 1
  for (var i = 0, j = Math.min(buf.length - offset, 4); i < j; ++i) {
    buf[offset + i] = (value >>> (littleEndian ? i : 3 - i) * 8) & 0xff
  }
}

Buffer.prototype.writeUInt32LE = function writeUInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset + 3] = (value >>> 24)
    this[offset + 2] = (value >>> 16)
    this[offset + 1] = (value >>> 8)
    this[offset] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, true)
  }
  return offset + 4
}

Buffer.prototype.writeUInt32BE = function writeUInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 24)
    this[offset + 1] = (value >>> 16)
    this[offset + 2] = (value >>> 8)
    this[offset + 3] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, false)
  }
  return offset + 4
}

Buffer.prototype.writeIntLE = function writeIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) {
    var limit = Math.pow(2, 8 * byteLength - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = 0
  var mul = 1
  var sub = 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    if (value < 0 && sub === 0 && this[offset + i - 1] !== 0) {
      sub = 1
    }
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeIntBE = function writeIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) {
    var limit = Math.pow(2, 8 * byteLength - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = byteLength - 1
  var mul = 1
  var sub = 0
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    if (value < 0 && sub === 0 && this[offset + i + 1] !== 0) {
      sub = 1
    }
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeInt8 = function writeInt8 (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 1, 0x7f, -0x80)
  if (!Buffer.TYPED_ARRAY_SUPPORT) value = Math.floor(value)
  if (value < 0) value = 0xff + value + 1
  this[offset] = (value & 0xff)
  return offset + 1
}

Buffer.prototype.writeInt16LE = function writeInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
  } else {
    objectWriteUInt16(this, value, offset, true)
  }
  return offset + 2
}

Buffer.prototype.writeInt16BE = function writeInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 8)
    this[offset + 1] = (value & 0xff)
  } else {
    objectWriteUInt16(this, value, offset, false)
  }
  return offset + 2
}

Buffer.prototype.writeInt32LE = function writeInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
    this[offset + 2] = (value >>> 16)
    this[offset + 3] = (value >>> 24)
  } else {
    objectWriteUInt32(this, value, offset, true)
  }
  return offset + 4
}

Buffer.prototype.writeInt32BE = function writeInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  if (value < 0) value = 0xffffffff + value + 1
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 24)
    this[offset + 1] = (value >>> 16)
    this[offset + 2] = (value >>> 8)
    this[offset + 3] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, false)
  }
  return offset + 4
}

function checkIEEE754 (buf, value, offset, ext, max, min) {
  if (offset + ext > buf.length) throw new RangeError('Index out of range')
  if (offset < 0) throw new RangeError('Index out of range')
}

function writeFloat (buf, value, offset, littleEndian, noAssert) {
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 4, 3.4028234663852886e+38, -3.4028234663852886e+38)
  }
  ieee754.write(buf, value, offset, littleEndian, 23, 4)
  return offset + 4
}

Buffer.prototype.writeFloatLE = function writeFloatLE (value, offset, noAssert) {
  return writeFloat(this, value, offset, true, noAssert)
}

Buffer.prototype.writeFloatBE = function writeFloatBE (value, offset, noAssert) {
  return writeFloat(this, value, offset, false, noAssert)
}

function writeDouble (buf, value, offset, littleEndian, noAssert) {
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 8, 1.7976931348623157E+308, -1.7976931348623157E+308)
  }
  ieee754.write(buf, value, offset, littleEndian, 52, 8)
  return offset + 8
}

Buffer.prototype.writeDoubleLE = function writeDoubleLE (value, offset, noAssert) {
  return writeDouble(this, value, offset, true, noAssert)
}

Buffer.prototype.writeDoubleBE = function writeDoubleBE (value, offset, noAssert) {
  return writeDouble(this, value, offset, false, noAssert)
}

// copy(targetBuffer, targetStart=0, sourceStart=0, sourceEnd=buffer.length)
Buffer.prototype.copy = function copy (target, targetStart, start, end) {
  if (!start) start = 0
  if (!end && end !== 0) end = this.length
  if (targetStart >= target.length) targetStart = target.length
  if (!targetStart) targetStart = 0
  if (end > 0 && end < start) end = start

  // Copy 0 bytes; we're done
  if (end === start) return 0
  if (target.length === 0 || this.length === 0) return 0

  // Fatal error conditions
  if (targetStart < 0) {
    throw new RangeError('targetStart out of bounds')
  }
  if (start < 0 || start >= this.length) throw new RangeError('sourceStart out of bounds')
  if (end < 0) throw new RangeError('sourceEnd out of bounds')

  // Are we oob?
  if (end > this.length) end = this.length
  if (target.length - targetStart < end - start) {
    end = target.length - targetStart + start
  }

  var len = end - start
  var i

  if (this === target && start < targetStart && targetStart < end) {
    // descending copy from end
    for (i = len - 1; i >= 0; --i) {
      target[i + targetStart] = this[i + start]
    }
  } else if (len < 1000 || !Buffer.TYPED_ARRAY_SUPPORT) {
    // ascending copy from start
    for (i = 0; i < len; ++i) {
      target[i + targetStart] = this[i + start]
    }
  } else {
    Uint8Array.prototype.set.call(
      target,
      this.subarray(start, start + len),
      targetStart
    )
  }

  return len
}

// Usage:
//    buffer.fill(number[, offset[, end]])
//    buffer.fill(buffer[, offset[, end]])
//    buffer.fill(string[, offset[, end]][, encoding])
Buffer.prototype.fill = function fill (val, start, end, encoding) {
  // Handle string cases:
  if (typeof val === 'string') {
    if (typeof start === 'string') {
      encoding = start
      start = 0
      end = this.length
    } else if (typeof end === 'string') {
      encoding = end
      end = this.length
    }
    if (val.length === 1) {
      var code = val.charCodeAt(0)
      if (code < 256) {
        val = code
      }
    }
    if (encoding !== undefined && typeof encoding !== 'string') {
      throw new TypeError('encoding must be a string')
    }
    if (typeof encoding === 'string' && !Buffer.isEncoding(encoding)) {
      throw new TypeError('Unknown encoding: ' + encoding)
    }
  } else if (typeof val === 'number') {
    val = val & 255
  }

  // Invalid ranges are not set to a default, so can range check early.
  if (start < 0 || this.length < start || this.length < end) {
    throw new RangeError('Out of range index')
  }

  if (end <= start) {
    return this
  }

  start = start >>> 0
  end = end === undefined ? this.length : end >>> 0

  if (!val) val = 0

  var i
  if (typeof val === 'number') {
    for (i = start; i < end; ++i) {
      this[i] = val
    }
  } else {
    var bytes = Buffer.isBuffer(val)
      ? val
      : utf8ToBytes(new Buffer(val, encoding).toString())
    var len = bytes.length
    for (i = 0; i < end - start; ++i) {
      this[i + start] = bytes[i % len]
    }
  }

  return this
}

// HELPER FUNCTIONS
// ================

var INVALID_BASE64_RE = /[^+\/0-9A-Za-z-_]/g

function base64clean (str) {
  // Node strips out invalid characters like \n and \t from the string, base64-js does not
  str = stringtrim(str).replace(INVALID_BASE64_RE, '')
  // Node converts strings with length < 2 to ''
  if (str.length < 2) return ''
  // Node allows for non-padded base64 strings (missing trailing ===), base64-js does not
  while (str.length % 4 !== 0) {
    str = str + '='
  }
  return str
}

function stringtrim (str) {
  if (str.trim) return str.trim()
  return str.replace(/^\s+|\s+$/g, '')
}

function toHex (n) {
  if (n < 16) return '0' + n.toString(16)
  return n.toString(16)
}

function utf8ToBytes (string, units) {
  units = units || Infinity
  var codePoint
  var length = string.length
  var leadSurrogate = null
  var bytes = []

  for (var i = 0; i < length; ++i) {
    codePoint = string.charCodeAt(i)

    // is surrogate component
    if (codePoint > 0xD7FF && codePoint < 0xE000) {
      // last char was a lead
      if (!leadSurrogate) {
        // no lead yet
        if (codePoint > 0xDBFF) {
          // unexpected trail
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        } else if (i + 1 === length) {
          // unpaired lead
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        }

        // valid lead
        leadSurrogate = codePoint

        continue
      }

      // 2 leads in a row
      if (codePoint < 0xDC00) {
        if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
        leadSurrogate = codePoint
        continue
      }

      // valid surrogate pair
      codePoint = (leadSurrogate - 0xD800 << 10 | codePoint - 0xDC00) + 0x10000
    } else if (leadSurrogate) {
      // valid bmp char, but last char was a lead
      if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
    }

    leadSurrogate = null

    // encode utf8
    if (codePoint < 0x80) {
      if ((units -= 1) < 0) break
      bytes.push(codePoint)
    } else if (codePoint < 0x800) {
      if ((units -= 2) < 0) break
      bytes.push(
        codePoint >> 0x6 | 0xC0,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x10000) {
      if ((units -= 3) < 0) break
      bytes.push(
        codePoint >> 0xC | 0xE0,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x110000) {
      if ((units -= 4) < 0) break
      bytes.push(
        codePoint >> 0x12 | 0xF0,
        codePoint >> 0xC & 0x3F | 0x80,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else {
      throw new Error('Invalid code point')
    }
  }

  return bytes
}

function asciiToBytes (str) {
  var byteArray = []
  for (var i = 0; i < str.length; ++i) {
    // Node's code seems to be doing this and not & 0x7F..
    byteArray.push(str.charCodeAt(i) & 0xFF)
  }
  return byteArray
}

function utf16leToBytes (str, units) {
  var c, hi, lo
  var byteArray = []
  for (var i = 0; i < str.length; ++i) {
    if ((units -= 2) < 0) break

    c = str.charCodeAt(i)
    hi = c >> 8
    lo = c % 256
    byteArray.push(lo)
    byteArray.push(hi)
  }

  return byteArray
}

function base64ToBytes (str) {
  return base64.toByteArray(base64clean(str))
}

function blitBuffer (src, dst, offset, length) {
  for (var i = 0; i < length; ++i) {
    if ((i + offset >= dst.length) || (i >= src.length)) break
    dst[i + offset] = src[i]
  }
  return i
}

function isnan (val) {
  return val !== val // eslint-disable-line no-self-compare
}

/* WEBPACK VAR INJECTION */}.call(this, __webpack_require__(63)))

/***/ }),

/***/ 756:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return last; });
/* harmony import */ var _util_EmptyError__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(166);
/* harmony import */ var _filter__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(151);
/* harmony import */ var _takeLast__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(276);
/* harmony import */ var _throwIfEmpty__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(256);
/* harmony import */ var _defaultIfEmpty__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(255);
/* harmony import */ var _util_identity__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(95);
/** PURE_IMPORTS_START _util_EmptyError,_filter,_takeLast,_throwIfEmpty,_defaultIfEmpty,_util_identity PURE_IMPORTS_END */






function last(predicate, defaultValue) {
    var hasDefaultValue = arguments.length >= 2;
    return function (source) { return source.pipe(predicate ? Object(_filter__WEBPACK_IMPORTED_MODULE_1__[/* filter */ "a"])(function (v, i) { return predicate(v, i, source); }) : _util_identity__WEBPACK_IMPORTED_MODULE_5__[/* identity */ "a"], Object(_takeLast__WEBPACK_IMPORTED_MODULE_2__[/* takeLast */ "a"])(1), hasDefaultValue ? Object(_defaultIfEmpty__WEBPACK_IMPORTED_MODULE_4__[/* defaultIfEmpty */ "a"])(defaultValue) : Object(_throwIfEmpty__WEBPACK_IMPORTED_MODULE_3__[/* throwIfEmpty */ "a"])(function () { return new _util_EmptyError__WEBPACK_IMPORTED_MODULE_0__[/* EmptyError */ "a"](); })); };
}
//# sourceMappingURL=last.js.map


/***/ }),

/***/ 757:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return finalize; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/* harmony import */ var _Subscription__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(22);
/** PURE_IMPORTS_START tslib,_Subscriber,_Subscription PURE_IMPORTS_END */



function finalize(callback) {
    return function (source) { return source.lift(new FinallyOperator(callback)); };
}
var FinallyOperator = /*@__PURE__*/ (function () {
    function FinallyOperator(callback) {
        this.callback = callback;
    }
    FinallyOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new FinallySubscriber(subscriber, this.callback));
    };
    return FinallyOperator;
}());
var FinallySubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](FinallySubscriber, _super);
    function FinallySubscriber(destination, callback) {
        var _this = _super.call(this, destination) || this;
        _this.add(new _Subscription__WEBPACK_IMPORTED_MODULE_2__[/* Subscription */ "a"](callback));
        return _this;
    }
    return FinallySubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));
//# sourceMappingURL=finalize.js.map


/***/ }),

/***/ 758:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return forkJoin; });
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(15);
/* harmony import */ var _util_isArray__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(86);
/* harmony import */ var _operators_map__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(32);
/* harmony import */ var _util_isObject__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(109);
/* harmony import */ var _from__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(54);
/** PURE_IMPORTS_START _Observable,_util_isArray,_operators_map,_util_isObject,_from PURE_IMPORTS_END */





function forkJoin() {
    var sources = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        sources[_i] = arguments[_i];
    }
    if (sources.length === 1) {
        var first_1 = sources[0];
        if (Object(_util_isArray__WEBPACK_IMPORTED_MODULE_1__[/* isArray */ "a"])(first_1)) {
            return forkJoinInternal(first_1, null);
        }
        if (Object(_util_isObject__WEBPACK_IMPORTED_MODULE_3__[/* isObject */ "a"])(first_1) && Object.getPrototypeOf(first_1) === Object.prototype) {
            var keys = Object.keys(first_1);
            return forkJoinInternal(keys.map(function (key) { return first_1[key]; }), keys);
        }
    }
    if (typeof sources[sources.length - 1] === 'function') {
        var resultSelector_1 = sources.pop();
        sources = (sources.length === 1 && Object(_util_isArray__WEBPACK_IMPORTED_MODULE_1__[/* isArray */ "a"])(sources[0])) ? sources[0] : sources;
        return forkJoinInternal(sources, null).pipe(Object(_operators_map__WEBPACK_IMPORTED_MODULE_2__[/* map */ "a"])(function (args) { return resultSelector_1.apply(void 0, args); }));
    }
    return forkJoinInternal(sources, null);
}
function forkJoinInternal(sources, keys) {
    return new _Observable__WEBPACK_IMPORTED_MODULE_0__[/* Observable */ "a"](function (subscriber) {
        var len = sources.length;
        if (len === 0) {
            subscriber.complete();
            return;
        }
        var values = new Array(len);
        var completed = 0;
        var emitted = 0;
        var _loop_1 = function (i) {
            var source = Object(_from__WEBPACK_IMPORTED_MODULE_4__[/* from */ "a"])(sources[i]);
            var hasValue = false;
            subscriber.add(source.subscribe({
                next: function (value) {
                    if (!hasValue) {
                        hasValue = true;
                        emitted++;
                    }
                    values[i] = value;
                },
                error: function (err) { return subscriber.error(err); },
                complete: function () {
                    completed++;
                    if (completed === len || !hasValue) {
                        if (emitted === len) {
                            subscriber.next(keys ?
                                keys.reduce(function (result, key, i) { return (result[key] = values[i], result); }, {}) :
                                values);
                        }
                        subscriber.complete();
                    }
                }
            }));
        };
        for (var i = 0; i < len; i++) {
            _loop_1(i);
        }
    });
}
//# sourceMappingURL=forkJoin.js.map


/***/ }),

/***/ 759:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return interval; });
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(15);
/* harmony import */ var _scheduler_async__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(137);
/* harmony import */ var _util_isNumeric__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(221);
/** PURE_IMPORTS_START _Observable,_scheduler_async,_util_isNumeric PURE_IMPORTS_END */



function interval(period, scheduler) {
    if (period === void 0) {
        period = 0;
    }
    if (scheduler === void 0) {
        scheduler = _scheduler_async__WEBPACK_IMPORTED_MODULE_1__[/* async */ "a"];
    }
    if (!Object(_util_isNumeric__WEBPACK_IMPORTED_MODULE_2__[/* isNumeric */ "a"])(period) || period < 0) {
        period = 0;
    }
    if (!scheduler || typeof scheduler.schedule !== 'function') {
        scheduler = _scheduler_async__WEBPACK_IMPORTED_MODULE_1__[/* async */ "a"];
    }
    return new _Observable__WEBPACK_IMPORTED_MODULE_0__[/* Observable */ "a"](function (subscriber) {
        subscriber.add(scheduler.schedule(dispatch, period, { subscriber: subscriber, counter: 0, period: period }));
        return subscriber;
    });
}
function dispatch(state) {
    var subscriber = state.subscriber, counter = state.counter, period = state.period;
    subscriber.next(counter);
    this.schedule({ subscriber: subscriber, counter: counter + 1, period: period }, period);
}
//# sourceMappingURL=interval.js.map


/***/ }),

/***/ 760:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ combineLatest; });

// UNUSED EXPORTS: CombineLatestOperator, CombineLatestSubscriber

// EXTERNAL MODULE: ./node_modules/tslib/tslib.es6.js
var tslib_es6 = __webpack_require__(12);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isScheduler.js
var isScheduler = __webpack_require__(87);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isArray.js
var isArray = __webpack_require__(86);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Subscriber.js
var Subscriber = __webpack_require__(18);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/OuterSubscriber.js
/** PURE_IMPORTS_START tslib,_Subscriber PURE_IMPORTS_END */


var OuterSubscriber_OuterSubscriber = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](OuterSubscriber, _super);
    function OuterSubscriber() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    OuterSubscriber.prototype.notifyNext = function (outerValue, innerValue, outerIndex, innerIndex, innerSub) {
        this.destination.next(innerValue);
    };
    OuterSubscriber.prototype.notifyError = function (error, innerSub) {
        this.destination.error(error);
    };
    OuterSubscriber.prototype.notifyComplete = function (innerSub) {
        this.destination.complete();
    };
    return OuterSubscriber;
}(Subscriber["a" /* Subscriber */]));

//# sourceMappingURL=OuterSubscriber.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/InnerSubscriber.js
/** PURE_IMPORTS_START tslib,_Subscriber PURE_IMPORTS_END */


var InnerSubscriber_InnerSubscriber = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](InnerSubscriber, _super);
    function InnerSubscriber(parent, outerValue, outerIndex) {
        var _this = _super.call(this) || this;
        _this.parent = parent;
        _this.outerValue = outerValue;
        _this.outerIndex = outerIndex;
        _this.index = 0;
        return _this;
    }
    InnerSubscriber.prototype._next = function (value) {
        this.parent.notifyNext(this.outerValue, value, this.outerIndex, this.index++, this);
    };
    InnerSubscriber.prototype._error = function (error) {
        this.parent.notifyError(error, this);
        this.unsubscribe();
    };
    InnerSubscriber.prototype._complete = function () {
        this.parent.notifyComplete(this);
        this.unsubscribe();
    };
    return InnerSubscriber;
}(Subscriber["a" /* Subscriber */]));

//# sourceMappingURL=InnerSubscriber.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/subscribeTo.js + 3 modules
var subscribeTo = __webpack_require__(112);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Observable.js + 3 modules
var Observable = __webpack_require__(15);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/subscribeToResult.js
/** PURE_IMPORTS_START _InnerSubscriber,_subscribeTo,_Observable PURE_IMPORTS_END */



function subscribeToResult(outerSubscriber, result, outerValue, outerIndex, innerSubscriber) {
    if (innerSubscriber === void 0) {
        innerSubscriber = new InnerSubscriber_InnerSubscriber(outerSubscriber, outerValue, outerIndex);
    }
    if (innerSubscriber.closed) {
        return undefined;
    }
    if (result instanceof Observable["a" /* Observable */]) {
        return result.subscribe(innerSubscriber);
    }
    return Object(subscribeTo["a" /* subscribeTo */])(result)(innerSubscriber);
}
//# sourceMappingURL=subscribeToResult.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/observable/fromArray.js
var fromArray = __webpack_require__(132);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/observable/combineLatest.js
/** PURE_IMPORTS_START tslib,_util_isScheduler,_util_isArray,_OuterSubscriber,_util_subscribeToResult,_fromArray PURE_IMPORTS_END */






var NONE = {};
function combineLatest() {
    var observables = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        observables[_i] = arguments[_i];
    }
    var resultSelector = undefined;
    var scheduler = undefined;
    if (Object(isScheduler["a" /* isScheduler */])(observables[observables.length - 1])) {
        scheduler = observables.pop();
    }
    if (typeof observables[observables.length - 1] === 'function') {
        resultSelector = observables.pop();
    }
    if (observables.length === 1 && Object(isArray["a" /* isArray */])(observables[0])) {
        observables = observables[0];
    }
    return Object(fromArray["a" /* fromArray */])(observables, scheduler).lift(new CombineLatestOperator(resultSelector));
}
var CombineLatestOperator = /*@__PURE__*/ (function () {
    function CombineLatestOperator(resultSelector) {
        this.resultSelector = resultSelector;
    }
    CombineLatestOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new combineLatest_CombineLatestSubscriber(subscriber, this.resultSelector));
    };
    return CombineLatestOperator;
}());

var combineLatest_CombineLatestSubscriber = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](CombineLatestSubscriber, _super);
    function CombineLatestSubscriber(destination, resultSelector) {
        var _this = _super.call(this, destination) || this;
        _this.resultSelector = resultSelector;
        _this.active = 0;
        _this.values = [];
        _this.observables = [];
        return _this;
    }
    CombineLatestSubscriber.prototype._next = function (observable) {
        this.values.push(NONE);
        this.observables.push(observable);
    };
    CombineLatestSubscriber.prototype._complete = function () {
        var observables = this.observables;
        var len = observables.length;
        if (len === 0) {
            this.destination.complete();
        }
        else {
            this.active = len;
            this.toRespond = len;
            for (var i = 0; i < len; i++) {
                var observable = observables[i];
                this.add(subscribeToResult(this, observable, undefined, i));
            }
        }
    };
    CombineLatestSubscriber.prototype.notifyComplete = function (unused) {
        if ((this.active -= 1) === 0) {
            this.destination.complete();
        }
    };
    CombineLatestSubscriber.prototype.notifyNext = function (_outerValue, innerValue, outerIndex) {
        var values = this.values;
        var oldVal = values[outerIndex];
        var toRespond = !this.toRespond
            ? 0
            : oldVal === NONE ? --this.toRespond : this.toRespond;
        values[outerIndex] = innerValue;
        if (toRespond === 0) {
            if (this.resultSelector) {
                this._tryResultSelector(values);
            }
            else {
                this.destination.next(values.slice());
            }
        }
    };
    CombineLatestSubscriber.prototype._tryResultSelector = function (values) {
        var result;
        try {
            result = this.resultSelector.apply(this, values);
        }
        catch (err) {
            this.destination.error(err);
            return;
        }
        this.destination.next(result);
    };
    return CombineLatestSubscriber;
}(OuterSubscriber_OuterSubscriber));

//# sourceMappingURL=combineLatest.js.map


/***/ }),

/***/ 761:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ animationFrameScheduler; });

// UNUSED EXPORTS: animationFrame

// EXTERNAL MODULE: ./node_modules/tslib/tslib.es6.js
var tslib_es6 = __webpack_require__(12);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AsyncAction.js + 1 modules
var AsyncAction = __webpack_require__(150);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AnimationFrameAction.js
/** PURE_IMPORTS_START tslib,_AsyncAction PURE_IMPORTS_END */


var AnimationFrameAction_AnimationFrameAction = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](AnimationFrameAction, _super);
    function AnimationFrameAction(scheduler, work) {
        var _this = _super.call(this, scheduler, work) || this;
        _this.scheduler = scheduler;
        _this.work = work;
        return _this;
    }
    AnimationFrameAction.prototype.requestAsyncId = function (scheduler, id, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        if (delay !== null && delay > 0) {
            return _super.prototype.requestAsyncId.call(this, scheduler, id, delay);
        }
        scheduler.actions.push(this);
        return scheduler.scheduled || (scheduler.scheduled = requestAnimationFrame(function () { return scheduler.flush(null); }));
    };
    AnimationFrameAction.prototype.recycleAsyncId = function (scheduler, id, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        if ((delay !== null && delay > 0) || (delay === null && this.delay > 0)) {
            return _super.prototype.recycleAsyncId.call(this, scheduler, id, delay);
        }
        if (scheduler.actions.length === 0) {
            cancelAnimationFrame(id);
            scheduler.scheduled = undefined;
        }
        return undefined;
    };
    return AnimationFrameAction;
}(AsyncAction["a" /* AsyncAction */]));

//# sourceMappingURL=AnimationFrameAction.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AsyncScheduler.js + 1 modules
var AsyncScheduler = __webpack_require__(149);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AnimationFrameScheduler.js
/** PURE_IMPORTS_START tslib,_AsyncScheduler PURE_IMPORTS_END */


var AnimationFrameScheduler_AnimationFrameScheduler = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](AnimationFrameScheduler, _super);
    function AnimationFrameScheduler() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    AnimationFrameScheduler.prototype.flush = function (action) {
        this.active = true;
        this.scheduled = undefined;
        var actions = this.actions;
        var error;
        var index = -1;
        var count = actions.length;
        action = action || actions.shift();
        do {
            if (error = action.execute(action.state, action.delay)) {
                break;
            }
        } while (++index < count && (action = actions.shift()));
        this.active = false;
        if (error) {
            while (++index < count && (action = actions.shift())) {
                action.unsubscribe();
            }
            throw error;
        }
    };
    return AnimationFrameScheduler;
}(AsyncScheduler["a" /* AsyncScheduler */]));

//# sourceMappingURL=AnimationFrameScheduler.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/animationFrame.js
/** PURE_IMPORTS_START _AnimationFrameAction,_AnimationFrameScheduler PURE_IMPORTS_END */


var animationFrameScheduler = /*@__PURE__*/ new AnimationFrameScheduler_AnimationFrameScheduler(AnimationFrameAction_AnimationFrameAction);
var animationFrame = animationFrameScheduler;
//# sourceMappingURL=animationFrame.js.map


/***/ }),

/***/ 762:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return pairwise; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/** PURE_IMPORTS_START tslib,_Subscriber PURE_IMPORTS_END */


function pairwise() {
    return function (source) { return source.lift(new PairwiseOperator()); };
}
var PairwiseOperator = /*@__PURE__*/ (function () {
    function PairwiseOperator() {
    }
    PairwiseOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new PairwiseSubscriber(subscriber));
    };
    return PairwiseOperator;
}());
var PairwiseSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](PairwiseSubscriber, _super);
    function PairwiseSubscriber(destination) {
        var _this = _super.call(this, destination) || this;
        _this.hasPrev = false;
        return _this;
    }
    PairwiseSubscriber.prototype._next = function (value) {
        var pair;
        if (this.hasPrev) {
            pair = [this.prev, value];
        }
        else {
            this.hasPrev = true;
        }
        this.prev = value;
        if (pair) {
            this.destination.next(pair);
        }
    };
    return PairwiseSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));
//# sourceMappingURL=pairwise.js.map


/***/ }),

/***/ 763:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return debounceTime; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/* harmony import */ var _scheduler_async__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(137);
/** PURE_IMPORTS_START tslib,_Subscriber,_scheduler_async PURE_IMPORTS_END */



function debounceTime(dueTime, scheduler) {
    if (scheduler === void 0) {
        scheduler = _scheduler_async__WEBPACK_IMPORTED_MODULE_2__[/* async */ "a"];
    }
    return function (source) { return source.lift(new DebounceTimeOperator(dueTime, scheduler)); };
}
var DebounceTimeOperator = /*@__PURE__*/ (function () {
    function DebounceTimeOperator(dueTime, scheduler) {
        this.dueTime = dueTime;
        this.scheduler = scheduler;
    }
    DebounceTimeOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new DebounceTimeSubscriber(subscriber, this.dueTime, this.scheduler));
    };
    return DebounceTimeOperator;
}());
var DebounceTimeSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](DebounceTimeSubscriber, _super);
    function DebounceTimeSubscriber(destination, dueTime, scheduler) {
        var _this = _super.call(this, destination) || this;
        _this.dueTime = dueTime;
        _this.scheduler = scheduler;
        _this.debouncedSubscription = null;
        _this.lastValue = null;
        _this.hasValue = false;
        return _this;
    }
    DebounceTimeSubscriber.prototype._next = function (value) {
        this.clearDebounce();
        this.lastValue = value;
        this.hasValue = true;
        this.add(this.debouncedSubscription = this.scheduler.schedule(dispatchNext, this.dueTime, this));
    };
    DebounceTimeSubscriber.prototype._complete = function () {
        this.debouncedNext();
        this.destination.complete();
    };
    DebounceTimeSubscriber.prototype.debouncedNext = function () {
        this.clearDebounce();
        if (this.hasValue) {
            var lastValue = this.lastValue;
            this.lastValue = null;
            this.hasValue = false;
            this.destination.next(lastValue);
        }
    };
    DebounceTimeSubscriber.prototype.clearDebounce = function () {
        var debouncedSubscription = this.debouncedSubscription;
        if (debouncedSubscription !== null) {
            this.remove(debouncedSubscription);
            debouncedSubscription.unsubscribe();
            this.debouncedSubscription = null;
        }
    };
    return DebounceTimeSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));
function dispatchNext(subscriber) {
    subscriber.debouncedNext();
}
//# sourceMappingURL=debounceTime.js.map


/***/ }),

/***/ 764:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return distinctUntilChanged; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(12);
/* harmony import */ var _Subscriber__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(18);
/** PURE_IMPORTS_START tslib,_Subscriber PURE_IMPORTS_END */


function distinctUntilChanged(compare, keySelector) {
    return function (source) { return source.lift(new DistinctUntilChangedOperator(compare, keySelector)); };
}
var DistinctUntilChangedOperator = /*@__PURE__*/ (function () {
    function DistinctUntilChangedOperator(compare, keySelector) {
        this.compare = compare;
        this.keySelector = keySelector;
    }
    DistinctUntilChangedOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new DistinctUntilChangedSubscriber(subscriber, this.compare, this.keySelector));
    };
    return DistinctUntilChangedOperator;
}());
var DistinctUntilChangedSubscriber = /*@__PURE__*/ (function (_super) {
    tslib__WEBPACK_IMPORTED_MODULE_0__[/* __extends */ "a"](DistinctUntilChangedSubscriber, _super);
    function DistinctUntilChangedSubscriber(destination, compare, keySelector) {
        var _this = _super.call(this, destination) || this;
        _this.keySelector = keySelector;
        _this.hasKey = false;
        if (typeof compare === 'function') {
            _this.compare = compare;
        }
        return _this;
    }
    DistinctUntilChangedSubscriber.prototype.compare = function (x, y) {
        return x === y;
    };
    DistinctUntilChangedSubscriber.prototype._next = function (value) {
        var key;
        try {
            var keySelector = this.keySelector;
            key = keySelector ? keySelector(value) : value;
        }
        catch (err) {
            return this.destination.error(err);
        }
        var result = false;
        if (this.hasKey) {
            try {
                var compare = this.compare;
                result = compare(this.key, key);
            }
            catch (err) {
                return this.destination.error(err);
            }
        }
        else {
            this.hasKey = true;
        }
        if (!result) {
            this.key = key;
            this.destination.next(value);
        }
    };
    return DistinctUntilChangedSubscriber;
}(_Subscriber__WEBPACK_IMPORTED_MODULE_1__[/* Subscriber */ "a"]));
//# sourceMappingURL=distinctUntilChanged.js.map


/***/ }),

/***/ 765:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return fromEvent; });
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(15);
/* harmony import */ var _util_isArray__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(86);
/* harmony import */ var _util_isFunction__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(83);
/* harmony import */ var _operators_map__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(32);
/** PURE_IMPORTS_START _Observable,_util_isArray,_util_isFunction,_operators_map PURE_IMPORTS_END */




var toString = /*@__PURE__*/ (function () { return Object.prototype.toString; })();
function fromEvent(target, eventName, options, resultSelector) {
    if (Object(_util_isFunction__WEBPACK_IMPORTED_MODULE_2__[/* isFunction */ "a"])(options)) {
        resultSelector = options;
        options = undefined;
    }
    if (resultSelector) {
        return fromEvent(target, eventName, options).pipe(Object(_operators_map__WEBPACK_IMPORTED_MODULE_3__[/* map */ "a"])(function (args) { return Object(_util_isArray__WEBPACK_IMPORTED_MODULE_1__[/* isArray */ "a"])(args) ? resultSelector.apply(void 0, args) : resultSelector(args); }));
    }
    return new _Observable__WEBPACK_IMPORTED_MODULE_0__[/* Observable */ "a"](function (subscriber) {
        function handler(e) {
            if (arguments.length > 1) {
                subscriber.next(Array.prototype.slice.call(arguments));
            }
            else {
                subscriber.next(e);
            }
        }
        setupSubscription(target, eventName, handler, subscriber, options);
    });
}
function setupSubscription(sourceObj, eventName, handler, subscriber, options) {
    var unsubscribe;
    if (isEventTarget(sourceObj)) {
        var source_1 = sourceObj;
        sourceObj.addEventListener(eventName, handler, options);
        unsubscribe = function () { return source_1.removeEventListener(eventName, handler, options); };
    }
    else if (isJQueryStyleEventEmitter(sourceObj)) {
        var source_2 = sourceObj;
        sourceObj.on(eventName, handler);
        unsubscribe = function () { return source_2.off(eventName, handler); };
    }
    else if (isNodeStyleEventEmitter(sourceObj)) {
        var source_3 = sourceObj;
        sourceObj.addListener(eventName, handler);
        unsubscribe = function () { return source_3.removeListener(eventName, handler); };
    }
    else if (sourceObj && sourceObj.length) {
        for (var i = 0, len = sourceObj.length; i < len; i++) {
            setupSubscription(sourceObj[i], eventName, handler, subscriber, options);
        }
    }
    else {
        throw new TypeError('Invalid event target');
    }
    subscriber.add(unsubscribe);
}
function isNodeStyleEventEmitter(sourceObj) {
    return sourceObj && typeof sourceObj.addListener === 'function' && typeof sourceObj.removeListener === 'function';
}
function isJQueryStyleEventEmitter(sourceObj) {
    return sourceObj && typeof sourceObj.on === 'function' && typeof sourceObj.off === 'function';
}
function isEventTarget(sourceObj) {
    return sourceObj && typeof sourceObj.addEventListener === 'function' && typeof sourceObj.removeEventListener === 'function';
}
//# sourceMappingURL=fromEvent.js.map


/***/ }),

/***/ 766:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return isObservable; });
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(15);
/** PURE_IMPORTS_START _Observable PURE_IMPORTS_END */

function isObservable(obj) {
    return !!obj && (obj instanceof _Observable__WEBPACK_IMPORTED_MODULE_0__[/* Observable */ "a"] || (typeof obj.lift === 'function' && typeof obj.subscribe === 'function'));
}
//# sourceMappingURL=isObservable.js.map


/***/ }),

/***/ 767:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ shareReplay; });

// EXTERNAL MODULE: ./node_modules/tslib/tslib.es6.js
var tslib_es6 = __webpack_require__(12);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Subject.js
var Subject = __webpack_require__(28);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AsyncAction.js + 1 modules
var AsyncAction = __webpack_require__(150);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/QueueAction.js
/** PURE_IMPORTS_START tslib,_AsyncAction PURE_IMPORTS_END */


var QueueAction_QueueAction = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](QueueAction, _super);
    function QueueAction(scheduler, work) {
        var _this = _super.call(this, scheduler, work) || this;
        _this.scheduler = scheduler;
        _this.work = work;
        return _this;
    }
    QueueAction.prototype.schedule = function (state, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        if (delay > 0) {
            return _super.prototype.schedule.call(this, state, delay);
        }
        this.delay = delay;
        this.state = state;
        this.scheduler.flush(this);
        return this;
    };
    QueueAction.prototype.execute = function (state, delay) {
        return (delay > 0 || this.closed) ?
            _super.prototype.execute.call(this, state, delay) :
            this._execute(state, delay);
    };
    QueueAction.prototype.requestAsyncId = function (scheduler, id, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        if ((delay !== null && delay > 0) || (delay === null && this.delay > 0)) {
            return _super.prototype.requestAsyncId.call(this, scheduler, id, delay);
        }
        return scheduler.flush(this);
    };
    return QueueAction;
}(AsyncAction["a" /* AsyncAction */]));

//# sourceMappingURL=QueueAction.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AsyncScheduler.js + 1 modules
var AsyncScheduler = __webpack_require__(149);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/QueueScheduler.js
/** PURE_IMPORTS_START tslib,_AsyncScheduler PURE_IMPORTS_END */


var QueueScheduler_QueueScheduler = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](QueueScheduler, _super);
    function QueueScheduler() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    return QueueScheduler;
}(AsyncScheduler["a" /* AsyncScheduler */]));

//# sourceMappingURL=QueueScheduler.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/queue.js
/** PURE_IMPORTS_START _QueueAction,_QueueScheduler PURE_IMPORTS_END */


var queueScheduler = /*@__PURE__*/ new QueueScheduler_QueueScheduler(QueueAction_QueueAction);
var queue = queueScheduler;
//# sourceMappingURL=queue.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Subscription.js + 1 modules
var Subscription = __webpack_require__(22);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Subscriber.js
var Subscriber = __webpack_require__(18);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/observable/empty.js
var empty = __webpack_require__(98);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/observable/of.js
var of = __webpack_require__(24);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Observable.js + 3 modules
var Observable = __webpack_require__(15);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/observable/throwError.js
/** PURE_IMPORTS_START _Observable PURE_IMPORTS_END */

function throwError(error, scheduler) {
    if (!scheduler) {
        return new Observable["a" /* Observable */](function (subscriber) { return subscriber.error(error); });
    }
    else {
        return new Observable["a" /* Observable */](function (subscriber) { return scheduler.schedule(dispatch, 0, { error: error, subscriber: subscriber }); });
    }
}
function dispatch(_a) {
    var error = _a.error, subscriber = _a.subscriber;
    subscriber.error(error);
}
//# sourceMappingURL=throwError.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/Notification.js
/** PURE_IMPORTS_START _observable_empty,_observable_of,_observable_throwError PURE_IMPORTS_END */



var NotificationKind;
/*@__PURE__*/ (function (NotificationKind) {
    NotificationKind["NEXT"] = "N";
    NotificationKind["ERROR"] = "E";
    NotificationKind["COMPLETE"] = "C";
})(NotificationKind || (NotificationKind = {}));
var Notification_Notification = /*@__PURE__*/ (function () {
    function Notification(kind, value, error) {
        this.kind = kind;
        this.value = value;
        this.error = error;
        this.hasValue = kind === 'N';
    }
    Notification.prototype.observe = function (observer) {
        switch (this.kind) {
            case 'N':
                return observer.next && observer.next(this.value);
            case 'E':
                return observer.error && observer.error(this.error);
            case 'C':
                return observer.complete && observer.complete();
        }
    };
    Notification.prototype.do = function (next, error, complete) {
        var kind = this.kind;
        switch (kind) {
            case 'N':
                return next && next(this.value);
            case 'E':
                return error && error(this.error);
            case 'C':
                return complete && complete();
        }
    };
    Notification.prototype.accept = function (nextOrObserver, error, complete) {
        if (nextOrObserver && typeof nextOrObserver.next === 'function') {
            return this.observe(nextOrObserver);
        }
        else {
            return this.do(nextOrObserver, error, complete);
        }
    };
    Notification.prototype.toObservable = function () {
        var kind = this.kind;
        switch (kind) {
            case 'N':
                return Object(of["a" /* of */])(this.value);
            case 'E':
                return throwError(this.error);
            case 'C':
                return Object(empty["b" /* empty */])();
        }
        throw new Error('unexpected notification kind value');
    };
    Notification.createNext = function (value) {
        if (typeof value !== 'undefined') {
            return new Notification('N', value);
        }
        return Notification.undefinedValueNotification;
    };
    Notification.createError = function (err) {
        return new Notification('E', undefined, err);
    };
    Notification.createComplete = function () {
        return Notification.completeNotification;
    };
    Notification.completeNotification = new Notification('C');
    Notification.undefinedValueNotification = new Notification('N', undefined);
    return Notification;
}());

//# sourceMappingURL=Notification.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/operators/observeOn.js
/** PURE_IMPORTS_START tslib,_Subscriber,_Notification PURE_IMPORTS_END */



function observeOn(scheduler, delay) {
    if (delay === void 0) {
        delay = 0;
    }
    return function observeOnOperatorFunction(source) {
        return source.lift(new ObserveOnOperator(scheduler, delay));
    };
}
var ObserveOnOperator = /*@__PURE__*/ (function () {
    function ObserveOnOperator(scheduler, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        this.scheduler = scheduler;
        this.delay = delay;
    }
    ObserveOnOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new observeOn_ObserveOnSubscriber(subscriber, this.scheduler, this.delay));
    };
    return ObserveOnOperator;
}());

var observeOn_ObserveOnSubscriber = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](ObserveOnSubscriber, _super);
    function ObserveOnSubscriber(destination, scheduler, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        var _this = _super.call(this, destination) || this;
        _this.scheduler = scheduler;
        _this.delay = delay;
        return _this;
    }
    ObserveOnSubscriber.dispatch = function (arg) {
        var notification = arg.notification, destination = arg.destination;
        notification.observe(destination);
        this.unsubscribe();
    };
    ObserveOnSubscriber.prototype.scheduleMessage = function (notification) {
        var destination = this.destination;
        destination.add(this.scheduler.schedule(ObserveOnSubscriber.dispatch, this.delay, new ObserveOnMessage(notification, this.destination)));
    };
    ObserveOnSubscriber.prototype._next = function (value) {
        this.scheduleMessage(Notification_Notification.createNext(value));
    };
    ObserveOnSubscriber.prototype._error = function (err) {
        this.scheduleMessage(Notification_Notification.createError(err));
        this.unsubscribe();
    };
    ObserveOnSubscriber.prototype._complete = function () {
        this.scheduleMessage(Notification_Notification.createComplete());
        this.unsubscribe();
    };
    return ObserveOnSubscriber;
}(Subscriber["a" /* Subscriber */]));

var ObserveOnMessage = /*@__PURE__*/ (function () {
    function ObserveOnMessage(notification, destination) {
        this.notification = notification;
        this.destination = destination;
    }
    return ObserveOnMessage;
}());

//# sourceMappingURL=observeOn.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/ObjectUnsubscribedError.js
var ObjectUnsubscribedError = __webpack_require__(73);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/SubjectSubscription.js
var SubjectSubscription = __webpack_require__(164);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/ReplaySubject.js
/** PURE_IMPORTS_START tslib,_Subject,_scheduler_queue,_Subscription,_operators_observeOn,_util_ObjectUnsubscribedError,_SubjectSubscription PURE_IMPORTS_END */







var ReplaySubject_ReplaySubject = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](ReplaySubject, _super);
    function ReplaySubject(bufferSize, windowTime, scheduler) {
        if (bufferSize === void 0) {
            bufferSize = Number.POSITIVE_INFINITY;
        }
        if (windowTime === void 0) {
            windowTime = Number.POSITIVE_INFINITY;
        }
        var _this = _super.call(this) || this;
        _this.scheduler = scheduler;
        _this._events = [];
        _this._infiniteTimeWindow = false;
        _this._bufferSize = bufferSize < 1 ? 1 : bufferSize;
        _this._windowTime = windowTime < 1 ? 1 : windowTime;
        if (windowTime === Number.POSITIVE_INFINITY) {
            _this._infiniteTimeWindow = true;
            _this.next = _this.nextInfiniteTimeWindow;
        }
        else {
            _this.next = _this.nextTimeWindow;
        }
        return _this;
    }
    ReplaySubject.prototype.nextInfiniteTimeWindow = function (value) {
        if (!this.isStopped) {
            var _events = this._events;
            _events.push(value);
            if (_events.length > this._bufferSize) {
                _events.shift();
            }
        }
        _super.prototype.next.call(this, value);
    };
    ReplaySubject.prototype.nextTimeWindow = function (value) {
        if (!this.isStopped) {
            this._events.push(new ReplayEvent(this._getNow(), value));
            this._trimBufferThenGetEvents();
        }
        _super.prototype.next.call(this, value);
    };
    ReplaySubject.prototype._subscribe = function (subscriber) {
        var _infiniteTimeWindow = this._infiniteTimeWindow;
        var _events = _infiniteTimeWindow ? this._events : this._trimBufferThenGetEvents();
        var scheduler = this.scheduler;
        var len = _events.length;
        var subscription;
        if (this.closed) {
            throw new ObjectUnsubscribedError["a" /* ObjectUnsubscribedError */]();
        }
        else if (this.isStopped || this.hasError) {
            subscription = Subscription["a" /* Subscription */].EMPTY;
        }
        else {
            this.observers.push(subscriber);
            subscription = new SubjectSubscription["a" /* SubjectSubscription */](this, subscriber);
        }
        if (scheduler) {
            subscriber.add(subscriber = new observeOn_ObserveOnSubscriber(subscriber, scheduler));
        }
        if (_infiniteTimeWindow) {
            for (var i = 0; i < len && !subscriber.closed; i++) {
                subscriber.next(_events[i]);
            }
        }
        else {
            for (var i = 0; i < len && !subscriber.closed; i++) {
                subscriber.next(_events[i].value);
            }
        }
        if (this.hasError) {
            subscriber.error(this.thrownError);
        }
        else if (this.isStopped) {
            subscriber.complete();
        }
        return subscription;
    };
    ReplaySubject.prototype._getNow = function () {
        return (this.scheduler || queue).now();
    };
    ReplaySubject.prototype._trimBufferThenGetEvents = function () {
        var now = this._getNow();
        var _bufferSize = this._bufferSize;
        var _windowTime = this._windowTime;
        var _events = this._events;
        var eventsCount = _events.length;
        var spliceCount = 0;
        while (spliceCount < eventsCount) {
            if ((now - _events[spliceCount].time) < _windowTime) {
                break;
            }
            spliceCount++;
        }
        if (eventsCount > _bufferSize) {
            spliceCount = Math.max(spliceCount, eventsCount - _bufferSize);
        }
        if (spliceCount > 0) {
            _events.splice(0, spliceCount);
        }
        return _events;
    };
    return ReplaySubject;
}(Subject["a" /* Subject */]));

var ReplayEvent = /*@__PURE__*/ (function () {
    function ReplayEvent(time, value) {
        this.time = time;
        this.value = value;
    }
    return ReplayEvent;
}());
//# sourceMappingURL=ReplaySubject.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/operators/shareReplay.js
/** PURE_IMPORTS_START _ReplaySubject PURE_IMPORTS_END */

function shareReplay(configOrBufferSize, windowTime, scheduler) {
    var config;
    if (configOrBufferSize && typeof configOrBufferSize === 'object') {
        config = configOrBufferSize;
    }
    else {
        config = {
            bufferSize: configOrBufferSize,
            windowTime: windowTime,
            refCount: false,
            scheduler: scheduler,
        };
    }
    return function (source) { return source.lift(shareReplayOperator(config)); };
}
function shareReplayOperator(_a) {
    var _b = _a.bufferSize, bufferSize = _b === void 0 ? Number.POSITIVE_INFINITY : _b, _c = _a.windowTime, windowTime = _c === void 0 ? Number.POSITIVE_INFINITY : _c, useRefCount = _a.refCount, scheduler = _a.scheduler;
    var subject;
    var refCount = 0;
    var subscription;
    var hasError = false;
    var isComplete = false;
    return function shareReplayOperation(source) {
        refCount++;
        var innerSub;
        if (!subject || hasError) {
            hasError = false;
            subject = new ReplaySubject_ReplaySubject(bufferSize, windowTime, scheduler);
            innerSub = subject.subscribe(this);
            subscription = source.subscribe({
                next: function (value) {
                    subject.next(value);
                },
                error: function (err) {
                    hasError = true;
                    subject.error(err);
                },
                complete: function () {
                    isComplete = true;
                    subscription = undefined;
                    subject.complete();
                },
            });
            if (isComplete) {
                subscription = undefined;
            }
        }
        else {
            innerSub = subject.subscribe(this);
        }
        this.add(function () {
            refCount--;
            innerSub.unsubscribe();
            innerSub = undefined;
            if (subscription && !isComplete && useRefCount && refCount === 0) {
                subscription.unsubscribe();
                subscription = undefined;
                subject = undefined;
            }
        });
    };
}
//# sourceMappingURL=shareReplay.js.map


/***/ }),

/***/ 768:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ asapScheduler; });

// UNUSED EXPORTS: asap

// EXTERNAL MODULE: ./node_modules/tslib/tslib.es6.js
var tslib_es6 = __webpack_require__(12);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/Immediate.js
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
var nextHandle = 1;
var RESOLVED = /*@__PURE__*/ (function () { return /*@__PURE__*/ Promise.resolve(); })();
var activeHandles = {};
function findAndClearHandle(handle) {
    if (handle in activeHandles) {
        delete activeHandles[handle];
        return true;
    }
    return false;
}
var Immediate = {
    setImmediate: function (cb) {
        var handle = nextHandle++;
        activeHandles[handle] = true;
        RESOLVED.then(function () { return findAndClearHandle(handle) && cb(); });
        return handle;
    },
    clearImmediate: function (handle) {
        findAndClearHandle(handle);
    },
};
var TestTools = {
    pending: function () {
        return Object.keys(activeHandles).length;
    }
};
//# sourceMappingURL=Immediate.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AsyncAction.js + 1 modules
var AsyncAction = __webpack_require__(150);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AsapAction.js
/** PURE_IMPORTS_START tslib,_util_Immediate,_AsyncAction PURE_IMPORTS_END */



var AsapAction_AsapAction = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](AsapAction, _super);
    function AsapAction(scheduler, work) {
        var _this = _super.call(this, scheduler, work) || this;
        _this.scheduler = scheduler;
        _this.work = work;
        return _this;
    }
    AsapAction.prototype.requestAsyncId = function (scheduler, id, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        if (delay !== null && delay > 0) {
            return _super.prototype.requestAsyncId.call(this, scheduler, id, delay);
        }
        scheduler.actions.push(this);
        return scheduler.scheduled || (scheduler.scheduled = Immediate.setImmediate(scheduler.flush.bind(scheduler, null)));
    };
    AsapAction.prototype.recycleAsyncId = function (scheduler, id, delay) {
        if (delay === void 0) {
            delay = 0;
        }
        if ((delay !== null && delay > 0) || (delay === null && this.delay > 0)) {
            return _super.prototype.recycleAsyncId.call(this, scheduler, id, delay);
        }
        if (scheduler.actions.length === 0) {
            Immediate.clearImmediate(id);
            scheduler.scheduled = undefined;
        }
        return undefined;
    };
    return AsapAction;
}(AsyncAction["a" /* AsyncAction */]));

//# sourceMappingURL=AsapAction.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AsyncScheduler.js + 1 modules
var AsyncScheduler = __webpack_require__(149);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/AsapScheduler.js
/** PURE_IMPORTS_START tslib,_AsyncScheduler PURE_IMPORTS_END */


var AsapScheduler_AsapScheduler = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](AsapScheduler, _super);
    function AsapScheduler() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    AsapScheduler.prototype.flush = function (action) {
        this.active = true;
        this.scheduled = undefined;
        var actions = this.actions;
        var error;
        var index = -1;
        var count = actions.length;
        action = action || actions.shift();
        do {
            if (error = action.execute(action.state, action.delay)) {
                break;
            }
        } while (++index < count && (action = actions.shift()));
        this.active = false;
        if (error) {
            while (++index < count && (action = actions.shift())) {
                action.unsubscribe();
            }
            throw error;
        }
    };
    return AsapScheduler;
}(AsyncScheduler["a" /* AsyncScheduler */]));

//# sourceMappingURL=AsapScheduler.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/asap.js
/** PURE_IMPORTS_START _AsapAction,_AsapScheduler PURE_IMPORTS_END */


var asapScheduler = /*@__PURE__*/ new AsapScheduler_AsapScheduler(AsapAction_AsapAction);
var asap = asapScheduler;
//# sourceMappingURL=asap.js.map


/***/ }),

/***/ 769:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ auditTime; });

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/scheduler/async.js
var scheduler_async = __webpack_require__(137);

// EXTERNAL MODULE: ./node_modules/tslib/tslib.es6.js
var tslib_es6 = __webpack_require__(12);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/innerSubscribe.js
var innerSubscribe = __webpack_require__(53);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/operators/audit.js
/** PURE_IMPORTS_START tslib,_innerSubscribe PURE_IMPORTS_END */


function audit(durationSelector) {
    return function auditOperatorFunction(source) {
        return source.lift(new AuditOperator(durationSelector));
    };
}
var AuditOperator = /*@__PURE__*/ (function () {
    function AuditOperator(durationSelector) {
        this.durationSelector = durationSelector;
    }
    AuditOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new audit_AuditSubscriber(subscriber, this.durationSelector));
    };
    return AuditOperator;
}());
var audit_AuditSubscriber = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](AuditSubscriber, _super);
    function AuditSubscriber(destination, durationSelector) {
        var _this = _super.call(this, destination) || this;
        _this.durationSelector = durationSelector;
        _this.hasValue = false;
        return _this;
    }
    AuditSubscriber.prototype._next = function (value) {
        this.value = value;
        this.hasValue = true;
        if (!this.throttled) {
            var duration = void 0;
            try {
                var durationSelector = this.durationSelector;
                duration = durationSelector(value);
            }
            catch (err) {
                return this.destination.error(err);
            }
            var innerSubscription = Object(innerSubscribe["c" /* innerSubscribe */])(duration, new innerSubscribe["a" /* SimpleInnerSubscriber */](this));
            if (!innerSubscription || innerSubscription.closed) {
                this.clearThrottle();
            }
            else {
                this.add(this.throttled = innerSubscription);
            }
        }
    };
    AuditSubscriber.prototype.clearThrottle = function () {
        var _a = this, value = _a.value, hasValue = _a.hasValue, throttled = _a.throttled;
        if (throttled) {
            this.remove(throttled);
            this.throttled = undefined;
            throttled.unsubscribe();
        }
        if (hasValue) {
            this.value = undefined;
            this.hasValue = false;
            this.destination.next(value);
        }
    };
    AuditSubscriber.prototype.notifyNext = function () {
        this.clearThrottle();
    };
    AuditSubscriber.prototype.notifyComplete = function () {
        this.clearThrottle();
    };
    return AuditSubscriber;
}(innerSubscribe["b" /* SimpleOuterSubscriber */]));
//# sourceMappingURL=audit.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Observable.js + 3 modules
var Observable = __webpack_require__(15);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isNumeric.js
var isNumeric = __webpack_require__(221);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isScheduler.js
var isScheduler = __webpack_require__(87);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/observable/timer.js
/** PURE_IMPORTS_START _Observable,_scheduler_async,_util_isNumeric,_util_isScheduler PURE_IMPORTS_END */




function timer(dueTime, periodOrScheduler, scheduler) {
    if (dueTime === void 0) {
        dueTime = 0;
    }
    var period = -1;
    if (Object(isNumeric["a" /* isNumeric */])(periodOrScheduler)) {
        period = Number(periodOrScheduler) < 1 && 1 || Number(periodOrScheduler);
    }
    else if (Object(isScheduler["a" /* isScheduler */])(periodOrScheduler)) {
        scheduler = periodOrScheduler;
    }
    if (!Object(isScheduler["a" /* isScheduler */])(scheduler)) {
        scheduler = scheduler_async["a" /* async */];
    }
    return new Observable["a" /* Observable */](function (subscriber) {
        var due = Object(isNumeric["a" /* isNumeric */])(dueTime)
            ? dueTime
            : (+dueTime - scheduler.now());
        return scheduler.schedule(dispatch, due, {
            index: 0, period: period, subscriber: subscriber
        });
    });
}
function dispatch(state) {
    var index = state.index, period = state.period, subscriber = state.subscriber;
    subscriber.next(index);
    if (subscriber.closed) {
        return;
    }
    else if (period === -1) {
        return subscriber.complete();
    }
    state.index = index + 1;
    this.schedule(state, period);
}
//# sourceMappingURL=timer.js.map

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/operators/auditTime.js
/** PURE_IMPORTS_START _scheduler_async,_audit,_observable_timer PURE_IMPORTS_END */



function auditTime(duration, scheduler) {
    if (scheduler === void 0) {
        scheduler = scheduler_async["a" /* async */];
    }
    return audit(function () { return timer(duration, scheduler); });
}
//# sourceMappingURL=auditTime.js.map


/***/ }),

/***/ 82:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return rxSubscriber; });
/* unused harmony export $$rxSubscriber */
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
var rxSubscriber = /*@__PURE__*/ (function () {
    return typeof Symbol === 'function'
        ? /*@__PURE__*/ Symbol('rxSubscriber')
        : '@@rxSubscriber_' + /*@__PURE__*/ Math.random();
})();
var $$rxSubscriber = rxSubscriber;
//# sourceMappingURL=rxSubscriber.js.map


/***/ }),

/***/ 83:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return isFunction; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
function isFunction(x) {
    return typeof x === 'function';
}
//# sourceMappingURL=isFunction.js.map


/***/ }),

/***/ 86:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return isArray; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
var isArray = /*@__PURE__*/ (function () { return Array.isArray || (function (x) { return x && typeof x.length === 'number'; }); })();
//# sourceMappingURL=isArray.js.map


/***/ }),

/***/ 87:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return isScheduler; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
function isScheduler(value) {
    return value && typeof value.schedule === 'function';
}
//# sourceMappingURL=isScheduler.js.map


/***/ }),

/***/ 89:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";

// EXPORTS
__webpack_require__.d(__webpack_exports__, "a", function() { return /* binding */ tap; });

// EXTERNAL MODULE: ./node_modules/tslib/tslib.es6.js
var tslib_es6 = __webpack_require__(12);

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/Subscriber.js
var Subscriber = __webpack_require__(18);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/util/noop.js
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
function noop() { }
//# sourceMappingURL=noop.js.map

// EXTERNAL MODULE: ./node_modules/rxjs/_esm5/internal/util/isFunction.js
var isFunction = __webpack_require__(83);

// CONCATENATED MODULE: ./node_modules/rxjs/_esm5/internal/operators/tap.js
/** PURE_IMPORTS_START tslib,_Subscriber,_util_noop,_util_isFunction PURE_IMPORTS_END */




function tap(nextOrObserver, error, complete) {
    return function tapOperatorFunction(source) {
        return source.lift(new DoOperator(nextOrObserver, error, complete));
    };
}
var DoOperator = /*@__PURE__*/ (function () {
    function DoOperator(nextOrObserver, error, complete) {
        this.nextOrObserver = nextOrObserver;
        this.error = error;
        this.complete = complete;
    }
    DoOperator.prototype.call = function (subscriber, source) {
        return source.subscribe(new tap_TapSubscriber(subscriber, this.nextOrObserver, this.error, this.complete));
    };
    return DoOperator;
}());
var tap_TapSubscriber = /*@__PURE__*/ (function (_super) {
    tslib_es6["a" /* __extends */](TapSubscriber, _super);
    function TapSubscriber(destination, observerOrNext, error, complete) {
        var _this = _super.call(this, destination) || this;
        _this._tapNext = noop;
        _this._tapError = noop;
        _this._tapComplete = noop;
        _this._tapError = error || noop;
        _this._tapComplete = complete || noop;
        if (Object(isFunction["a" /* isFunction */])(observerOrNext)) {
            _this._context = _this;
            _this._tapNext = observerOrNext;
        }
        else if (observerOrNext) {
            _this._context = observerOrNext;
            _this._tapNext = observerOrNext.next || noop;
            _this._tapError = observerOrNext.error || noop;
            _this._tapComplete = observerOrNext.complete || noop;
        }
        return _this;
    }
    TapSubscriber.prototype._next = function (value) {
        try {
            this._tapNext.call(this._context, value);
        }
        catch (err) {
            this.destination.error(err);
            return;
        }
        this.destination.next(value);
    };
    TapSubscriber.prototype._error = function (err) {
        try {
            this._tapError.call(this._context, err);
        }
        catch (err) {
            this.destination.error(err);
            return;
        }
        this.destination.error(err);
    };
    TapSubscriber.prototype._complete = function () {
        try {
            this._tapComplete.call(this._context);
        }
        catch (err) {
            this.destination.error(err);
            return;
        }
        return this.destination.complete();
    };
    return TapSubscriber;
}(Subscriber["a" /* Subscriber */]));
//# sourceMappingURL=tap.js.map


/***/ }),

/***/ 94:
/***/ (function(module, exports) {

// shim for using process in browser
var process = module.exports = {};

// cached from whatever global is present so that test runners that stub it
// don't break things.  But we need to wrap it in a try catch in case it is
// wrapped in strict mode code which doesn't define any globals.  It's inside a
// function because try/catches deoptimize in certain engines.

var cachedSetTimeout;
var cachedClearTimeout;

function defaultSetTimout() {
    throw new Error('setTimeout has not been defined');
}
function defaultClearTimeout () {
    throw new Error('clearTimeout has not been defined');
}
(function () {
    try {
        if (typeof setTimeout === 'function') {
            cachedSetTimeout = setTimeout;
        } else {
            cachedSetTimeout = defaultSetTimout;
        }
    } catch (e) {
        cachedSetTimeout = defaultSetTimout;
    }
    try {
        if (typeof clearTimeout === 'function') {
            cachedClearTimeout = clearTimeout;
        } else {
            cachedClearTimeout = defaultClearTimeout;
        }
    } catch (e) {
        cachedClearTimeout = defaultClearTimeout;
    }
} ())
function runTimeout(fun) {
    if (cachedSetTimeout === setTimeout) {
        //normal enviroments in sane situations
        return setTimeout(fun, 0);
    }
    // if setTimeout wasn't available but was latter defined
    if ((cachedSetTimeout === defaultSetTimout || !cachedSetTimeout) && setTimeout) {
        cachedSetTimeout = setTimeout;
        return setTimeout(fun, 0);
    }
    try {
        // when when somebody has screwed with setTimeout but no I.E. maddness
        return cachedSetTimeout(fun, 0);
    } catch(e){
        try {
            // When we are in I.E. but the script has been evaled so I.E. doesn't trust the global object when called normally
            return cachedSetTimeout.call(null, fun, 0);
        } catch(e){
            // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error
            return cachedSetTimeout.call(this, fun, 0);
        }
    }


}
function runClearTimeout(marker) {
    if (cachedClearTimeout === clearTimeout) {
        //normal enviroments in sane situations
        return clearTimeout(marker);
    }
    // if clearTimeout wasn't available but was latter defined
    if ((cachedClearTimeout === defaultClearTimeout || !cachedClearTimeout) && clearTimeout) {
        cachedClearTimeout = clearTimeout;
        return clearTimeout(marker);
    }
    try {
        // when when somebody has screwed with setTimeout but no I.E. maddness
        return cachedClearTimeout(marker);
    } catch (e){
        try {
            // When we are in I.E. but the script has been evaled so I.E. doesn't  trust the global object when called normally
            return cachedClearTimeout.call(null, marker);
        } catch (e){
            // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error.
            // Some versions of I.E. have different rules for clearTimeout vs setTimeout
            return cachedClearTimeout.call(this, marker);
        }
    }



}
var queue = [];
var draining = false;
var currentQueue;
var queueIndex = -1;

function cleanUpNextTick() {
    if (!draining || !currentQueue) {
        return;
    }
    draining = false;
    if (currentQueue.length) {
        queue = currentQueue.concat(queue);
    } else {
        queueIndex = -1;
    }
    if (queue.length) {
        drainQueue();
    }
}

function drainQueue() {
    if (draining) {
        return;
    }
    var timeout = runTimeout(cleanUpNextTick);
    draining = true;

    var len = queue.length;
    while(len) {
        currentQueue = queue;
        queue = [];
        while (++queueIndex < len) {
            if (currentQueue) {
                currentQueue[queueIndex].run();
            }
        }
        queueIndex = -1;
        len = queue.length;
    }
    currentQueue = null;
    draining = false;
    runClearTimeout(timeout);
}

process.nextTick = function (fun) {
    var args = new Array(arguments.length - 1);
    if (arguments.length > 1) {
        for (var i = 1; i < arguments.length; i++) {
            args[i - 1] = arguments[i];
        }
    }
    queue.push(new Item(fun, args));
    if (queue.length === 1 && !draining) {
        runTimeout(drainQueue);
    }
};

// v8 likes predictible objects
function Item(fun, array) {
    this.fun = fun;
    this.array = array;
}
Item.prototype.run = function () {
    this.fun.apply(null, this.array);
};
process.title = 'browser';
process.browser = true;
process.env = {};
process.argv = [];
process.version = ''; // empty string to avoid regexp issues
process.versions = {};

function noop() {}

process.on = noop;
process.addListener = noop;
process.once = noop;
process.off = noop;
process.removeListener = noop;
process.removeAllListeners = noop;
process.emit = noop;
process.prependListener = noop;
process.prependOnceListener = noop;

process.listeners = function (name) { return [] }

process.binding = function (name) {
    throw new Error('process.binding is not supported');
};

process.cwd = function () { return '/' };
process.chdir = function (dir) {
    throw new Error('process.chdir is not supported');
};
process.umask = function() { return 0; };


/***/ }),

/***/ 95:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return identity; });
/** PURE_IMPORTS_START  PURE_IMPORTS_END */
function identity(x) {
    return x;
}
//# sourceMappingURL=identity.js.map


/***/ }),

/***/ 97:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return empty; });
/* harmony import */ var _config__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(47);
/* harmony import */ var _util_hostReportError__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(65);
/** PURE_IMPORTS_START _config,_util_hostReportError PURE_IMPORTS_END */


var empty = {
    closed: true,
    next: function (value) { },
    error: function (err) {
        if (_config__WEBPACK_IMPORTED_MODULE_0__[/* config */ "a"].useDeprecatedSynchronousErrorHandling) {
            throw err;
        }
        else {
            Object(_util_hostReportError__WEBPACK_IMPORTED_MODULE_1__[/* hostReportError */ "a"])(err);
        }
    },
    complete: function () { }
};
//# sourceMappingURL=Observer.js.map


/***/ }),

/***/ 98:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return EMPTY; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "b", function() { return empty; });
/* harmony import */ var _Observable__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(15);
/** PURE_IMPORTS_START _Observable PURE_IMPORTS_END */

var EMPTY = /*@__PURE__*/ new _Observable__WEBPACK_IMPORTED_MODULE_0__[/* Observable */ "a"](function (subscriber) { return subscriber.complete(); });
function empty(scheduler) {
    return scheduler ? emptyScheduled(scheduler) : EMPTY;
}
function emptyScheduled(scheduler) {
    return new _Observable__WEBPACK_IMPORTED_MODULE_0__[/* Observable */ "a"](function (subscriber) { return scheduler.schedule(function () { return subscriber.complete(); }); });
}
//# sourceMappingURL=empty.js.map


/***/ })

}]);