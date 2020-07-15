class TodayDateComponent extends HTMLElement {
          
    constructor(){
        super();
        // Texts console sadaļā
        console.log('alive');
        // Nosaka intervālu un padara kustīgu sekunžu rādītāju
        setInterval(() => {
           // Texts uz ekrāna
            this.innerText=new Date();
        }, 1000);
    }
}

const comp = customElements.define('today-date',TodayDateComponent)
