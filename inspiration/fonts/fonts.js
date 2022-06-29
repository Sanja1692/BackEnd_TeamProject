var title = "Meal Planner";
var text = "Lorem ipsum dolor sit amet consectetur adipiscing elit";
var alph = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOo PpQqRrSsTtUuVvWwXxYyZz";
var upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
var lower = "abcdefghijklmnopqrstuvwxyz";
var num = "1234567890";

var hand = [
  'Carattere',
  'Cookie',
  'Dancing Script',
  'Ephesis',
  'Euphoria Script',
  'Great Vibes',
  'Kalam',
  'Kaushan Script',
  'Marck Script',
  'MonteCarlo',
  'Montez',
  'Parisienne',
  'Rochester',
  'Rouge Script',
  'Style Script',
  'Tangerine',
  'Updock'
];

var display = [
  'Akaya Kanadaka',
  'Akronim',
  'Atma',
  'Averia Serif Libre',
  'Balsamiq Sans',
  'Calistoga',
  'Chewy',
  'Chicle',
  'Cinzel Decorative',
  'Corben',
  'Forum',
  'Galada',
  'Katibeh',
  'Lancelot',
  'Lobster',
  'Lobster Two',
  'Megrim',
  'Metal',
  'Milonga',
  'Mirza',
  'New Rocker',
  'Nova Slim',
  'Oleo Script',
  'Oleo Script Swash Caps',
  'Oregano',
  'Original Surfer',
  'Overlock',
  'Pattaya',
  'Paprika',
  'Playball',
  'Salsa',
  'Sansita Swashed',
  'Simonetta',
  'Stick No Bills'
];

var sans = [
  'ABeeZee',
  'Acme',
  'Actor',
  'Advent Pro',
  "Alegreya",
  'Alegreya Sans',
  'Almarai',
  'Amaranth',
  'Anaheim',
  'Anek Latin',
  'Antic',
  'Asap',
  'Assistant',
  'Asul',
  'Atkinson Hyperlegible',
  'Average Sans',
  'Belleza',
  'Bubbler One',
  'Cabin',
  'Cabin Condensed',
  'Cairo',
  'Cantora One',
  'Catamaran',
  'Chakra Petch',
  'DM Sans',
  'Darker Grotesque',
  'Didact Gothic',
  'Dosis',
  'El Messiri',
  'Encode Sans',
  'Encode Sans Semi Condensed',
  'Exo',
  'Familjen Grotesk',
  'Fredoka',
  'Fresca',
  'GFS Neohellenic',
  'Gafata',
  'Galdeano',
  'Gayathri',
  'Georama',
  'Glory',
  'Gotu',
  'Gowun Dodum',
  'Gudea',
  'Hind',
  'Imprima',
  'Inder',
  'Istok Web',
  'Josefin Sans',
  'Jost',
  'K2D',
  'Karla',
  'Khula',
  'Kite One',
  'KoHo',
  'Kodchasan',
  'Laila',
  'Lato',
  'League Spartan',
  'Libre Franklin',
  'Livvic',
  'Mada',
  'Mandali',
  'Manjari',
  'Manrope',
  'Marmelad',
  'Maven Pro',
  'Mina',
  'Molengo',
  'Mulish',
  'Murecho',
  'Noto Sans',
  'Noto Sans Display',
  'Numans',
  'Nunito',
  'Nunito Sans',
  'Open Sans',
  'Outfit',
  'Oxygen',
  'PT Sans',
  'Palanquin',
  'Pavanam',
  'Philosopher',
  'Plus Jakarta Sans',
  'Pontano Sans',
  'Proza Libre',
  'Puritan',
  'Quattrocento Sans',
  'Questrial',
  'Quicksand',
  'Raleway',
  'Readex Pro',
  'Red Hat Display',
  'Red Hat Text',
  'Roboto',
  'RocknRoll One',
  'Rosario',
  'Ruluko',
  'Sawarabi Gothic',
  'Sen',
  'Signika',
  'Snippet',
  'Source Sans 3',
  'Source Sans Pro',
  'Spline Sans',
  'Sulphur Point',
  'Tajawal',
  'Tenor Sans',
  'Text Me One',
  'Tomorrow',
  'Urbanist',
  'Varta',
  'Yusei Magic',
  'Zen Kaku Gothic New',
  'Zen Maru Gothic'
];

