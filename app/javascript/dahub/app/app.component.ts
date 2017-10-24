import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template: `
    
    <mat-sidenav-container>
        <mat-toolbar color="primary">
            <mat-icon (click)="sidenav.toggle()">menu</mat-icon>
            <span>Dahub Admin</span>
        </mat-toolbar>
        <mat-sidenav #sidenav mode="side" opened="true">
            
        </mat-sidenav>
        <h1>Welcome to {{name}} from Angular</h1>
        <button mat-button> Basic Button</button>
        <h2 class="alert-success">The application works</h2>
    </mat-sidenav-container>
    
    
    
`,
  styles: ['h1 {color: blue;}']
  //styleUrls:['app.component.css']
})
export class AppComponent {
  name = 'Dahub Admin';
}
