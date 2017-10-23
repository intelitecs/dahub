import {Component} from "@angular/core";

@Component({
    moduleId: 'companies-module',
    selector: 'app-companies',
    styles:['h1{color: green}'],
    template: `
        <h1>Companies Page: {{name}}</h1>
    `

})

export class CompaniesComponent{
    name = 'Companies list'
}