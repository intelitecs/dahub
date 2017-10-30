import {Component, EventEmitter, Output} from '@angular/core';
@Component({
  selector: 'app-root',
  template: `      
          <h1>Bienvenu sur le server {{name}}</h1>
          <h1>
              Visitez <a class="alert-success" href="https://dahub-client.herokuapp.com">Dahub Client</a> pour voir le client.
          </h1>
  `,
  styles: ['h1 {color: blue;} a{text-decoration: none; color: blue;}']
  //styleUrls:['app.component.css']
})

export class AppComponent {
  name = 'Dahub Admin';


    @Output()
    sidenav = new EventEmitter<boolean>();

    sidenavToggle(){

    }

}
