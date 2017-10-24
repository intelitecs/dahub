import {NgModule} from "@angular/core";
import {BrowserModule} from "@angular/platform-browser";
import {CompaniesComponent} from "./companies.component";
import {FormsModule, ReactiveFormsModule} from "@angular/forms";

@NgModule({
    id: 'companies-module',
    imports:[BrowserModule, FormsModule, ReactiveFormsModule],
    declarations:[CompaniesComponent],
    exports:[CompaniesComponent],
    providers:[],
    entryComponents:[],
    bootstrap:[CompaniesComponent]
})

export class CompaniesModule{

}