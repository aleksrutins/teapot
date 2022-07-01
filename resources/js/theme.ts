const darkColor = "rgb(15 23 42)"
const lightColor = "rgb(226 232 240)"
const el = document.querySelector('meta[name="theme-color"]')!;

function setTheme(isDark: boolean) {
    let color = isDark ? darkColor : lightColor
    el.setAttribute('content', color)
}

if(window.matchMedia) {
    window.matchMedia("(prefers-color-scheme: dark)").addEventListener('change', e => {
        setTheme(e.matches)
    })
    setTheme(window.matchMedia("(prefers-color-scheme: dark)").matches)
}

