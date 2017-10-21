import { Component } from '@angular/core';

@Component({
  selector: 'hello-angular',
  template: `<h1>Welcome to {{name}} from Angular</h1>`,
  styles: ['h1 {color: blue;}']
})
export class AppComponent {
  name = 'Dahub Admin';
}
