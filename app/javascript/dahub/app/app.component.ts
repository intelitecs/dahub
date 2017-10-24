import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template: `<h1>Welcome to {{name}} from Angular</h1>
    <button mat-button> Basic Button</button>
    <h2 class="alert-success">The application works</h2>
`,
  styles: ['h1 {color: blue;}']
  //styleUrls:['app.component.css']
})
export class AppComponent {
  name = 'Dahub Admin';
}