var serif = [
  'Adamina',
  'Amiri',
  'Alegreya',
  'Aleo',
  'Alike',
  'Andada Pro',
  'Antic Slab',
  'Aref Ruqaa',
  'Asar',
  'Average',
  'Bellefair',
  'Benne',
  'Bitter',
  'Bona Nova',
  'Brawler',
  'Buenard',
  'Caladea',
  'Cambo',
  'Cardo',
  'Castoro',
  'Caudex',
  'Cormorant Upright',
  'Crimson Pro',
  'David Libre',
  'Della Respira',
  'Donegal One',
  'Eczar',
  'Enriqueta',
  'Esteban',
  'Faustina',
  'Fenix',
  'Fjord One',
  'Fraunces',
  'GFS Didot',
  'Gabriela',
  'Gelasio',
  'Gentium Basic',
  'Gentium Book Basic',
  'Goudy Bookletter 1911',
  'Gowun Batang',
  'Gupter',
  'Habibi',
  'Hahmlet',
  'Hanuman',
  'Headland One',
  'Ibarra Real Nova',
  'Inika',
  'Junge',
  'Karma',
  'Kotta One',
  'Kurale',
  'Literata',
  'Libre Caslon Text',
  'Lora',
  'Lusitana',
  'Lustria',
  'Maitree',
  'Mate',
  'Merriweather',
  'Montaga',
  'Montagu Slab',
  'Neuton',
  'Newsreader',
  'Noticia Text',
  'Noto Serif',
  'Ovo',
  'PT Serif',
  'Petrona',
  'Poly',
  'Prociono',
  'Quando',
  'Quattrocento',
  'Radley',
  'Roboto Slab',
  'Rosarivo',
  'STIX Two Text',
  'Sahitya',
  'Scheherazade New',
  'Sorts Mill Goudy',
  'Source Serif Pro',
  'Sumana',
  'Sura',
  'Suwannaphum',
  'Texturina',
  'Tinos',
  'Trykker',
  'Vesper Libre',
  'Vidaloka',
  'Vollkorn',
  'ZCOOL XiaoWei',
  'Zilla Slab'
];

var custom = document.getElementById("custom");
var output = document.getElementsByClassName("custom");

function setHand() {
  document.getElementById("hand").appendChild(document.createElement("table"));
  document.getElementById("bhand").innerHTML = hand.length;

  for (let font of hand) {
    document.head.innerHTML += `<link rel="stylesheet" href="https://fonts.googleapis.com/css2?display=swap&family=${font}">`;
    document.getElementById("hand").firstChild.innerHTML += `
    <tr style="font-family:'${font}'; font-size: 40px"">
      <td width="15%">${font}</td>
      <td width="35%">
        <p>${text}</p>
        <span class="custom">${title}</span>
      </td>
      <td width="50%">
        <p>${alph}</p>
        ${num}
      </td>
    </tr>`
  }
}

function setDisplay() {
  document.getElementById("display").appendChild(document.createElement("table"));
  document.getElementById("bdisplay").innerHTML = display.length;

  for (let font of display) {
    document.head.innerHTML += `<link rel="stylesheet" href="https://fonts.googleapis.com/css2?display=swap&family=${font}">`;
    document.getElementById("display").firstChild.innerHTML += `
    <tr style="font-family:'${font}'; font-size: 40px"">
      <td width="15%">${font}</td>
      <td width="35%">
        <p>${text}</p>
        <span class="custom">${title}</span>
      </td>
      <td width="50%">
        <p>${alph}</p>
        ${num}
      </td>
    </tr>`
  }
}

function setSans() {
  document.getElementById("sans").appendChild(document.createElement("table"));
  document.getElementById("bsans").innerHTML = sans.length;
  
  for (let font of sans) {
    document.head.innerHTML += `<link rel="stylesheet" href="https://fonts.googleapis.com/css2?display=swap&family=${font}">`;
    document.getElementById("sans").firstChild.innerHTML += `
    <tr style="font-family:'${font}'; font-size: 24px"">
      <td width="15%">${font}</td>
      <td width="25%">
        <p>${text}</p>
        <span class="custom">${title}</span>
      </td>
      <td width="60%">
        <p>${alph}<br>${upper} ${lower}</p>
        ${num}
      </td>
    </tr>`
  }
}

function setSerif() {
  document.getElementById("serif").appendChild(document.createElement("table"));
  document.getElementById("bserif").innerHTML = serif.length;

  for (let font of serif) {
    document.head.innerHTML += `<link rel="stylesheet" href="https://fonts.googleapis.com/css2?display=swap&family=${font}">`;
    document.getElementById("serif").firstChild.innerHTML += `
    <tr style="font-family:'${font}'; font-size: 24px"">
      <td width="15%">${font}</td>
      <td width="25%">
        <p>${text}</p>
        <span class="custom">${title}</span>
      </td>
      <td width="60%">
        <p>${alph}<br>${upper} ${lower}</p>
        ${num}
      </td>
    </tr>`
  }
}

function setText() {
  for (let i in output) {
    output[i].innerHTML = custom.value
  }
}

document.onload = setHand();
document.onload = setDisplay();
document.onload = setSans();
document.onload = setSerif();

// Bootstrap JS
var script = document.createElement("script");
script.type = "text/javascript";
script.src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js";
script.integrity = "sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p";
script.crossOrigin = "anonymous";
document.body.appendChild(script);