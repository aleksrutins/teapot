const darkColor = "rgb(226 232 240)";
const lightColor = "rgb(226 232 240)";
const el = document.querySelector('meta[name="theme-color"]');

function setTheme(theme) {
    let color = (theme == "dark") ? darkColor : lightColor;
    el.setAttribute('content', color);
}

if(window.matchMedia) {
    window.matchMedia("(prefers-color-scheme: dark)").addEventListener('change', e => {
        setTheme(e.matches? 'dark' : 'light');
    });
    if(window.matchMedia("(prefers-color-scheme: dark)").matches) {
        setTheme('dark');
    } else {
        setTheme('light');
    }
}