import {NgModule} from "@angular/core";
import {BrowserModule} from "@angular/platform-browser";
import {CompaniesComponent} from "./companies.component";
import {FormsModule, ReactiveFormsModule} from "@angular/forms";
import {HttpClientModule} from "@angular/common/http";

@NgModule({
    id: 'companies-module',
    imports:[BrowserModule, FormsModule, ReactiveFormsModule, HttpClientModule],
    declarations:[CompaniesComponent],
    exports:[CompaniesComponent],
    providers:[],
    entryComponents:[],
    bootstrap:[CompaniesComponent]
})

export class CompaniesModule{

}