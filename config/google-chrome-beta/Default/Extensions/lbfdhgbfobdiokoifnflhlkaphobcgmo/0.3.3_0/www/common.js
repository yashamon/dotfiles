/*
function JavaStringHashCode(s) {
    var hash = 0;
    if (s.length == 0) return hash;
    for (i = 0; i < s.length; i++) {
        char = s.charCodeAt(i);
        hash = ((hash<<5)-hash)+char;
        hash = hash & hash; // Convert to 32bit integer
    }
    return hash;
}
*/
function JavaStringHashCode(e){for(var r=0,i=0;i<e.length;i++)r=(r<<5)-r+e.charCodeAt(i),r&=r;return r}

(function(){
    var sunits = ['s','m','h','d']
    var ssz = [1, 60, 60*60, 24*60*60]

    function formatValTime(val) {
        var parts = []
        if (val === undefined || val == 0) { return '' }
        for (var i=ssz.length-1;i>=0;i--) {
            if (val > ssz[i]) {
                parts.push( Math.floor(val / ssz[i]) + sunits[i] )
                val = val % ssz[i]
            }
        }
        return parts.join(' ')
    }
    window.formatValTime = formatValTime
})();
