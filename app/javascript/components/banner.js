import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Change your life", "Stay at a Beautiful Castle!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
