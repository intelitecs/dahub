import {NgModule} from "@angular/core";
import {BrowserModule} from "@angular/platform-browser";
import {CompaniesComponent} from "./companies.component";

@NgModule({
    id: 'companies-module',
    imports:[BrowserModule],
    declarations:[CompaniesComponent],
    exports:[CompaniesComponent],
    providers:[],
    entryComponents:[],
    bootstrap:[CompaniesComponent]
})

export class CompaniesModule{

}