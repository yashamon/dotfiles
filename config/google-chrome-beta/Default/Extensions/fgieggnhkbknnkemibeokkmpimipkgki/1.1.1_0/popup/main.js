function translit() {

    return {
        scope: { translit: "=" },
        link: function(scope, elem, attr, ctrl) {

            var box = elem[0];

            var remote = true;
            scope.$watch("translit", function(value) {
                if (remote) {
                    box.value = value;
                    box.focus();
                    box.select();
                }
            });

            new InputHandler(box, function(text) {
                remote = false;
                scope.$apply(function() {
                    scope.translit = text;
                });
                remote = true;
            }).enable(true);
        }
    }
}

function expl($timeout, $interpolate) {

    function create(element, values, ch) {

        var bigch = document.createElement("div");
        bigch.classList.add("big");
        bigch.innerHTML = ch;

        var smallch = document.createElement("div");
        smallch.classList.add("small");
        smallch.innerHTML = ch;

        var box = document.createElement("ul");

        box.classList.add("expl-box");

        for (var i = 0; i < values.length; ++i) {
            var value = values[i];

            var li = document.createElement("li");
            li.classList.add("combo");

            var ol = document.createElement("ol");
            ol.classList.add("keys");

            var keys = value.split('');
            for (var kidx = 0; kidx < keys.length; ++kidx) {

                var key = keys[kidx];
                var keybox = document.createElement("li");
                keybox.classList.add("key");
                keybox.innerHTML = key;

                ol.appendChild(keybox);
            }

            li.appendChild(ol);
            box.appendChild(li);
        }

        element.appendChild(box);
        element.appendChild(bigch);
        element.appendChild(smallch);

        return box;
    }

    return {
        scope: { expl: "=", ch:"@" },
        link: function (scope, elements) {

            var element = _.first(elements);
            var box = create(element, scope.expl, scope.ch);

            $timeout(function() {


                box.style.top = 0;
                box.style.left = 0;

                var ebox = element.getBoundingClientRect();
                var bbox = box.getBoundingClientRect();

                var left = (ebox.left + (ebox.width - bbox.width) / 2);

                left -= -Math.min(window.innerWidth - (left + bbox.width), 0);


                box.style.left = left + "px";
                box.style.top = (ebox.top - bbox.height) + "px";


            });

        }
    }
}

function main($scope, $timeout) {

    function save(text) {
        return chrome.storage.local.set({text:text});
    }

    function load(callback) {
        var saver = _.debounce(save, 250);
        $scope.$watch("text", function (text, old) {
            if (text != old) saver(text);
        });
        return chrome.storage.local.get("text", function(value) {
            value = value.text || "";
            $scope.$apply(function () {
                callback(value);
            });
        });
    }

    $scope.shortcut = null;

    $scope.alphabet = "абвгдеёжзийклмнопрстуфхцчшщъыьэюя".split('');

    $scope.definitions = null;

    load(function(text) {
        $scope.text = text;
    });

    if (chrome && chrome.commands) {

        chrome.runtime.sendMessage({ command: "getDefinitions" }, function (definitions) {
            $scope.$apply(function() {
                $scope.definitions = definitions;
            });
        });

        chrome.commands.getAll(function(commands) {
            var command = _.find(commands, function(t) { return t.name == "toggleglobal"; });
            if (command)
                $scope.$apply(function() {
                    $scope.shortcut = command.shortcut;
                });
        });
    }

    this.append = function(ch) {
        $scope.text += ch;
    };

}

angular.module("translit", [])
    .controller("main", main)
    .directive("translit", translit)
    .directive("expl", expl);