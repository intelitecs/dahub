import {Component, EventEmitter, Output} from '@angular/core';
@Component({
  selector: 'app-root',
  template: ` 
      <div class="center jumbotron">
          <h1> {{name | uppercase}} </h1>
          <h2>
              Visitez <a href="https://dahub-client.herokuapp.com">Dahub Client</a> pour voir le client.
          </h2>
      </div>
      
  `,
  styles: ['h1 {color: blue;} a{text-decoration: none; color: blue;}']
  //styleUrls:['app.component.css']
})

export class AppComponent {
  name = 'Dahub Admin Server';


    @Output()
    sidenav = new EventEmitter<boolean>();

    sidenavToggle(){

    }

}
