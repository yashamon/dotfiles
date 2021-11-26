
function TranslitEngine(defs) {

    this.definitions = defs;

    var schema = [];

    var translit = this.translit = function (text) {
        for (var idx = 0; idx < schema.length; ++idx) {
            var rule = schema[idx];
            text = text.replace(rule.from, rule.to);
        }
        return text;
    };

    function map(from, to) {

        function caps(str) {
            var list = [];

            for (var idx = 1; idx <= str.length; ++idx) {
                var cap = str.substring(0, idx).toUpperCase() + str.substring(idx);
                if (cap !== str) list.push(cap);
            }

            return list;
        }

        function make(from, to) {
            schema.push({ from: RegExp(translit(from), "g"), to: to });
        }

        make(from, to);

        _.each(caps(from), function (c) { make(c, to.toUpperCase()); });

    };

    function init() {
        TranslitEngine.flatten(defs)
            .each(function(r) { map(r.from, r.to); });
    }

    init();
}

TranslitEngine.flatten = function (defs) {

    var rules = _([]);

    _.each(defs, function (rs, to) {
        _.each(rs, function (from) {
            rules.push({ to: to, from: from });
        });
    });

    return rules.sortBy(function (r) { return r.from.length; });
}

TranslitEngine.validate = function(defs) {
    var rules = TranslitEngine.flatten(defs);
    var engine = new TranslitEngine(defs);

    return _.all(rules, function(rule) {
        return engine.translit(rule.from) == rule.to;
    });
}

TranslitEngine.defaults = {
    "а": ["a"],
    "б": ["b"],
    "в": ["v"],
    "г": ["g"],
    "д": ["d"],
    "е": ["e"],
    "з": ["z"],
    "и": ["i"],
    "й": ["j"],
    "к": ["k"],
    "л": ["l"],
    "м": ["m"],
    "н": ["n"],
    "о": ["o"],
    "п": ["p"],
    "р": ["r"],
    "с": ["s"],
    "т": ["t"],
    "у": ["u"],
    "ф": ["f"],
    "х": ["h", "x"],
    "ц": ["c"],
    "щ": ["w", "shh"],
    "ы": ["q", "y"],
    "ь": ["'"],
    "э": ["ö", "je"],
    "ю": ["ü", "ju", "yu"],
    "ё": ["jo"],
    "ж": ["zh"],
    "ч": ["ch"],
    "ш": ["sh"],
    "я": ["ya", "ja"],
    "ъ": ["#"]
};