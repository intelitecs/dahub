import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  //templateUrl: './app.component.html',
  template: `<h1>Welcome to {{name}} from Angular</h1>
  <button mat-button> Basic Button</button>
`,
  styles: ['h1 {color: blue;}']
  //styleUrls:['app.component.css']
})
export class AppComponent {
  name = 'Dahub Admin';
}
