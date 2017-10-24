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
            <mat-nav-list>
                <mat-list-item>
                    <h1 matLine >Dashboard</h1>
                    <button mat-icon-button>
                        <mat-icon>home</mat-icon>
                    </button>    
                </mat-list-item>
                
                <mat-divider></mat-divider>
                
                <mat-list-item>
                    <h1 matLine >CNPS</h1>
                    <button mat-icon-button>
                        <mat-icon>attachment</mat-icon>
                    </button>    
                </mat-list-item>
                
                <mat-divider></mat-divider>
                
                <mat-list-item>
                    <h1 matLine >DACLOUD</h1>
                    <button mat-icon-button>
                        <mat-icon>cloud</mat-icon>
                    </button>    
                </mat-list-item>
                
            </mat-nav-list>
        </mat-sidenav>
        <h1>Bienvenu sur la plateforme {{name}}</h1>
        <button mat-button> Basic Button</button>
        <h2 class="alert-success">Gestion administrative</h2>
    </mat-sidenav-container>
    
    
    
`,
  styles: ['h1 {color: blue;}']
  //styleUrls:['app.component.css']
})
export class AppComponent {
  name = 'Dahub Admin';
}
