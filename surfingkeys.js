// An example to create a new mapping `ctrl-y`
api.mapkey('<ctrl-y>', 'Show me the money', function() {
    api.Front.showPopup('a well-known phrase uttered by characters in the 1996 film Jerry Maguire (Escape to close).');
});

api.RUNTIME('updateSettings', {settings: {"noPdfViewer": 1}});

// An example to replace `T` with `gt`
api.mapkey('T', 'Search tabs with keyword', function() {
    api.Front.openOmnibar({ type: 'Tabs' });
});

// Tab navigation remapping
api.unmap('H');
api.unmap('L');
api.map('H', 'E'); 
api.map('L', 'R'); 

// Hint mode remapping
api.unmap('t');
api.map('t', 'f'); 

// Make '.' the go-to mark command
api.map('.', "'");

// Set theme (updated to api.settings for v1.18.0)
api.settings.theme = `
.sk_theme {
    font-family: Input Sans Condensed, Charcoal, sans-serif;
    font-size: 10pt;
    background: #24272e;
    color: #abb2bf;
}
.sk_theme tbody {
    color: #fff;
}
.sk_theme input {
    color: #d0d0d0;
}
.sk_theme .url {
    color: #61afef;
}
.sk_theme .annotation {
    color: #56b6c2;
}
.sk_theme .omnibar_highlight {
    color: #528bff;
}
.sk_theme .omnibar_timestamp {
    color: #e5c07b;
}
.sk_theme .omnibar_visitcount {
    color: #98c379;
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
    background: #303030;
}
.sk_theme #sk_omnibarSearchResult ul li.focused {
    background: #3e4452;
}
#sk_status, #sk_find {
    font-size: 20pt;
}`;
