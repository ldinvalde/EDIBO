import { Component } from '@angular/core';
const MAXRANGE = 300;

@Component({
  selector: 'app-root',
  // veiw
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

// controlle1r
export class AppComponent {

  // mode1l

  isVisible = true;  
  imageSources = [];


  increaseImageCount(){
    const id = this.generateId();
    this.imageSources.push(
      `https://picsum.photos/id/${id}/200/150`
    )
  }
  toggle(){
    this.isVisible=!this.isVisible;
  }
  private generateId(){
    return Math.round(Math.random() * MAXRANGE) + 1;
  }


}
